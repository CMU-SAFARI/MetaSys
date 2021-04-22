package tile
import chisel3._
import chisel3.util._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.rocket._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.tile._
import freechips.rocketchip.diplomacy.{LazyModule, LazyModuleImp, IdRange}

class AMULookUpReq extends Bundle{
  val valid = Input(Bool())
  val ready = Output(Bool())
  val paddr = Input(UInt(40.W))
}

class AMULookUpResp extends Bundle{
  val valid = Output(Bool())
  val miss = Output(Bool())
  val atom_id = Output(UInt(8.W))
  val xcpt = Output(Bool())
}

class AMULookUpIO extends Bundle{
  val req  = new AMULookUpReq
  val resp = new AMULookUpResp
}

/**
  * 
  */
class AtomLookUpUnit(val atomGranularity: Int = 9, albSize: Int = 32, isPhysical: Boolean = false)(implicit p: Parameters) extends Module{
  val io = IO(new Bundle{
    val lookup = new AMULookUpIO
    val mem = new HellaCacheIO
    val acrbase = Input(UInt(32.W))
    val dbg1 = Output(Bool())
    val dbg2  = Output(Bool())
    val dbg3  = Output(Bool())
    val phybase = Input(UInt(32.W))
  })

  val DEBUG_AMU = false

  io.mem            <> DontCare
  val (s_idle :: s_requestalb :: s_requestmem :: s_writealb :: s_respond :: Nil) = Enum(5)
  val state = RegInit(s_idle)

  val alb     = Module(new ALB_FA(atomGranularity,albSize))
  val albreq  = alb.io.req
  val albresp = alb.io.resp

  val req_addr = RegEnable(io.lookup.req.paddr, state === s_idle)

  albreq.paddr     := Mux(state === s_writealb, req_addr, io.lookup.req.paddr)
  albreq.rden      := state === s_idle && io.lookup.req.valid
  albreq.wen       := state === s_writealb && io.mem.resp.valid
  albreq.atom_id   := io.lookup.resp.atom_id

  val xcpt       = (RegNext(RegNext(io.mem.req.fire())) && io.mem.s2_xcpt.asUInt.orR)
  val resp_valid = io.mem.resp.valid
  val nackd      = io.mem.s2_nack

  // assert valid when ALB does not miss, or we get a response from memory
  io.lookup.resp.valid        := RegNext(io.lookup.req.valid && !albresp.miss) || (io.mem.resp.valid && state === s_writealb)

  io.lookup.resp.xcpt         := (state === s_writealb && xcpt) || io.acrbase.orR === UInt(0)
  io.lookup.resp.atom_id      := Mux(RegNext(state === s_idle), RegNext(albresp.atom_id), io.mem.resp.bits.data(7,0)) //todo: can be changed later
  io.lookup.resp.miss       := RegNext(albresp.miss) // Delay ALB miss by one cycle so requestor can make use of it

  io.lookup.req.ready         := (state === s_idle)

  io.dbg2  := albreq.rden && !albresp.miss
  io.dbg1  := albresp.miss
  io.dbg3  := albresp.debug

  io.mem.req.valid     := state === s_requestmem
  io.mem.req.bits.tag  := UInt(0)
  io.mem.req.bits.cmd  := M_XRD // read only should be enough
  io.mem.req.bits.typ  := MT_B
  io.mem.req.bits.phys := isPhysical.B
  io.mem.req.bits.addr := (req_addr >> atomGranularity) + io.acrbase //(req_addr >> 9) + io.acrbase
  io.mem.req.bits.isLookup := false.B
  io.mem.invalidate_lr := false.B
  // Assuming data width here, might not be correct but should not matter
  io.mem.s1_data.data := UInt(0, 65.W)
  io.mem.s1_kill := false.B

  if(DEBUG_AMU){
    printf("---AMU---\nSTATE   --- %d\n", state)
    printf("MEMREQ  --- V: %d R: %d\n", io.mem.req.valid, io.mem.req.ready)
    printf("MEMRESP --- V: %d nack: %d xcpt: %d\n", io.mem.resp.valid, io.mem.s2_nack, io.mem.s2_xcpt.asUInt.orR)
  }

  when (state === s_idle)
  {
    when(io.acrbase.orR === UInt(0))
    {
      // Dont even access memory when ACR is not loaded, this way
      // we won't prefetch until atoms are written to PAT hopefully
      state := s_idle
    }.elsewhen(io.lookup.req.valid)
    {
      when (albresp.miss){
        state := s_requestmem
      }.otherwise{
        // Requestor will get it's atom id in the next cycle
        state := s_idle
      }
    }
  }.elsewhen (state === s_requestmem)
  {
    if(DEBUG_AMU){
      printf("AMU Memory Lookup\n")
    }
    when(io.mem.req.fire()){
      state := s_writealb
    }
  }.elsewhen (state === s_writealb)
  {
    when(resp_valid || xcpt){
      state := s_idle
    }.elsewhen(nackd){
      state := s_requestmem
    }
  }
}

class AtomLookUpUnitNoALB (val atomGranularity: Int = 9)(implicit p: Parameters) extends Module{
  val io = IO(new Bundle{
    val lookup = new AMULookUpIO
    val mem = new HellaCacheIO
    val acrbase = Input(UInt(32.W))
    val dbg1 = Output(Bool())
    val dbg2  = Output(Bool())
  })

  val DEBUG_AMU = false

  io.mem            <> DontCare
  val (s_idle :: s_requestmem :: s_writealb :: s_respond :: Nil) = Enum(4)
  val state = RegInit(s_idle)

  val req_addr = RegEnable(io.lookup.req.paddr, state === s_idle)

  val xcpt       = (RegNext(RegNext(io.mem.req.fire())) && io.mem.s2_xcpt.asUInt.orR)
  val resp_valid = io.mem.resp.valid
  val nackd      = io.mem.s2_nack

  // assert valid when ALB does not miss, or we got a response from memory
  io.lookup.resp.valid        := (io.mem.resp.valid && state === s_writealb)
  io.lookup.resp.xcpt         := (state === s_writealb && xcpt) || io.acrbase.orR === UInt(0)
  io.lookup.resp.atom_id      := io.mem.resp.bits.data(7,0) //todo: can be changed later
  io.lookup.resp.miss         := true.B// Delay ALB miss by one cycle so requestor can make use of it

  io.lookup.req.ready         := (state === s_idle)

  io.dbg2  := false.B
  io.dbg1  := false.B

  io.mem.req.valid     := state === s_requestmem
  io.mem.req.bits.tag  := UInt(0)
  io.mem.req.bits.cmd  := M_XRD // read only should be enough
  io.mem.req.bits.typ  := MT_B
  io.mem.req.bits.phys := false.B
  io.mem.req.bits.addr := (req_addr >> atomGranularity) + io.acrbase //(req_addr >> 9) + io.acrbase
  io.mem.req.bits.isLookup := false.B
  io.mem.invalidate_lr := false.B
  // Assuming data width here, might not be correct but should not matter
  io.mem.s1_data.data := UInt(0, 65.W)
  io.mem.s1_kill := false.B

  if(DEBUG_AMU){
    printf("---AMU---\nSTATE   --- %d\n", state)
    printf("MEMREQ  --- V: %d R: %d\n", io.mem.req.valid, io.mem.req.ready)
    printf("MEMRESP --- V: %d nack: %d xcpt: %d\n", io.mem.resp.valid, io.mem.s2_nack, io.mem.s2_xcpt.asUInt.orR)
  }

  when (state === s_idle)
  {
    when(io.acrbase.orR === UInt(0))
    {
      // Dont even access memory when ACR is not loaded, this way
      // we won't prefetch until atoms are written to PAT hopefully
      state := s_idle
    }.elsewhen(io.lookup.req.valid)
    {
      state := s_requestmem
    }
  }.elsewhen (state === s_requestmem)
  {
    if(DEBUG_AMU){
      printf("AMU Memory Lookup\n")
    }
    when(io.mem.req.fire()){
      state := s_writealb
    }
  }.elsewhen (state === s_writealb)
  {
    when(resp_valid || xcpt){
      state := s_idle
    }.elsewhen(nackd){
      state := s_requestmem
    }
  }
}

/** What does it take to write a pipelined ALU?
  * - 0.5 L of tap water + 2x half a cup of coffee (caffeinless) +
  *        a lunch break + half a cup of coffee + 3 sips of tap water
  *       + an espresso shot + another bottle of tap water + at least 24 hours
  * NOTE: ALU as in AtomLookupUnit not ArithmeticLogicUnit
  */
class BuffedALU(val atomGranularity: Int = 9, albSize: Int = 32, isPhysical: Boolean = false)
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
    //printf("S0- V:%d PA:0x%x ALBMiss: %d\n", s0_valid, s0_addr, s0_miss)
    //printf("S1- V:%d PA:0x%x MemAddr: 0x%x ADV:%d\n", s1_valid, s1_addr, io.mem.req.bits.addr, s1_advance)
    //printf("S2- V:%d PA:0x%x\n", s2_valid, s2_addr)
    //printf("S3- V:%d PA:0x%x xcpt:%d nack:%d ADV:%d\n", s3_valid, s3_addr, xcpt, nackd, s3_advance)
    //printf("S4- V:%d PA:0x%x AID: %d\n", s4_valid, s4_addr, s4_atom_id)
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

class AMUDualALBLookUpReq extends Bundle{
  val valid = Input(Bool())
  val ready = Output(Bool())
  val paddr = Input(UInt(40.W))
  val moduleid = Input(Bool())
}

class AMUDualALBLookUpIO extends Bundle{
  val req  = new AMUDualALBLookUpReq
  val resp = new AMULookUpResp
}

class BuffedALUDualALB(val atomGranularity: Int = 9, albSize1: Int = 64, albSize2: Int = 64, isPhysical: Boolean = false)
      (implicit p: Parameters) extends Module{
  val io = IO(new Bundle{
    val lookup  = new AMUDualALBLookUpIO
    val mem     = new HellaCacheIO
    val acrbase = Input(UInt(32.W))
    val phybase = Input(UInt(32.W))
    val map_update_addr   = Input(UInt(40.W))
    val map_update_valid  = Input(Bool())
    val map_update_id     = Input(UInt(8.W)) 
    val dbg1 = Output(Bool())
    val dbg2  = Output(Bool())
  })
  val DEBUG_AMU = false

  io.mem            <> DontCare
  io.lookup         <> DontCare

  val alb1     = Module(new Buffed_ALB_FA(atomGranularity,albSize1))
  val alb2     = Module(new Buffed_ALB_FA(atomGranularity,albSize2))
  //val alb     = Module(new Buffed_ALB_RANDOM(atomGranularity,ovralbsize))
  val albreq1  = alb1.io.req
  val albresp1 = alb1.io.resp
  val albreq2  = alb2.io.req
  val albresp2 = alb2.io.resp
  alb1.io.map_update_id := io.map_update_id
  alb1.io.map_update_addr := io.map_update_addr
  alb1.io.map_update_valid := io.map_update_valid
  alb2.io.map_update_id := io.map_update_id
  alb2.io.map_update_addr := io.map_update_addr
  alb2.io.map_update_valid := io.map_update_valid

  val s0_addr     = Wire(UInt(40.W))
  val s1_addr     = Reg(UInt(40.W))
  val s2_addr     = Reg(UInt(40.W))
  val s3_addr     = Reg(UInt(40.W))
  val s0_valid    = WireInit(false.B)
  val s1_valid    = RegInit(false.B)
  val s2_valid    = RegInit(false.B)
  val s3_valid    = RegInit(false.B)
  val s1_mid      = RegInit(false.B)
  val s2_mid      = RegInit(false.B)
  val s3_mid      = RegInit(false.B)
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
  albreq1.paddr_rd       := s0_addr
  albreq2.paddr_rd       := s0_addr
  albreq1.rden           := (s0_valid && (s1_advance || !s1_valid)) && !block_queue &&/*!inv_s0 &&*/ 
                                   !io.map_update_valid && io.lookup.req.moduleid
  albreq2.rden           := (s0_valid && (s1_advance || !s1_valid)) && !block_queue &&/*!inv_s0 &&*/ 
                                   !io.map_update_valid && !io.lookup.req.moduleid        
  s0_miss               := Mux(io.lookup.req.moduleid, albresp1.miss, albresp2.miss)
  io.lookup.req.ready   := (s1_advance || !s1_valid) && !block_queue && !io.map_update_valid
  // ~~~~~~~~~~~~~~~~~~~S1~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // Lookup in AMT which is in main memory, also s0 in D$'s POV when io.mem.req.fire()
  s1_mid                := Mux(s1_advance || !s1_valid, io.lookup.req.moduleid, s1_mid)
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
  s2_mid                := Mux(s3_retry, s3_mid, s1_mid)
  s2_addr               := Mux(s3_retry, s3_addr, s1_addr)
  s2_valid              := Mux(s3_retry, io.mem.req.fire(), s1_advance)
  // ~~~~~~~~~~~~~~~~~~~S3~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // memory responds at this stage, also s2 in D$'s POV
  val xcpt              = io.mem.s2_xcpt.asUInt.orR
  val nackd             = io.mem.s2_nack
  val resp_valid        = io.mem.resp.valid
  val s3_advance        = (resp_valid || xcpt || nackd) && s3_valid
  s3_mid                := Mux(s2_valid, s2_mid, s3_mid)
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
  val s4_mid            = s3_mid
  val s4_valid          = s3_advance && !nackd && !xcpt
  val s4_addr           = s3_addr
  val s4_atom_id        = s3_atom_id

  albreq1.atom_id   := s4_atom_id
  albreq1.paddr_wr  := s4_addr

  albreq2.atom_id   := s4_atom_id
  albreq2.paddr_wr  := s4_addr

  albreq1.wen       := false.B
  albreq2.wen       := false.B

  when(s4_mid)
  {
    albreq1.wen       := s4_valid
  }.otherwise
  {
    albreq2.wen       := s4_valid
  }

  io.lookup.resp.valid    := RegNext(s0_valid && io.lookup.req.ready && !s0_miss) || s4_valid
  io.lookup.resp.miss     := DontCare
  io.lookup.resp.atom_id  := Mux(s4_valid, s4_atom_id, RegNext(albresp1.atom_id))
  io.lookup.resp.xcpt     := (s3_valid && xcpt) || (io.acrbase.orR === UInt(0))

  io.dbg2  := (albreq1.rden && !albresp1.miss) || (albreq2.rden && !albresp2.miss)
  io.dbg1  := (albreq1.rden && albresp1.miss) || (albreq2.rden && albresp2.miss) // albresp.debug
  
  if(DEBUG_AMU){
    printf("S0- V:%d PA:0x%x ALBMiss:%d MID:%d\n", s0_valid, s0_addr, s0_miss, io.lookup.req.moduleid)
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
