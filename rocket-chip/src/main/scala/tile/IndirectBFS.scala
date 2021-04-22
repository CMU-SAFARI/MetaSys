package tile
import chisel3._
import chisel3.util._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.rocket._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.tile._
import freechips.rocketchip.diplomacy.{LazyModule, LazyModuleImp, IdRange}

/*
class rqDeq extends Bundle{
  val ready = Input(Bool())
  val paddr = Output(UInt(40.W))
  val vaddr = Output(UInt(40.W))
  val typ   = Output(UInt(3.W))
  val cmd   = Output(UInt(5.W))
  val valid = Output(Bool())
}

class CoreASPIO extends Bundle{
  val valid    = Output(Bool())
  val addr     = Output(UInt(40.W))
  val typ      = Output(UInt(3.W))
  val cmd      = Output(UInt(5.W))
  val s1_paddr = Output(UInt(40.W))
  val s1_kill  = Output(Bool())
  val s2_nack  = Output(Bool())
  val s2_xcpt  = Output(new HellaCacheExceptions)
  val physical = Output(Bool())
  val miss     = Output(Bool())
  val bp_q_full= Input(Bool())

  val dbg1 = Input(Bool())
  val dbg2  = Input(Bool())
  val dbg3  = Input(Bool())
  val dbg4  = Input(Bool())

}

class RequestQueue(val size: Int = 8)(implicit p: Parameters) extends Module{
  val io = IO(new Bundle{
    val enq  = Flipped(new rqDeq)
    val deq  = new rqDeq
    val almost_full = Output(Bool())
  })

  val DEBUG_PRQ = true

  val paddr = Reg(Vec(size, UInt(40.W)))
  val vaddr = Reg(Vec(size, UInt(40.W)))
  val typ   = Reg(Vec(size, UInt(3.W)))
  val cmd   = Reg(Vec(size, UInt(5.W)))

  val tail = RegInit(UInt(0, log2Up(size).W))
  val head = RegInit(UInt(0, log2Up(size).W))

  io.enq.ready := (tail + 1.U) =/= head // not full

  when(io.enq.valid && io.enq.ready){
    paddr(tail) := io.enq.paddr
    vaddr(tail) := io.enq.vaddr
    typ(tail)   := io.enq.typ
    cmd(tail)   := io.enq.cmd
    tail        := tail + 1.U
    if(DEBUG_PRQ){
      printf("PRQ Enq - vaddr: 0x%x paddr: 0x%x\n", io.enq.vaddr, io.enq.paddr)
    }
  }

  io.deq.paddr := paddr(head)
  io.deq.vaddr := vaddr(head)
  io.deq.typ   := typ(head)
  io.deq.cmd   := cmd(head)

  io.deq.valid := tail =/= head // not empty

  when(io.deq.ready && io.deq.valid){
    head         := head + 1.U
    if(DEBUG_PRQ){
      printf("PRQ Deq - vaddr: 0x%x paddr: 0x%x\n", io.deq.vaddr, io.deq.paddr)
    }
  }

  io.almost_full := (tail + 3.U) === head || (tail + 2.U) === head || (tail + 1.U) === head
}
*/

class IndirectBFS(enablePrefetch: Boolean = true, lookupOnly: Boolean = false)(implicit p: Parameters) extends Module{
  val io = IO(new Bundle{
    val pat_addr    = Output(UInt(8.W))
    val pat_atom    = Input(UInt(512.W))
    val ast_addr    = Output(UInt(8.W))
    val ast_status  = Input(Bool())
    val amu_lookup  = Flipped(new AMULookUpIO)
    val tlb         = new FrontendTLBIO
    val core_snoop  = Flipped(new CoreASPIO)
    val mem         = new HellaCacheIO
    val dbg1        = Output(Bool())
    val dbg2        = Output(Bool())
  })

  val disableRedundancyChecks = true
  val DEBUG_PREFETCHER = true
  val rpt_size = 4
  val rqt_size = 4
  val disablePrefetch = !enablePrefetch // Please don't judge this

  // Recently prefetched physical addresses
  // Keep track of N recently prefetched addresses
  // to consume core requests faster
  // we won't issue another prefetch to the same cache block
  val rpt       = Reg(Vec(rpt_size, UInt(40.W)))
  val rpt_head  = RegInit(UInt(0, log2Up(rpt_size).W))

  // Recently queued physical addresses
  val rqt       = Reg(Vec(rqt_size, UInt(40.W)))
  val rqt_head  = RegInit(UInt(0, log2Up(rpt_size).W))

  // Queue core requests
  val prq = Module(new RequestQueue(32))
  io.core_snoop     <> DontCare
  io.mem            <> DontCare

  // State machine of the prefetcher
  // These states correspond to the stages after dequeuing
  // a prq entry
  val (s_idle :: s_atomlookup :: s_wait_atomlookup ::
    s_readatom :: s_check_atom :: s_worklist_read:: s_wait_resp_worklist ::s_pref_row_ptr :: s_wait_resp_row_ptr :: s_pref_col_ptr:: s_pref_all_col_ptr  :: Nil) = Enum(11)
  val state = RegInit(s_idle)

  // Try to mask requests that would be outside the page boundaries
  val req_addr_s0  = io.core_snoop.addr
  val req_typ_s0   = io.core_snoop.typ
  val req_cmd_s0   = io.core_snoop.cmd
  val req_valid_s0 = io.core_snoop.valid && (req_cmd_s0 === 0.U //||
                                             //req_cmd_s0 === 1.U
                                             )

  // ------------------------------ stage 1 ------------------------------------
  // cache accesses dtlb at stage 1, so we know the translation
  // but we don't know whether or not it is valid yet
  val req_paddr_s1   = io.core_snoop.s1_paddr  // Returned by dcache
  val req_vaddr_s1   = RegNext(req_addr_s0)
  val paddr_s1_valid = RegNext(req_valid_s0)
  // Do "load reserved" requests really work?
  val req_typ_s1     = RegNext(req_typ_s0) // Convert to prefetch requests
  val req_cmd_s1     = RegNext(req_cmd_s0 + 2.U)
  // ------------------------------ stage 2 ------------------------------------
  // prq enqueue logic
  // we enqueue 2 cycles later w.r.t core request since d$ could
  // potentially nack the request or generate an exception at cycle 2
  // also check for recurring prefetches to the same cache block here

  val req_paddr_s2 = RegNext(req_paddr_s1)

  var rqt_match  = rqt(0)(39,6) === req_paddr_s2(39,6)
  for (i <- 1 until rpt_size){
    rqt_match = rqt_match ||
        rqt(i)(39,6) === req_paddr_s2(39,6)
  }

  if(disableRedundancyChecks){
    rqt_match = false.B
  }

  val core_s2_nack   = io.core_snoop.s2_nack
  val core_s2_xcpt   = io.core_snoop.s2_xcpt.asUInt.orR

  val prq_enq_valid  = RegNext(paddr_s1_valid) && RegNext(~io.core_snoop.s1_kill) &&
                        ~core_s2_nack && ~core_s2_xcpt && ~rqt_match

  prq.io.enq.paddr := RegNext(req_paddr_s1)
  prq.io.enq.vaddr := RegNext(req_vaddr_s1)
  prq.io.enq.typ   := RegNext(req_typ_s1)
  prq.io.enq.cmd   := RegNext(req_cmd_s1)

  io.dbg1 := prq_enq_valid && !prq.io.enq.ready
  io.dbg2 := prq_enq_valid

  prq.io.enq.valid := prq_enq_valid && prq.io.enq.ready

  when(prq.io.enq.valid){
    rqt(rqt_head) := prq.io.enq.paddr
    rqt_head      := rqt_head + 1.U // hopefully this will wrap around
  }

  
  if(DEBUG_PREFETCHER){
    printf("--- PRQ Enq-Deq logic verbose ---\n")
    printf("s0_valid:       %d s0_vaddr: 0x%x\n", req_valid_s0, req_addr_s0)
    printf("s1_valid:       %d s1_vaddr: 0x%x s1_paddr: 0x%x\n", paddr_s1_valid, req_vaddr_s1, req_paddr_s1)
    printf("prq_enq_valid:  %d s2_vaddr: 0x%x s2_paddr: 0x%x\n", prq_enq_valid, prq.io.enq.vaddr, prq.io.enq.paddr)
  }

  if(DEBUG_PREFETCHER){
    when(prq_enq_valid && ~prq.io.enq.ready){
      printf("Prefetch request buffer is full\n")
    }
  }
  
  // ------------------------------ stage 3 ------------------------------------
  // Dequeue from prefetch request queue and become busy
  // also content search rpt array to see if a prefetch originated by an
  // access to the same cache block occured recently

  prq.io.deq.ready    := state === s_idle
  // Only process new requests when we are idle (may be a drawback)
  val req_paddr_s3  = prq.io.deq.paddr
  val req_vaddr_s3  = prq.io.deq.vaddr
  val req_typ_s3    = prq.io.deq.typ
  val req_cmd_s3    = prq.io.deq.cmd

  var rpt_match  = rpt(0)(39,6) === req_paddr_s3(39,6)
  for (i <- 1 until rpt_size){
    rpt_match = rpt_match ||
        rpt(i)(39,6) === req_paddr_s3(39,6)
  }

  if(disableRedundancyChecks){
    rpt_match = false.B
  }
  
  /*
  if(DEBUG_PREFETCHER){
    when(rpt_match && prq.io.deq.ready && prq.io.deq.valid){
      printf("Discard PRQ Entry - V: 0x%x P: 0x%x\n", req_paddr_s3, req_vaddr_s3)
    }
  }
  */

  // TODO this has to be coded better
 /* 
  val rpt_match = rpt(0)(39,3) === req_paddr_s3(39,3) ||
        rpt(1)(39,3) === req_paddr_s3(39,3) ||
        rpt(2)(39,3) === req_paddr_s3(39,3) ||
        rpt(3)(39,3) === req_paddr_s3(39,3)
  */

  val s3_valid      = prq.io.deq.ready && ~rpt_match &&
              prq.io.deq.valid && (state === s_idle) // transition into next state

  val pref_paddr = RegEnable(req_paddr_s3, s3_valid)
  val pref_vaddr = RegEnable(req_vaddr_s3, s3_valid)
  val pref_typ   = RegEnable(req_typ_s3, s3_valid)
  val pref_cmd   = RegEnable(req_cmd_s3, s3_valid)

  // ------------------------------ stage 3 ------------------------------------
  io.amu_lookup.req.paddr  := RegNext(req_paddr_s3)
  io.amu_lookup.req.valid  := state === s_atomlookup


  val mem_wen = RegInit(false.B)
  val atom_id               = io.amu_lookup.resp.atom_id
  io.pat_addr              := RegNext(atom_id)
  io.ast_addr              := RegNext(atom_id)
  val atom_enabled          = RegEnable(io.ast_status, state === s_readatom)

  val stride                = RegEnable(io.pat_atom(63,0), state === s_readatom)
  val worklist_bounds       = RegEnable(io.pat_atom(127,64), state === s_readatom)
  val worklist_base_address = RegEnable(io.pat_atom(191,128), state === s_readatom) // Find base address of the data structure 
  val row_ptr_base_address  = RegEnable(io.pat_atom(255,192), state === s_readatom) // Find the base of the indirect ds - > B[A[i]] -> base address of B
  val col_ptr_base_address  = RegEnable(io.pat_atom(318,256), state === s_readatom) // Find the base of the indirect ds - > B[A[i]] -> base address of B

  val worklist_index        = RegEnable((pref_vaddr - io.pat_atom(63,0))/4.U, state === s_readatom) // Find the index that A was accessed with
  val row_ptr_index         = RegEnable(io.mem.resp.bits.data(31,0), (state === s_wait_resp_row_ptr) && io.mem.resp.valid)
  //val col_ptr_index         = RegEnable(io.mem.resp.bits.data(31,0), (state === ) && io.mem.resp.valid)
  
  val row_ptr_read_address  = RegEnable(row_ptr_base_address + io.mem.resp.bits.data(31,0) , (state === s_wait_resp_worklist ) && io.mem.resp.valid)
  val col_ptr_read_address  = RegEnable(col_ptr_base_address + io.mem.resp.bits.data(31,0) , (state === s_wait_resp_row_ptr  ) && io.mem.resp.valid)
  val worklist_read_address  = RegEnable( worklist_base_address + io.pat_atom(63,0), state === s_readatom)

  val in_bounds             = RegEnable( (pref_vaddr > io.pat_atom(191,128))  && (pref_vaddr < io.pat_atom(127,64) ), state === s_readatom)
  val prefetch_counter      = RegInit(0.U(8.W))

  val just_nackd       = RegInit(false.B)
  just_nackd          := ((RegNext(RegNext(io.mem.req.fire())) && io.mem.s2_nack)) || (just_nackd && !io.mem.req.fire())
  val not_nackd        = ((RegNext(RegNext(io.mem.req.fire())) && !io.mem.s2_nack))

  io.mem.req.valid     := (state === s_pref_row_ptr) || (state === s_pref_col_ptr) || (state === s_worklist_read) || (state === s_pref_all_col_ptr && mem_wen)
  io.mem.req.bits.tag  := UInt(0)
  io.mem.req.bits.cmd  := M_XRD //M_XLR //-> read with intent to write
  io.mem.req.bits.typ  := pref_typ // MT_WU:350
  io.mem.req.bits.phys := false.B
  io.mem.req.bits.addr := MuxCase(0.U, Array( (state === s_worklist_read) -> worklist_read_address, (state ===s_pref_col_ptr) -> col_ptr_read_address, (state ===s_pref_row_ptr) -> row_ptr_read_address))
  io.mem.req.bits.isLookup := false.B
  io.mem.invalidate_lr := false.B
  io.mem.s1_data.data := UInt(0, 65.W)
  io.mem.s1_kill := false.B



  // dump prefetcher state
  if(DEBUG_PREFETCHER){
  }

  when(state === s_idle)
  {
    if(disablePrefetch){
      state := s_idle
    }
    else{
      when(s3_valid){
        state := s_atomlookup
        printf("Start atom lookup \n")
      }
    }
  }.elsewhen(state === s_atomlookup)
  {
    when(io.amu_lookup.req.valid && io.amu_lookup.req.ready){
      state := s_wait_atomlookup
      printf("Waiting for atom_lookup \n")
    }
  }.elsewhen(state === s_wait_atomlookup)
  {
    when(io.amu_lookup.resp.xcpt){
      state := s_idle
      printf("---Lookup Resp XCPT\n")
    }.elsewhen(io.amu_lookup.resp.valid){
      printf("---Lookup Resp Fire: %d\n", io.amu_lookup.resp.atom_id)      
      state := s_readatom
      
    }
  }.elsewhen(state === s_readatom)
  {
    if(lookupOnly)
    {
      state := s_idle
    }
    else
    {
      state := s_check_atom
    }
  }.elsewhen(state === s_check_atom)
  {
      when(in_bounds && atom_enabled){
        state := s_worklist_read
      }.otherwise{
        state := s_idle
      }
  }.elsewhen(state === s_worklist_read)
  {
  
      when(io.mem.req.fire()){
      state := s_wait_resp_worklist
      }

  }.elsewhen(state === s_wait_resp_worklist){
  
    when(io.mem.resp.valid && row_ptr_base_address != 0.U){
      state := s_pref_row_ptr
    }.elsewhen(io.mem.resp.valid  && row_ptr_base_address === 0.U){
      state := s_idle
    }
    .elsewhen(io.mem.s2_nack){
      state := s_idle
    }
  }.elsewhen(state === s_pref_row_ptr)
  {
    when(io.mem.req.fire()){
      state := s_wait_resp_row_ptr
    }
  
  }.elsewhen(state === s_wait_resp_row_ptr){
  
    when(io.mem.resp.valid && col_ptr_base_address != 0.U){
      state := s_pref_col_ptr
    }.elsewhen(io.mem.resp.valid  && col_ptr_base_address === 0.U){
      state := s_idle
    }
    .elsewhen(io.mem.s2_nack){
      state := s_idle
    }
  }.elsewhen(state === s_pref_col_ptr)
  {
    when(io.mem.req.fire()){
      state := s_pref_all_col_ptr
      prefetch_counter := prefetch_counter+1.U
    }
  }.elsewhen(state === s_pref_all_col_ptr && io.mem.resp.valid ){
  
    when (prefetch_counter === 10.U)
    {
            state:= s_idle
            prefetch_counter := 0.U
    }.otherwise{
            col_ptr_read_address := col_ptr_read_address + 4.U
            mem_wen := true.B
    }  
  }
  


  when( io.mem.req.fire() && state === s_pref_all_col_ptr)
  {
        prefetch_counter := prefetch_counter + 1.U
        mem_wen := false.B
  }


  // TLB related constructs kept here to keep firrtl from screaming at us
  io.tlb.req.valid              := false.B
  io.tlb.req.bits.vaddr         := UInt(0,39.W)
  io.tlb.req.bits.passthrough      := false.B
  io.tlb.req.bits.sfence.valid     := false.B
  io.tlb.req.bits.sfence.bits.rs1  := true.B
  io.tlb.req.bits.sfence.bits.rs2  := false.B
  io.tlb.req.bits.sfence.bits.addr := UInt(0,39.W)
  io.tlb.req.bits.sfence.bits.asid := 0.U
  io.tlb.resp.ready                := false.B
  io.tlb.req.bits.cmd              := M_XRD
  io.tlb.req.bits.size             := MT_W
  io.tlb.req.bits.isLookup         := false.B
 
}

class PrefetcherBFS(albSize: Int = 32, atomGranularity: Int = 20)(implicit p: Parameters) extends LazyRoCC {
  override lazy val module = new IndirectBFSModule(this, albSize, atomGranularity)
  override val atlNode = TLClientNode(Seq(TLClientPortParameters(Seq(TLClientParameters("Prefetcher")))))
}

class IndirectBFSModule (outer: PrefetcherBFS,
  albSize: Int = 32, atomGranularity: Int = 20) (implicit p: Parameters)
  extends LazyRoCCModule(outer){

  val (tl_out, edgesOut) = outer.atlNode.out(0)
  implicit val edge = edgesOut
  val tlb_wrapper = Module(new AtomTLBWrapper)
  val ctrl = Module(new AtomAddressMapController(atomGranularity))
  val pref = Module(new IndirectBFS())

  // RoCC related connections
  ctrl.io.cmd                 <>  io.cmd
  io.resp                     <>  ctrl.io.resp
  io.interrupt := ctrl.io.interrupt
  io.busy := ctrl.io.busy

  // connect modueles to the TLB they are sharing
  tlb_wrapper.io.amu          <>  ctrl.io.tlb
  tlb_wrapper.io.amu_status   :=  ctrl.io.mstatus
  tlb_wrapper.io.pref         <>  pref.io.tlb
  // tlb_wrapper.io.pref_status  :=  pref.io.status
  io.ptw.head                 <>  tlb_wrapper.io.ptw

  // bank memory ifaces
  io.mem                      <>  ctrl.io.mem
  io.mem_pref                 <>  pref.io.mem

  // snoop core's memory requests
  pref.io.core_snoop          <>  io.core_snoop

  // Connect AST and PAT to prefetcher
  ctrl.io.pref_pat_addr := pref.io.pat_addr
  pref.io.pat_atom      := ctrl.io.pref_pat_atom
  ctrl.io.pref_ast_addr := pref.io.ast_addr
  pref.io.ast_status    := ctrl.io.pref_ast_status

  val lookup = Module(new BuffedALU(atomGranularity,albSize,false))
  io.mem_amulookup            <>  lookup.io.mem
  // Connect AMU_LOOKUP module to the prefetcher
  // and supply it with acr
  lookup.io.acrbase           := ctrl.io.acr
  lookup.io.phybase           := ctrl.io.phybase
  lookup.io.lookup            <> pref.io.amu_lookup
  lookup.io.map_update_id     := ctrl.io.map_update_id
  lookup.io.map_update_addr   := ctrl.io.map_update_addr
  lookup.io.map_update_valid  := ctrl.io.map_update_valid

  io.core_snoop.dbg2   := lookup.io.dbg2
  io.core_snoop.dbg1   := lookup.io.dbg1
  io.core_snoop.dbg3   := pref.io.dbg1
  io.core_snoop.dbg4   := pref.io.dbg2
}
