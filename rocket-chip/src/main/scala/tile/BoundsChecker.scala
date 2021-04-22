package tile

import Chisel.{RegInit, UInt, Vec, log2Up, printf}
import chisel3._
import chisel3.util._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.rocket._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.tile._
// import ClientAmuRequest._
import freechips.rocketchip.diplomacy.{LazyModule, LazyModuleImp, IdRange}


class rqDeqBC extends Bundle{
  val ready = Input(Bool())
  val paddr = Output(UInt(40.W))
  val vaddr = Output(UInt(40.W))
  val typ   = Output(UInt(3.W))
  val cmd   = Output(UInt(5.W))
  val sid   = Output(UInt(8.W))
  val valid = Output(Bool())
}

class RequestQueueBC(val size: Int = 8)(implicit p: Parameters) extends Module{
  val io = IO(new Bundle{
    val enq  = Flipped(new rqDeqBC)
    val deq  = new rqDeqBC
    val almost_full = Output(Bool())
  })

  val DEBUG_PRQ = true

  val paddr = Reg(Vec(size, UInt(40.W)))
  val vaddr = Reg(Vec(size, UInt(40.W)))
  val typ   = Reg(Vec(size, UInt(3.W)))
  val cmd   = Reg(Vec(size, UInt(5.W)))
  val sid   = Reg(Vec(size, UInt(8.W)))

  val tail = RegInit(UInt(0, log2Up(size).W))
  val head = RegInit(UInt(0, log2Up(size).W))

  io.enq.ready := (tail + 1.U) =/= head // not full

  when(io.enq.valid && io.enq.ready){
    paddr(tail) := io.enq.paddr
    vaddr(tail) := io.enq.vaddr
    typ(tail)   := io.enq.typ
    cmd(tail)   := io.enq.cmd
    sid(tail)   := io.enq.sid
    tail        := tail + 1.U
    if(DEBUG_PRQ){
      printf("PRQ Enq - vaddr: 0x%x paddr: 0x%x\n", io.enq.vaddr, io.enq.paddr)
    }
  }

  io.deq.paddr := paddr(head)
  io.deq.vaddr := vaddr(head)
  io.deq.typ   := typ(head)
  io.deq.cmd   := cmd(head)
  io.deq.sid   := sid(head)

  io.deq.valid := tail =/= head // not empty

  when(io.deq.ready && io.deq.valid){
    head         := head + 1.U
    if(DEBUG_PRQ){
      printf("PRQ Deq - vaddr: 0x%x paddr: 0x%x\n", io.deq.vaddr, io.deq.paddr)
    }
  }

  io.almost_full := (tail + 3.U) === head || (tail + 2.U) === head || (tail + 1.U) === head
}

class BoundsChecker (val atomGranularity: Int = 9, isPhysical: Boolean = false, isDummy: Boolean = false, checkAll: Boolean = false) 
(implicit p: Parameters, edge: TLEdgeOut) extends Module {
  val io = IO(new Bundle {
    val cmd = Flipped(Decoupled(new RoCCCommand)) //Atom cmd

    val resp = Decoupled(new RoCCResponse)
    val mem = new HellaCacheIO
    val busy = Output(Bool())
    val interrupt = Output(Bool())
    val tlb = new FrontendTLBIO
    val bc_tlb = new FrontendTLBIO
    val mstatus = Output(new MStatus)

    val lookup = Flipped(new AMULookUpIO)
    val core_snoop = Flipped(new CoreASPIO)

    val map_update_addr   = Output(UInt(40.W))
    val map_update_valid  = Output(Bool())
    val map_update_id     = Output(UInt(8.W)) 

    val acr = Output(UInt(32.W))
    val phybase = Output(UInt(32.W))
    val pref_pat_addr = Input(UInt(8.W))
    val pref_pat_atom = Output(UInt(512.W))

    val pref_ast_addr   = Input(UInt(8.W))
    val pref_ast_status = Output(Bool())
  })

  io.interrupt := false.B

  val n = 4
  val cmd = io.cmd
  val atomID = RegInit(34.U(log2Up(n)-1))
  val str_vaddr = RegInit(33.U(32.W))
  val mem_wdata = RegInit(33.U(64.W))
  val str_paddr = RegInit(34.U(32.W))
  val bytes_left = RegInit(0.U(32.W))
  val rows_left = RegInit(0.U(32.W))
  val amu_vaddr = RegInit(0.U(32.W))
  val fill_pat_address = RegInit(0.U(32.W))
  val pat_counter = RegInit(0.U(8.W))
  val n_atoms = RegInit(0.U(8.W))
  val is_map = RegInit(false.B)
  val is_unmap = RegInit(false.B)
  val is_map_2d = RegInit(false.B)
  val is_unmap_2d = RegInit(false.B)
  val verbose = RegInit(false.B)
  val mem_wen = RegInit(false.B)
  val atom_id = RegInit(0.U(8.W))
  val attribute = RegInit(0.U(32.W))
  val atomoffset = RegInit(0.U(4.W))

  if(isDummy)
    println("I won't spend time on mapping stuff")

  val status = RegEnable(cmd.bits.status, cmd.fire()) // && (is_amu_map))

  val inst = cmd.bits.inst
  val is_acr_read       = (inst.funct === 1.U)
  val is_acr_write      = (inst.funct === 2.U)
  val is_acr_clear      = (inst.funct === 3.U)
  val is_len_write      = (inst.funct === 4.U)
  val is_len_read       = (inst.funct === 5.U)
  val is_amu_map        = (inst.funct === 6.U)
  val is_amu_unmap      = (inst.funct === 7.U)
  val is_ast_activate   = (inst.funct === 8.U)
  val is_ast_deactivate = (inst.funct === 9.U)
  val is_ast_status     = (inst.funct === 10.U)
  val is_stride_write   = (inst.funct === 11.U)
  val is_stride_read    = (inst.funct === 12.U)
  val is_rowcnt_write   = (inst.funct === 13.U)
  val is_rowcnt_read    = (inst.funct === 14.U)
  val is_amu_map_2d     = (inst.funct === 15.U)
  val is_amu_unmap_2d   = (inst.funct === 16.U)
  val is_fatom          = (inst.funct === 17.U)
  val is_fatom_select   = (inst.funct === 18.U)
  val is_fatom_load     = (inst.funct === 19.U)
  
  val is_bc_atom_select = (inst.funct === 20.U)

  val acr_reg = Module(new AtomAddressMapRegACR())
  acr_reg.io.wen := cmd.fire() && (is_acr_write || is_len_write || is_stride_write || is_rowcnt_write )
  acr_reg.io.waddr := Mux(is_acr_write, 0.U,
                      Mux(is_len_write, 1.U,
                      Mux(is_stride_write, 2.U,3.U)))
  acr_reg.io.wdata := cmd.bits.rs2
  acr_reg.io.clear := cmd.fire() && is_acr_clear

  io.acr := acr_reg.io.acr.asUInt()
  io.phybase := acr_reg.io.rowCnt.asUInt()

  val atomStatusTable = Module(new AtomStatusTable())

  atomStatusTable.io.pref_addr  := io.pref_ast_addr
  io.pref_ast_status            := atomStatusTable.io.pref_status

  atomStatusTable.io.wen := cmd.fire() && (is_ast_activate || is_ast_deactivate)
  atomStatusTable.io.AD := is_ast_activate
  atomStatusTable.io.waddr := cmd.bits.rs2
  atomStatusTable.io.raddr := cmd.bits.rs2
  val mem_atom_status = atomStatusTable.io.stat


  val (s_idle :: s_translate :: s_fillpat_single :: s_wait :: s_write :: s_finish :: Nil) = Enum(6)
  val state = RegInit(s_idle)
  val (s_bc_idle :: s_bc_lookup :: s_bc_wait_lookup :: s_bc_pat :: Nil) = Enum(4)
  val state_bc = RegInit(s_bc_idle)


  val pat = Module (new PrivateAttributeTable())

  io.pref_pat_atom := DontCare

  // *********** Bounds Check RTL ***********
  val bc_resolved = RegInit(true.B)
  val selected_atom = RegInit(UInt(0,8.W))

  val prq = Module(new RequestQueueBC(32))

  val req_addr_s0  = io.core_snoop.addr
  val req_typ_s0   = io.core_snoop.typ
  val req_cmd_s0   = io.core_snoop.cmd
  // Snoop both stores and loads
  val req_valid_s0 = Wire(Bool())
  req_valid_s0    := io.core_snoop.valid && (req_cmd_s0 === 0.U ||
                                      req_cmd_s0 === 1.U)
  // Check only stores as only they can modify return addresses
  if(checkAll){
    req_valid_s0 := io.core_snoop.valid && (req_cmd_s0 === 1.U)
  }

  // ------------------------------ stage 1 ------------------------------------
  // cache accesses dtlb at stage 1, so we know the translation
  // but we don't know whether or not the request is valid yet
  val req_paddr_s1   = Mux(RegNext(io.core_snoop.physical), RegNext(io.core_snoop.addr), io.core_snoop.s1_paddr)  // Returned by dcache
  val req_vaddr_s1   = RegNext(req_addr_s0)
  val paddr_s1_valid = RegNext(req_valid_s0)
  val req_typ_s1     = RegNext(req_typ_s0) // Convert to prefetch requests
  val req_cmd_s1     = RegNext(req_cmd_s0 + 2.U) // Not important in this case
  // ------------------------------ stage 2 ------------------------------------
  // prq enqueue logic
  // we enqueue 2 cycles later w.r.t core_snoop request since d$ could
  // potentially nack the request or generate an exception at cycle 2

  val req_paddr_s2 = RegNext(req_paddr_s1)

  val core_s2_nack   = io.core_snoop.s2_nack
  val core_s2_xcpt   = io.core_snoop.s2_xcpt.asUInt.orR
  val s2_dc_miss     = io.core_snoop.miss

  // Three reasons for the request to be shotdown
  // 1 - core_snoop kills the originating memory access
  // 2 - Access resulted in exception in D$
  // 3 - D$ was busy with handling coherence or did not have
  //      any free MSHRs left so it nacked the request. 
  val prq_enq_valid  = RegNext(paddr_s1_valid) && RegNext(~io.core_snoop.s1_kill) &&
                        ~core_s2_nack && ~core_s2_xcpt && (acr_reg.io.acr.asUInt() =/= 0.U)//&& s2_dc_miss
/*
  printf("\n")
  printf("S0 V:%d VA:0x%x\n",req_valid_s0,req_addr_s0)
  printf("S1 V:%d PA:0x%x K:%d\n",paddr_s1_valid,req_paddr_s1,io.core.s1_kill)
  printf("S2 V:%d PA:0x%x NACK:%d MISS:%d XCPT:%d ENQ:%d\n",RegNext(paddr_s1_valid),req_paddr_s2,core_s2_nack,s2_dc_miss,core_s2_xcpt,prq_enq_valid)
  printf("\n")
*/
  prq.io.enq.paddr := RegNext(req_paddr_s1)
  prq.io.enq.vaddr := RegNext(req_vaddr_s1)
  prq.io.enq.typ   := RegNext(req_typ_s1)
  prq.io.enq.cmd   := RegNext(req_cmd_s1)
  prq.io.enq.sid   := selected_atom

  if(checkAll){
    prq.io.enq.sid   := Mux(!bc_resolved, selected_atom, 0.U)
    prq.io.enq.valid := prq_enq_valid && prq.io.enq.ready 
  }else{
    prq.io.enq.sid   := selected_atom
    prq.io.enq.valid := prq_enq_valid && prq.io.enq.ready && !bc_resolved
  }
  when(prq.io.enq.valid){
    bc_resolved := true.B
  }

  // Number of lost requests
  prq.io.deq.ready    := (state_bc === s_bc_idle) && !cmd.valid

  // FINISH COPIED CODE
  io.core_snoop         <> DontCare
  io.bc_tlb             <> DontCare
  io.bc_tlb.req.valid   := false.B

  val selected_atom_lookup = RegInit(UInt(0,8.W))

  when(cmd.fire() && is_bc_atom_select)
  {
    printf("Selecting aid:%d\n", cmd.bits.rs1)
    selected_atom := cmd.bits.rs1
    bc_resolved := false.B
  }

  io.core_snoop.bc_resolved := false.B
  io.core_snoop.bp_q_full   := prq.io.almost_full

  val lookup_paddr = Reg(UInt(40.W))
  val lookup_vaddr = Reg(UInt(40.W))
  val lookup_type  = Reg(UInt(2.W))

  when(prq.io.deq.valid)
  {
    printf("PRQ is waiting state:%d, cmd.valid:%d\n", state_bc, cmd.valid)
  }

  when(prq.io.deq.valid && (state_bc === s_bc_idle) && !cmd.valid)
  {
    printf("DEQ and do lookup\n")
    state_bc              := s_bc_lookup
    lookup_paddr          := prq.io.deq.paddr
    lookup_vaddr          := prq.io.deq.vaddr
    lookup_type           := prq.io.deq.typ(1,0) // Mask out unsigned bit
    selected_atom_lookup  := prq.io.deq.sid
  }
  
  io.lookup.req.paddr  := lookup_paddr
  io.lookup.req.valid  := state_bc === s_bc_lookup

  when(state_bc === s_bc_lookup)
  {
    when(io.lookup.req.ready){
      printf("Lookup req ready\n")
      state_bc := s_bc_wait_lookup
    }
  }
  
  when(state_bc === s_bc_wait_lookup)
  {
    when(io.lookup.resp.xcpt){
      state_bc := s_idle
      printf("---Should NOT HAPPEN\n")
    }.elsewhen(io.lookup.resp.valid){
      printf("---Lookup Resp Fire: %d selected %d\n", io.lookup.resp.atom_id, selected_atom_lookup)
      if(checkAll)
      {
        when(selected_atom_lookup === io.lookup.resp.atom_id){
          state_bc := s_bc_idle
        }.otherwise{
          state_bc := s_bc_pat
        }
      }else{
        when(selected_atom_lookup =/= io.lookup.resp.atom_id)
        {
          io.interrupt        := true.B
          state_bc            := s_idle
          printf("--- ATOM IDS DO NOT MATCH ---\n")
        }.otherwise{
          state_bc            := s_idle
        }
        io.core_snoop.bc_resolved := true.B
      }
    }
  }

  pat.io.addr_pref   := io.lookup.resp.atom_id
  val protection_info = RegEnable(pat.io.atom_pref, (state_bc === s_bc_wait_lookup) && (io.lookup.resp.valid && !io.lookup.resp.xcpt))
  val byte_range      = Mux(lookup_type === 0.U, UInt("b00000001"), // 0: 1 byte, 1: Short-word, 2: Word, 3: D-Word
                            Mux(lookup_type === 1.U, UInt("b00000011"),
                                Mux(lookup_type === 2.U, UInt("b00001111"),
                                    UInt("b11111111")
                        )))
  val addr_cl_idx     = lookup_vaddr(5,3)
  val addr_ma_idx     = lookup_vaddr(2,0)
  val prot_vec        = Vec.fill(8) {WireInit(UInt(0,8.W))}
  for (i <- 0 until 8){
    prot_vec(i)      := protection_info(i*8+7,i*8)
  }
  val prot_bits       = prot_vec(addr_cl_idx).asUInt
  val prot_masked     = prot_bits & (byte_range << addr_ma_idx)
  val check_fail      = prot_masked.orR // every byte the load-store is accessing should be unprotected
  when(state_bc === s_bc_pat)
  {
    printf("Dumping potentially useful info\n")
    printf("prot_info:0x%x\n", protection_info)
    printf("byte_range:%x addr_ma_idx:%d addr_cl_idx:%d prot_bits:%x check_fail:%d\n", byte_range, addr_ma_idx, addr_cl_idx, prot_bits, check_fail)
    // Assuming granularity 64 this range indicates the dw index to protect
    when(check_fail)
    {
      io.interrupt        := true.B
      printf("--- Access Violation ---\n")
    }
    state_bc            := s_idle
    io.core_snoop.bc_resolved := true.B
  }

  if(checkAll)
  {
    println("Return address protection impl.")
  }

  //printf("BC_resolved:%d\n",io.core_snoop.bc_resolved)

  // *********** END: Bounds Check RTL ***********

  when(cmd.fire() && (is_fatom_select) && ((state === s_idle) && !isDummy.B)){
    printf("fatom_select: ")
    printf("rs1:%d ", cmd.bits.rs1)
    printf("rs2:%d\n", cmd.bits.rs2)
    atom_id    := cmd.bits.rs1
    state := s_finish
  }

  when(cmd.fire() && (is_fatom_load) && ((state === s_idle) && !isDummy.B))
  {
    printf("fatom_load: ")
    printf("atomoffset:%d ", cmd.bits.rs1)
    printf("attribute:%d\n", cmd.bits.rs2)
    attribute := cmd.bits.rs2
    atomoffset := cmd.bits.rs1
    state := s_fillpat_single
  }

  when((state === s_fillpat_single)){
    state := s_finish
  }

  pat.io.wen := (state === s_fillpat_single)
  pat.io.addr := atom_id
  pat.io.wdata := attribute
  pat.io.ren := false.B
  pat.io.attindex := atomoffset

  //----------------------------------------------------------------------------------------------//
  // TLB implementation
  // val tlb = Module(new FrontendTLB(1))//
  // io.ptw <> tlb.io.ptw
  // tlb.io.ptw.status := status

  io.mstatus := status
  val to_translate = RegInit(false.B)
  val tlb_sent = RegInit(true.B)
  val tlb_to_send = to_translate & !tlb_sent
  val ptw_error = false.B
  io.tlb.req.valid := tlb_to_send
  io.tlb.req.bits.vaddr := str_vaddr
  io.tlb.req.bits.passthrough := false.B
  io.tlb.req.bits.sfence.valid := ptw_error
  io.tlb.req.bits.sfence.bits.rs1 := true.B
  io.tlb.req.bits.sfence.bits.rs2 := false.B
  io.tlb.req.bits.sfence.bits.addr :=  str_vaddr
  io.tlb.req.bits.sfence.bits.asid := 0.U
  io.tlb.resp.ready := true.B
  io.tlb.req.bits.cmd := M_XWR
  io.tlb.req.bits.size := MT_W
  io.tlb.req.bits.isLookup := false.B

  when(io.tlb.req.fire())
  {
    tlb_sent := true.B
  }

  val timeout = RegInit(UInt(0,10.W))

  when(verbose)
  {
    timeout := timeout + UInt(1)
    //when(timeout > UInt(30)){
      //verbose := false.B
    //}
    printf("-- CMD (%d)  ", state)
    printf("v:%d  ", cmd.valid)
    printf("r:%d  ", cmd.ready)
    printf("b:%d  ", io.busy)
    printf("l:%d  ", acr_reg.io.len)
    printf("a:%d  ", acr_reg.io.acr)
    printf("rs1:%d  ", cmd.bits.inst.rs1)
    printf("rs2:%d  ", cmd.bits.inst.rs2)
    printf("rd:%d  ", cmd.bits.inst.rd)
    printf("inst:%d \n ", cmd.bits.inst.funct)

    printf("-- R (%d)  ", state)
    printf("v:%d  ", io.tlb.req.valid)
    printf("r:%d  ", io.tlb.req.ready)
    printf("va:%x  ", io.tlb.req.bits.vaddr)
    printf("ps:%d  \n", io.tlb.req.bits.passthrough)


    printf("-- S (%d)  ", state)
    printf("v:%d  ", io.tlb.resp.valid)
    printf("r:%d  ", io.tlb.resp.ready)
    printf("pa:%x  ", io.tlb.resp.bits.paddr)
    printf("ms:%d  ", io.tlb.resp.bits.miss)
    printf("ld:%d  ", io.tlb.resp.bits.pf.ld)
    printf("st:%d  ", io.tlb.resp.bits.pf.st)
    printf("cc:%d\n", io.tlb.resp.bits.cacheable)


    printf("-- MR (%d)  ", state)
    printf("v:%d  ", io.mem.req.valid)
    printf("r:%d  ", io.mem.req.ready)
    printf("ad:%x  ", io.mem.req.bits.addr)
    printf("tg:%d  ", io.mem.req.bits.tag)
    printf("cmd:%d  ", io.mem.req.bits.cmd)
    printf("typ:%d  ", io.mem.req.bits.typ)
    printf("data:%x  \n", io.mem.req.bits.data)


    printf("-- MS (%d)  ", state)
    printf("v: %d  ", io.mem.resp.valid)
    printf("r: %d \n", io.mem.resp.bits.data)

    printf("s2_xcpt : %d  ", io.mem.s2_xcpt.asUInt())
    printf("ma.st : %d  ", io.mem.s2_xcpt.ma.st)
    printf("ma.ld : %d  ", io.mem.s2_xcpt.ma.ld)
    printf("pf.st : %d  ", io.mem.s2_xcpt.pf.st)
    printf("pf.ld : %d  ", io.mem.s2_xcpt.pf.ld)
    printf("ae.st : %d  ", io.mem.s2_xcpt.ae.st)
    printf("ae.ld : %d\n", io.mem.s2_xcpt.ae.ld)



  }

    when(cmd.fire())
    {
      printf("-- CMDFIRE (%d)  ", state)
      printf("v:%d  ", cmd.valid)
      printf("r:%d  ", cmd.ready)
      printf("rs1:%d  ", cmd.bits.inst.rs1)
      printf("rs2:%d  ", cmd.bits.inst.rs2)
      printf("rs1v:%d  ", cmd.bits.rs1)
      printf("rs2v:%d  ", cmd.bits.rs2)
      printf("rd:%d  ", cmd.bits.inst.rd)
      printf("inst:%d\n", cmd.bits.inst.funct)
      printf("acr_reg_wen:%d waddr:%d wdata:%d clear:%d\n", acr_reg.io.wen, acr_reg.io.waddr, acr_reg.io.wdata, acr_reg.io.clear)
    }


  when(io.tlb.resp.fire())
  {
    to_translate := false.B
    str_paddr := io.tlb.resp.bits.paddr
  }

  //----------------------------------------------------------------------------------------------//
  when(cmd.fire() && (is_amu_map || is_amu_unmap || is_amu_map_2d || is_amu_unmap_2d) && (state === s_idle))
  {
    if(isDummy)
    {
      state := s_idle
    }else{
      state := s_translate
    }

    printf("State change from IDLE to TRANSLATE\n")
    printf("-- CMD (%d)  ", state)
    printf("v:%d  ", cmd.valid)
    printf("r:%d  ", cmd.ready)
    printf("b:%d  ", io.busy)
    printf("l:%d  ", acr_reg.io.len)
    printf("a:%d  ", acr_reg.io.acr)
    printf("rs1:%d  ", cmd.bits.inst.rs1)
    printf("rs2:%d  ", cmd.bits.inst.rs2)
    printf("rd:%d  ", cmd.bits.inst.rd)
    printf("inst:%d \n ", cmd.bits.inst.funct)
    str_vaddr := cmd.bits.rs1
    atomID    := cmd.bits.rs2(log2Up(n)-1,0)
    mem_wdata       := (cmd.bits.rs2 & "h00000000000000ff".U) |
      ((cmd.bits.rs2 << 8 ).asUInt() & "h000000000000ff00".U) |
      ((cmd.bits.rs2 << 16).asUInt() & "h0000000000ff0000".U) |
      ((cmd.bits.rs2 << 24).asUInt() & "h00000000ff000000".U) |
      ((cmd.bits.rs2 << 32).asUInt() & "h000000ff00000000".U) |
      ((cmd.bits.rs2 << 40).asUInt() & "h0000ff0000000000".U) |
      ((cmd.bits.rs2 << 48).asUInt() & "h00ff000000000000".U) |
      ((cmd.bits.rs2 << 56).asUInt() & "hff00000000000000".U)

    is_map := is_amu_map
    is_unmap := is_amu_unmap
    is_map_2d := is_amu_map_2d
    is_unmap_2d := is_amu_unmap_2d
    to_translate := true.B
    tlb_sent := false.B
    verbose := true.B
  }

  println("\nAtom Granularity " + atomGranularity + "\n")
  when((state === s_translate) && !to_translate)
  {
    printf("State change from TRANSLATE to WRITE acr_reg.io.acr:%d\n",acr_reg.io.acr.asUInt())
    state := s_write
    if(isPhysical){
      amu_vaddr := ((str_paddr >> atomGranularity).asUInt() + (acr_reg.io.acr).asUInt()) + acr_reg.io.rowCnt//((str_paddr >> 9).asUInt() + (acr_reg.io.acr).asUInt())
    }
    else{
      amu_vaddr := ((str_paddr >> atomGranularity).asUInt() + (acr_reg.io.acr).asUInt()) //((str_paddr >> 9).asUInt() + (acr_reg.io.acr).asUInt())
    }
    bytes_left := acr_reg.io.len
    rows_left := Mux((is_amu_map || is_amu_unmap), 0.U, acr_reg.io.rowCnt - 1.U)
    mem_wen := true.B
  }


// TODO this never becomes valid when using physical stuff
  when((state === s_write) && io.mem.resp.valid)
  {
    when (bytes_left === 0.U && ((rows_left === 0.U && (is_map_2d || is_unmap_2d)) || is_map || is_unmap)) {

      printf("State change from WRITE to FINISH\n")
      state := s_finish
    }
    .elsewhen (bytes_left === 0.U && rows_left =/= 0.U && (is_map_2d || is_unmap_2d)) {
      bytes_left := acr_reg.io.len
      amu_vaddr := amu_vaddr + acr_reg.io.stride + 1.U
      rows_left := rows_left - 1.U
      mem_wen := true.B
    }
    .otherwise {
      str_paddr := str_paddr + atomGranularity.U
      amu_vaddr := amu_vaddr + 1.U
      mem_wen := true.B
    }
  }

  when(io.mem.req.fire() && (state === s_write))
  {
    bytes_left := bytes_left - 1.U
    mem_wen := false.B
  }

  io.map_update_valid := state === s_write
  io.map_update_addr  := str_paddr
  io.map_update_id    := mem_wdata(7,0)

  when(state === s_finish)
  {
    printf("State change from FINISH to IDLE\n")
    state := s_idle
    verbose := false.B
    mem_wen := false.B
  }

  //----------------------------------------------------------------------------------------------//
  
  if(isDummy)
  {
    io.busy   := false.B
    cmd.ready := true.B
  }else
  {
    io.busy :=  (state =/= s_idle)
    cmd.ready := state === s_idle
  }

  // Memory Request Interface
  io.mem.req.valid := ((state === s_write) && mem_wen)
  io.mem.req.bits.addr := amu_vaddr
  io.mem.req.bits.tag := 0.U
  io.mem.req.bits.cmd := M_XWR
  io.mem.req.bits.typ := MT_B
  io.mem.req.bits.data := mem_wdata.asUInt()
  io.mem.req.bits.phys := isPhysical.B
  io.mem.invalidate_lr := false.B
  io.mem.s1_kill := false.B
  io.mem.s1_data.mask := 0.U
  io.mem.s1_data.data := 0.U
  io.mem.req.bits.isLookup := false.B
  io.mem.req.bits.paddr := 0.U
  
  io.resp.valid := (cmd.valid && (is_acr_read || is_len_read || is_stride_read || is_rowcnt_read || is_ast_status))
  io.resp.bits.rd := inst.rd
  io.resp.bits.data := Mux(is_ast_status, mem_atom_status,
            Mux(is_stride_read, acr_reg.io.stride,
            Mux(is_rowcnt_read, acr_reg.io.rowCnt,
            Mux(is_acr_read, acr_reg.io.acr, acr_reg.io.len))))

}

class BoundsCheckerImpl(albSize: Int = 32, atomGranularity: Int = 20, checkAll: Boolean = false)(implicit p: Parameters) extends LazyRoCC {
  override lazy val module = new BoundsCheckerModule(this, albSize, atomGranularity, checkAll)
  override val atlNode = TLClientNode(Seq(TLClientPortParameters(Seq(TLClientParameters("BChecker")))))
}

class BoundsCheckerModule (outer: BoundsCheckerImpl,
  albSize: Int = 32, atomGranularity: Int = 9, checkAll: Boolean = false) (implicit p: Parameters)
  extends LazyRoCCModule(outer){

  val (tl_out, edgesOut) = outer.atlNode.out(0)
  implicit val edge = edgesOut
  val tlb_wrapper = Module(new AtomTLBWrapper)
  val ctrl = Module(new BoundsChecker(atomGranularity = atomGranularity,checkAll = checkAll))

  // RoCC related connections
  ctrl.io.cmd                 <>  io.cmd
  io.resp                     <>  ctrl.io.resp
  io.interrupt                :=  ctrl.io.interrupt
  io.busy                     :=  ctrl.io.busy

  // connect modueles to the TLB they are sharing
  tlb_wrapper.io.amu          <>  ctrl.io.tlb
  tlb_wrapper.io.amu_status   :=  ctrl.io.mstatus
  tlb_wrapper.io.pref         <>  ctrl.io.bc_tlb
  // tlb_wrapper.io.pref_status  :=  pref.io.status
  io.ptw.head                 <>  tlb_wrapper.io.ptw

  // bank memory ifaces
  io.mem                      <>  ctrl.io.mem
  io.mem_pref                 <>  DontCare

  // snoop core's memory requests
  ctrl.io.core_snoop          <>  io.core_snoop

  // Connect AST and PAT to prefetcher
  ctrl.io.pref_pat_addr := DontCare
  ctrl.io.pref_ast_addr := DontCare

  val lookup = Module(new BuffedALUBC(atomGranularity,albSize,false))
  io.mem_amulookup            <>  lookup.io.mem
  // Connect AMU_LOOKUP module to the prefetcher
  // and supply it with acr
  lookup.io.acrbase           := ctrl.io.acr
  lookup.io.phybase           := ctrl.io.phybase
  lookup.io.lookup            <> ctrl.io.lookup
  lookup.io.map_update_id     := ctrl.io.map_update_id
  lookup.io.map_update_addr   := ctrl.io.map_update_addr
  lookup.io.map_update_valid  := ctrl.io.map_update_valid

  io.core_snoop.dbg2   := lookup.io.dbg2
  io.core_snoop.dbg1   := lookup.io.dbg1
  io.core_snoop.dbg3   := false.B
  io.core_snoop.dbg4   := false.B
}


/** What does it take to write a pipelined ALU?
  * - 0.5 L of tap water + 2x half a cup of coffee (caffeinless) +
  *        a lunch break + half a cup of coffee + 3 sips of tap water
  *       + an espresso shot + another bottle of tap water + at least 24 hours
  * NOTE: ALU as in AtomLookupUnit not ArithmeticLogicUnit
  */
class BuffedALUBC(val atomGranularity: Int = 9, albSize: Int = 32, isPhysical: Boolean = false)
      (implicit p: Parameters) extends Module{
  val io = IO(new Bundle{
    val lookup  = new AMULookUpIO
    val mem     = new HellaCacheIO
    val acrbase = Input(UInt(32.W))
    val phybase = Input(UInt(32.W))
    val map_update_addr   = Input(UInt(40.W))
    val map_update_valid  = Input(Bool())
    val map_update_id     = Input(UInt(8.W)) 
    val dbg1 = Output(Bool())
    val dbg2  = Output(Bool())
  })
  val DEBUG_AMU = true

  io.mem            <> DontCare
  io.lookup         <> DontCare

  var ovralbsize = albSize
  if(albSize == 0)
    ovralbsize = 1

  val alb     = Module(new Buffed_ALB_FA(atomGranularity,ovralbsize))
  //val alb     = Module(new Buffed_ALB_RANDOM(atomGranularity,ovralbsize))
  val albreq  = alb.io.req
  val albresp = alb.io.resp
  alb.io.map_update_id := io.map_update_id
  alb.io.map_update_addr := io.map_update_addr
  alb.io.map_update_valid := io.map_update_valid

  val s0_addr     = Wire(UInt(40.W))
  val s1_addr     = Reg(UInt(40.W))
  val s2_addr     = Reg(UInt(40.W))
  val s3_addr     = Reg(UInt(40.W))
  val s0_valid    = WireInit(false.B)
  val s1_valid    = RegInit(false.B)
  val s2_valid    = RegInit(false.B)
  val s3_valid    = RegInit(false.B)
  val s0_miss     = WireInit(false.B)
  val s1_advance  = WireInit(false.B)
  val block_queue = WireInit(false.B)
  //val inv_s0      = WireInit(false.B)
  //val inv_s1      = WireInit(false.B)
  val s3_retry    = RegInit(false.B)
  // ~~~~~~~~~~~~~~~~~~~S0~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Lookup in ALB
  s0_addr               := io.lookup.req.paddr
  // if acr is not set we shouldn't do any lookups
  s0_valid              := io.lookup.req.valid && !(io.acrbase.orR === UInt(0))
  // immediately lookup ALB
  albreq.paddr_rd       := s0_addr
  albreq.rden           := (s0_valid && (s1_advance || !s1_valid)) && !block_queue &&/*!inv_s0 &&*/ !(albSize == 0).B && !io.map_update_valid
  s0_miss               := Mux((albSize == 0).B, s0_valid && io.lookup.req.ready, albresp.miss)
  io.lookup.req.ready   := (s1_advance || !s1_valid) && !block_queue && !io.map_update_valid
  // ~~~~~~~~~~~~~~~~~~~S1~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Lookup in AMT which is in main memory, also s0 in D$'s POV when io.mem.req.fire()
  s1_addr               := Mux(s1_advance || !s1_valid, s0_addr, s1_addr)
  // Continue with s1 when the request misses in the ALB
  s1_valid              := Mux(s1_advance || !s1_valid, s0_valid && s0_miss, s1_valid) //&& !inv_s1
  // We cannot issue until 1-) we get a response from D$ 2-) we wait for a cycle since last issue
  io.mem.req.valid      := (s1_valid && !s3_valid && !s2_valid /*&& !inv_s1*/) || s3_retry
  val s3_fixed_addr     = Mux(isPhysical.B, ((s3_addr >> atomGranularity.U) + io.acrbase + io.phybase), 
                                              ((s3_addr >> atomGranularity.U) + io.acrbase))
  val s1_fixed_addr     = Mux(isPhysical.B, ((s1_addr >> atomGranularity.U) + io.acrbase + io.phybase), 
                                              ((s1_addr >> atomGranularity.U) + io.acrbase))
  io.mem.req.bits.addr  := Mux(s3_retry, s3_fixed_addr, s1_fixed_addr)
  s1_advance            := io.mem.req.fire() && !s3_retry
  // ~~~~~~~~~~~~~~~~~~~S2~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // also s1 in D$'s POV, nothing to do here really
  s2_addr               := Mux(s3_retry, s3_addr, s1_addr)
  s2_valid              := Mux(s3_retry, io.mem.req.fire(), s1_advance)
  // ~~~~~~~~~~~~~~~~~~~S3~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // memory responds at this stage, also s2 in D$'s POV
  val xcpt              = io.mem.s2_xcpt.asUInt.orR
  val nackd             = io.mem.s2_nack
  val resp_valid        = io.mem.resp.valid
  val s3_advance        = (resp_valid || xcpt || nackd) && s3_valid
  s3_valid              := Mux(s2_valid, true.B, s3_valid && !(resp_valid || xcpt || nackd))
  s3_addr               := Mux(s2_valid, s2_addr, s3_addr)  
  val s3_atom_id        = io.mem.resp.bits.data(7,0)
  block_queue           := ((s3_valid || s3_retry) && ((s3_addr >> atomGranularity.U) === (s0_addr >> atomGranularity.U))) ||
                           (s1_valid && ((s1_addr >> atomGranularity.U) === (s0_addr >> atomGranularity.U))) ||
                           (s2_valid && ((s2_addr >> atomGranularity.U) === (s0_addr >> atomGranularity.U))) 
  //inv_s1                := ((s3_addr >> atomGranularity.U) === (s1_addr >> atomGranularity.U)) && 
  //                          s3_advance && !nackd && !xcpt
  //inv_s0                := (((s3_addr >> atomGranularity.U) === (s0_addr >> atomGranularity.U)) &&
  //                          s3_advance && !nackd && !xcpt) ||
  //                          ((s1_addr >> atomGranularity.U) === (s0_addr >> atomGranularity.U))
                            
  s3_retry              := (s3_valid && nackd) || (s3_retry && !io.mem.req.fire())
  // ~~~~~~~~~~~~~~~~~~~S4~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Writeback newly read atom id to ALB
  val s4_valid          = s3_advance && !nackd && !xcpt && !(albSize == 0).B
  val s4_addr           = s3_addr
  val s4_atom_id        = s3_atom_id

  albreq.wen       := s4_valid
  albreq.atom_id   := s4_atom_id
  albreq.paddr_wr  := s4_addr
  
  io.lookup.resp.valid    := RegNext(s0_valid && io.lookup.req.ready && !s0_miss) || s4_valid
  io.lookup.resp.miss     := DontCare
  io.lookup.resp.atom_id  := Mux(s4_valid, s4_atom_id, RegNext(albresp.atom_id))
  io.lookup.resp.xcpt     := (s3_valid && xcpt) || (io.acrbase.orR === UInt(0))

  io.dbg2  := albreq.rden && !albresp.miss
  io.dbg1  := albreq.rden && albresp.miss // albresp.debug
  
  if(DEBUG_AMU){
    printf("S0- V:%d PA:0x%x ALBMiss: %d\n", s0_valid, s0_addr, s0_miss)
    printf("S1- V:%d PA:0x%x MemAddr: 0x%x ADV:%d\n", s1_valid, s1_addr, io.mem.req.bits.addr, s1_advance)
    printf("S2- V:%d PA:0x%x\n", s2_valid, s2_addr)
    printf("S3- V:%d PA:0x%x xcpt:%d nack:%d ADV:%d\n", s3_valid, s3_addr, xcpt, nackd, s3_advance)
    printf("S4- V:%d PA:0x%x AID: %d\n", s4_valid, s4_addr, s4_atom_id)
  }
  
  if(isPhysical){
    println("LookupUnit: I wont access TLB\n")
  }

  io.mem.req.bits.tag  := UInt(0)
  io.mem.req.bits.cmd  := M_XRD // read only should be enough
  io.mem.req.bits.typ  := MT_B
  io.mem.req.bits.phys := isPhysical.B
  io.mem.req.bits.isLookup := true.B // hack: trick D$ into thinking we are doing IOMMU
  io.mem.invalidate_lr := false.B
  // Assuming data width here, might not be correct but should not matter
  io.mem.s1_data.data := UInt(0, 65.W)
  io.mem.s1_kill := false.B
}