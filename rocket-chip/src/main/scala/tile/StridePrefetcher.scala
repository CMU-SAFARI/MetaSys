package tile
import chisel3._
import chisel3.util._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.rocket._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.tile._
import freechips.rocketchip.diplomacy.{LazyModule, LazyModuleImp, IdRange}

class SimpleStridePrefetcher(implicit p: Parameters) extends Module{
  val io = IO(new Bundle{
    val core_snoop  = Flipped(new CoreASPIO)
    val mem         = new HellaCacheIO
    val debug       = Output(Bool())
    val debug2       = Output(Bool())
  })

  io.core_snoop     <> DontCare
  io.mem            <> DontCare

  // Queue core requests
  val prq            = Module(new RequestQueue(32))
  io.core_snoop     <> DontCare
  io.core_snoop.bp_q_full := prq.io.almost_full

  val req_addr_s0  = io.core_snoop.addr
  val req_typ_s0   = io.core_snoop.typ
  val req_cmd_s0   = io.core_snoop.cmd
  // Snoop both stores and loads
  val req_valid_s0 = io.core_snoop.valid && (req_cmd_s0 === 0.U) //||
                                      //req_cmd_s0 === 1.U)

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
  // we enqueue 2 cycles later w.r.t core request since d$ could
  // potentially nack the request or generate an exception at cycle 2

  val req_paddr_s2 = RegNext(req_paddr_s1)

  val core_s2_nack   = io.core_snoop.s2_nack
  val core_s2_xcpt   = io.core_snoop.s2_xcpt.asUInt.orR
  val s2_dc_miss     = io.core_snoop.miss

  // Three reasons for the request to be shotdown
  // 1 - Core kills the originating memory access
  // 2 - Access resulted in exception in D$
  // 3 - D$ was busy with handling coherence or did not have
  //      any free MSHRs left so it nacked the request. 
  val prq_enq_valid  = RegNext(paddr_s1_valid) && RegNext(~io.core_snoop.s1_kill) &&
                        ~core_s2_nack && ~core_s2_xcpt //&& s2_dc_miss
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

  prq.io.enq.valid := prq_enq_valid && prq.io.enq.ready
  prq.io.deq.ready := true.B

  val cand_addr    = prq.io.deq.vaddr >> 6.U // eliminate block idx
  
  val (s_idle :: s_prefetch :: Nil) = Enum(2)
  val state = RegInit(s_idle)
/*
  val req_address_3 = RegEnable(prq.io.deq.vaddr, prq.io.deq.valid)
  val req_address_2 = RegEnable(req_address_3,prq.io.deq.valid)
  val req_address_1 = RegEnable(req_address_2,prq.io.deq.valid)
  val req_address_0 = RegEnable(req_address_1,prq.io.deq.valid)
*/

  val upcoming_exists = Wire(Bool())

  val req_address_3 = RegEnable(cand_addr, prq.io.deq.valid && !upcoming_exists)
  val req_address_2 = RegEnable(req_address_3,prq.io.deq.valid && !upcoming_exists)
  val req_address_1 = RegEnable(req_address_2,prq.io.deq.valid && !upcoming_exists)
  val req_address_0 = RegEnable(req_address_1,prq.io.deq.valid && !upcoming_exists)
  // The table should have 1-0,2-1,2-0,3-2,3-1,3-0

  upcoming_exists := (req_address_3 === cand_addr) || (req_address_2 === cand_addr) ||
                          (req_address_1 === cand_addr) || (req_address_0 === cand_addr)


  val stride0 = req_address_1-req_address_0
  val stride1 = req_address_2-req_address_1
  val stride2 = req_address_2-req_address_0
  val stride3 = req_address_3-req_address_0
  val stride4 = req_address_3-req_address_1
  val stride5 = req_address_3-req_address_2

  val stride_match  = Wire(Bool())
  stride_match  := false.B
  val init_prefetch = prq.io.deq.valid && (state === s_idle) && stride_match


  val pref_addr   = Wire(UInt(40.W))
  pref_addr      := cand_addr
  val pref_addr_r = Reg(UInt(40.W))
  val same_page = Wire(Bool())
  same_page    := false.B
  val same_cl   = Wire(Bool())
  same_cl      := false.B

  when(init_prefetch)
  {
    printf("Dump storage\n")
    printf("A3:%x A2:%x A1:%x A0:%x\n",req_address_3,req_address_2,req_address_1,req_address_0)
    printf("S0:%x S1:%x S2:%x S3:%x S4:%x S5:%x\n",stride0,stride1,stride2,stride3,stride4,stride5)
    printf("same_page:%d same_cl:%d pref_addr:%x", same_page, same_cl, pref_addr)
  }
  when(state === s_idle)
  {
    //Check the stride
    when(stride5 === (cand_addr - req_address_3)) {
      pref_addr := cand_addr + (stride5)
      stride_match := true.B
    }.elsewhen(stride4 === (cand_addr - req_address_3)){
      pref_addr := cand_addr + (stride4)
      stride_match := true.B
    }.elsewhen(stride3 === (cand_addr - req_address_3)){
      pref_addr := cand_addr + (stride3)
      stride_match := true.B
    }.elsewhen(stride2 === (cand_addr - req_address_2)){
      pref_addr := cand_addr + (stride2)
      stride_match := true.B
    }.elsewhen(stride1 === (cand_addr - req_address_2)){
      pref_addr := cand_addr + (stride1)
      stride_match := true.B
    }.elsewhen(stride0 === (cand_addr - req_address_1)){
      pref_addr := cand_addr + (stride0)
      stride_match := true.B
    }.otherwise{
      pref_addr := cand_addr
      stride_match := false.B
    }
  }

  //same_page := pref_addr(39,12) === prq.io.deq.vaddr(39,12)
  //same_cl   := pref_addr(11,6)  === prq.io.deq.vaddr(11,6)
  same_page   := pref_addr(33,6)  === cand_addr(33,6)

  when(state === s_idle)
  {
    when(init_prefetch && same_page && !same_cl)
    {
      state := s_prefetch
      pref_addr_r := pref_addr
    }
  }.elsewhen(state === s_prefetch)
  {
    when(io.mem.req.fire()){
      state := s_idle
    }
  }

  io.mem.req.valid     := state === s_prefetch
  io.mem.req.bits.tag  := 1.U
  // TODO may use M_PRF instead
  // XLR -> INTENT TO WRITE BECAUSE WHY NOT
  io.mem.req.bits.cmd  := M_PFR // M_XRD
  io.mem.req.bits.typ  := MT_WU
  io.mem.req.bits.phys := false.B
  io.mem.req.bits.addr := pref_addr_r << 6.U
  io.mem.req.bits.isLookup := false.B
  io.mem.invalidate_lr := false.B
  // Assuming data width here, might not be correct but should not matter
  io.mem.s1_data.data := UInt(0, 65.W)
  io.mem.s1_kill := false.B

  io.debug  := (state === s_prefetch) && io.mem.req.ready
  io.debug2 := (state === s_idle) && init_prefetch && !(same_page && !same_cl)
}

class StridePrefetcher(albSize: Int = 32, atomGranularity: Int = 20)(implicit p: Parameters) extends LazyRoCC {
  override lazy val module = new StridePrefetcherModule(this, albSize, atomGranularity)
  override val atlNode = TLClientNode(Seq(TLClientPortParameters(Seq(TLClientParameters("StreamPrefetcher")))))
}

class StridePrefetcherModule (outer: StridePrefetcher,
  albSize: Int = 32, atomGranularity: Int = 9) (implicit p: Parameters)
  extends LazyRoCCModule(outer){

  val (tl_out, edgesOut) = outer.atlNode.out(0)
  implicit val edge = edgesOut
  val tlb_wrapper = Module(new AtomTLBWrapper)
  val ctrl = Module(new AtomAddressMapController(atomGranularity,false,true))
  val pref = Module(new SimpleStridePrefetcher())

  // RoCC related connections
  ctrl.io.cmd                 <>  io.cmd
  io.resp                     <>  ctrl.io.resp
  io.interrupt := ctrl.io.interrupt
  io.busy := ctrl.io.busy

  // connect modueles to the TLB they are sharing
  tlb_wrapper.io.amu          <>  ctrl.io.tlb
  tlb_wrapper.io.amu_status   :=  ctrl.io.mstatus
  tlb_wrapper.io.pref         <>  DontCare
  // tlb_wrapper.io.pref_status  :=  pref.io.status
  io.ptw.head                 <>  tlb_wrapper.io.ptw

  // bank memory ifaces
  io.mem                      <>  ctrl.io.mem
  io.mem_pref                 <>  pref.io.mem

  // snoop core's memory requests
  pref.io.core_snoop          <>  io.core_snoop

  // Connect AST and PAT to prefetcher
  ctrl.io.pref_pat_addr := DontCare
  ctrl.io.pref_ast_addr := DontCare

  io.core_snoop.dbg2   := pref.io.debug2
  io.core_snoop.dbg1   := pref.io.debug
  io.core_snoop.dbg3   := false.B
  io.core_snoop.dbg4   := false.B
}
