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

// We may need to share the readport
// or this might get huge
class PrivateAttributeTable (implicit p: Parameters) extends Module {
  val io = IO(new Bundle {
    val wdata = Input(UInt(32.W))
    val attindex = Input(UInt(4.W))
    val wen   =  Input(Bool())
    val ren   =  Input(Bool())
    val addr = Input(UInt(8.W))
    val atom_prim = Output(UInt(32.W))
    val addr_pref = Input(UInt(8.W))
    val atom_pref = Output(UInt(512.W))
  })
  val tableSize = 256
  val atomBytes = 64
  val atomBeats = 4
  val atomBits  = 32

  val wr_mask = Vec((1.U << io.attindex).toBools)
  val wr_data = Wire(Vec(atomBytes/atomBeats, UInt(atomBits.W)))
  for (i <- 0 until atomBytes/atomBeats){
    wr_data(i) := io.wdata
  }

  val pat = Mem(tableSize, Vec(atomBytes/atomBeats, UInt(atomBits.W)))
  //val pat = RegInit(Vec.fill(tableSize) {Vec(Seq.fill(atomBytes/atomBeats)(0.U(atomBits.W)))})

  //val pat = RegInit(Vec(Seq.fill(tableSize)(0.U(512.W))))
  //def access(addr: UInt, offset: UInt) = pat(~addr)(31.U+offset<<5.U,offset<<5.U)
  def access(addr: UInt) = pat(addr).asUInt()

  val out = Reg(UInt(512.W))

  val debugSig1 = RegNext(io.wen)


  when(io.wen) { // If write enable and activate -> write activation
    // TODO make it clear that "fatom" does not work anymore
    pat.write(io.addr, wr_data, wr_mask)
    //pat(io.addr)(io.attindex) := io.wdata 
    printf("Writing to PAT --- aid:0x%x off:0x%x attr:0x%x\n", io.addr, io.attindex, io.wdata)
  }
  when (debugSig1) {
    for(i <- 0 until tableSize){
      printf("Entry%d: data:%x\n", i.U, pat(i.U).asUInt)
    }
  }

  //when(io.ren)
  //{
    //out := access(io.addr)
    out := pat.read(io.addr).asUInt
  //}

  io.atom_pref := pat.read(io.addr_pref).asUInt
  io.atom_prim := out
}



class AtomAddressMapRegACR(implicit p: Parameters) extends Module {
  val io = IO(new Bundle {
    val wen    = Input(Bool())
    val wdata  = Input(UInt(32.W))
    val waddr  = Input(UInt(4.W))
    val clear  = Input(Bool())
    val len    = Output(UInt(32.W))
    val stride = Output(UInt(32.W))
    val rowCnt = Output(UInt(32.W))
    val acr    = Output(UInt(32.W))
    val pat_va    = Output(UInt(32.W))
  })

  val RegACR    = RegInit(0.U(32.W))
  val RegLen    = RegInit(0.U(32.W))
  val RegStride = RegInit(0.U(32.W))
  val RegRowCnt = RegInit(0.U(32.W))
  val RegPat    = RegInit(0.U(32.W)) // Reg for PAT Address

  when(io.clear)
  {
    RegACR := 0.U
  }

  when(io.wen && io.waddr === 0.U)
  {
    RegACR := io.wdata
    printf("Writing to ACR, %d\n", io.wdata)
  }

  when(io.wen && io.waddr === 1.U)
  {
    RegLen := io.wdata
  }

  when(io.wen && io.waddr === 2.U)
  {
    RegStride := io.wdata
  }

  when(io.wen && io.waddr === 3.U)
  {
    RegRowCnt := io.wdata
  }

/*
  when(io.wen && io.waddr === 4.U)
  {
    RegPat := io.wdata

  }
*/


  io.acr    := RegACR
  io.len    := RegLen
  io.stride := RegStride
  io.rowCnt := RegRowCnt
  io.pat_va := RegPat    // Register for the PAT address

}



class AtomStatusTable (implicit p: Parameters) extends Module {
  val io = IO(new Bundle {
    val AD    = Input(Bool())
    val wen   = Input(Bool())
    val waddr = Input(UInt(8.W))
    val raddr = Input(UInt(8.W))
    val stat  = Output(Bool())

    val pref_addr = Input(UInt(8.W))
    val pref_status = Output(Bool())
  })
  val tableSize = 256
  private val atomStatusTable = RegInit(Vec(Seq.fill(tableSize)(0.U(1.W))))
  private def access(addr: UInt) = atomStatusTable(~addr)

  when(io.wen && io.AD) { // If write enable and activate -> write activation
    access(io.waddr) := 1.U(1.W)
  }

  when(io.wen && !io.AD) {
    access(io.waddr) := 0.U(1.W)
  }

  io.stat := access(io.raddr)
  io.pref_status := access(io.pref_addr)

  when(io.wen) { // If write enable and activate -> write activation
    // TODO make it clear that "fatom" does not work anymore
    printf("Writing to AST --- aid:0x%x attr:0x%x\n", io.waddr, io.AD)
  }
  when (RegNext(io.wen)) {
    for(i <- 0 until tableSize){
      printf("Entry%d: data:%x\n", i.U, atomStatusTable(i.U).asUInt)
    }
  }
}

class AtomAddressMapController (val atomGranularity: Int = 9, isPhysical: Boolean = false, isDummy: Boolean = false) 
(implicit p: Parameters, edge: TLEdgeOut) extends Module {
  val io = IO(new Bundle {
    val cmd = Flipped(Decoupled(new RoCCCommand)) //Atom cmd

    val resp = Decoupled(new RoCCResponse)
    val mem = new HellaCacheIO
    val busy = Output(Bool())
    val interrupt = Output(Bool())
    val tlb = new FrontendTLBIO
    val mstatus = Output(new MStatus)

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

  val n = 4
  val cmd = Queue(io.cmd)
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
  
  val is_bc_load        = (inst.funct === 20.U)
  val is_bc_store       = (inst.funct === 21.U)
  val is_bc_atom_select = (inst.funct === 22.U)

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


  val (s_idle :: s_translate :: s_fillpat :: s_fillpat_single :: s_readpat :: s_load_pat ::  s_send_pat_cache :: s_wait :: s_write :: s_finish :: Nil) = Enum(10)
  val state = RegInit(s_idle)


  val pat = Module (new PrivateAttributeTable())

  pat.io.addr_pref := io.pref_pat_addr
  io.pref_pat_atom := pat.io.atom_pref

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


  when(cmd.fire() && (is_fatom) && ((state === s_idle) && !isDummy.B))
  {
    printf("State change from IDLE to FILL_CACHE \n")
    printf("-- CMD (%d)  ", state)
    printf("v:%d  ", cmd.valid)
    printf("r:%d  ", cmd.ready)
    printf("b:%d  ", io.busy)
    printf("l:%d  ", acr_reg.io.len)
    printf("a:%d  ", acr_reg.io.acr)
    printf("rs1:%d  ", cmd.bits.rs1)
    printf("rs2:%d  ", cmd.bits.rs2)
    //printf("rd:%d  ", cmd.bits.rd)
    printf("inst:%d \n ", cmd.bits.inst.funct)
    fill_pat_address:= cmd.bits.rs1
    n_atoms:= cmd.bits.rs2
    state := s_fillpat
    pat_counter := 0.U
//    verbose := true.B

  }
   when((state === s_fillpat))
  {

    printf("Number of Atoms: %d\n", pat_counter)
    printf("Fill pat address: %d\n", fill_pat_address)
    state := s_readpat
    printf("============ MEM REQUEST ========== \n")
    printf("io.mem.req.valid := %d \n",io.mem.req.valid)
    printf("io.mem.req.bits.addr := %d\n",io.mem.req.bits.addr)
    printf("io.mem.req.bits.tag :=  %d\n",io.mem.req.bits.tag)
    printf(" io.mem.req.bits.cmd :=  %d\n",io.mem.req.bits.cmd)
    printf(" io.mem.req.bits.typ :=  %d\n",io.mem.req.bits.typ)
    printf(" io.mem.req.bits.data :=  %d\n",io.mem.req.bits.data)
    printf(" io.mem.req.bits.phys := %d\n",io.mem.req.bits.phys)
    printf("===============================================\n")
    mem_wen := true.B
  }

  pat.io.wen := ((state === s_readpat) && io.mem.resp.valid ) || (state === s_fillpat_single)
  pat.io.addr := Mux((state === s_fillpat_single),atom_id,io.mem.resp.bits.data(7,0)) //not sure
  pat.io.wdata := Mux((state === s_fillpat_single),attribute,io.mem.resp.bits.data(31,8)) //not sure
  pat.io.ren := (state === s_send_pat_cache) && io.mem.req.fire() || state === s_load_pat
  pat.io.attindex := atomoffset

  when(state === s_readpat && io.mem.resp.valid )
  {

        printf("============== READ_PAT STATE ==============\n")
        printf("Data from memory: %d\n",io.mem.resp.bits.data)
        printf( "Pat_counter: %d\n", pat_counter )
        printf("===========================================\n")

        when ( pat_counter === (n_atoms ))
        {
              state:= s_finish
              pat_counter := 1.U

        }
        .otherwise {
              fill_pat_address := fill_pat_address + 4.U
              mem_wen := true.B
        }


  }


  when(state === s_load_pat){
      state := s_send_pat_cache
      printf( "Pat_counter: %d\n", pat_counter )
      printf("Primitive: %d\n", pat.io.atom_prim)
      mem_wen := true.B

  }

  when(state === s_send_pat_cache && io.mem.resp.valid )
  {

        when ( pat_counter === (n_atoms+1.U) )
        {
              state:= s_finish
        }
        .otherwise {

            printf("============= SEND_PAT_CACHE  STATE ==========\n")
            printf( "Pat_counter: %d\n", pat_counter )
            printf("Primitive: %d\n", pat.io.atom_prim)

            printf("io.mem.req.valid := %d \n",io.mem.req.valid)
            printf("io.mem.req.bits.addr := %d\n",io.mem.req.bits.addr)
            printf("io.mem.req.bits.tag :=  %d\n",io.mem.req.bits.tag)
            printf(" io.mem.req.bits.cmd :=  %d\n",io.mem.req.bits.cmd)
            printf(" io.mem.req.bits.typ :=  %d\n",io.mem.req.bits.typ)
            printf(" io.mem.req.bits.data :=  %d\n",io.mem.s1_data.data)
            printf(" io.mem.req.bits.phys := %d\n",io.mem.req.bits.phys)

            printf(" =============================================\n")

            pat_counter := pat_counter + 1.U
            mem_wen := true.B
        }
  }

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
      printf("rd:%d  ", cmd.bits.inst.rd)
      printf("inst:%d\n", cmd.bits.inst.funct)
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
    printf("State change from TRANSLATE to WRITE\n")
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
  io.interrupt := false.B
  if(isDummy)
  {
    io.busy   := false.B
    cmd.ready := true.B
  }else
  {
    io.busy :=  cmd.valid  || (state =/= s_idle)
    cmd.ready :=
      is_acr_write || is_len_write || // Write can always go through immediately
      is_ast_activate || is_ast_deactivate ||
      is_stride_write || is_rowcnt_write ||
      (is_ast_status && io.resp.ready) ||
      (is_acr_read && io.resp.ready) ||
      (is_stride_read && io.resp.ready) ||
      (is_rowcnt_read && io.resp.ready) ||
      is_acr_clear ||
      (is_len_read && io.resp.ready) ||
      ( (is_amu_map || is_amu_unmap || is_amu_map_2d || is_amu_unmap_2d || is_fatom || is_fatom_select || is_fatom_load) && (state === s_idle ) )
  }

  // Memory Request Interface
  io.mem.req.valid := ((state === s_write) && mem_wen) || ((state === s_readpat) && mem_wen) || ((state === s_send_pat_cache) && mem_wen)
  io.mem.req.bits.addr := Mux((state === s_readpat),fill_pat_address,Mux(state === s_send_pat_cache || state === s_wait,fill_pat_address,amu_vaddr))
  io.mem.req.bits.tag := Mux((state === s_readpat),pat_counter,Mux(state === s_send_pat_cache || state === s_wait, pat_counter,0.U))

  io.mem.req.bits.cmd := Mux((state === s_readpat),M_XRD,Mux((state === s_send_pat_cache || state === s_wait),M_FILL,M_XWR))
  io.mem.req.bits.typ := Mux((state === s_readpat) || (state === s_send_pat_cache || state === s_wait),MT_W,MT_B)
  io.mem.req.bits.data := Mux((is_map || is_map_2d), mem_wdata.asUInt(), Mux(state === s_send_pat_cache ,pat.io.atom_prim,0.U))
  io.mem.req.bits.phys := isPhysical.B
  io.mem.invalidate_lr := false.B
  io.mem.s1_kill := false.B
  io.mem.s1_data.mask := 0.U
  io.mem.s1_data.data := Mux(state === s_send_pat_cache, pat.io.atom_prim, 0.U)
  io.mem.req.bits.isLookup := false.B
  io.mem.req.bits.paddr := 0.U

  when( io.mem.req.fire() && !(state === s_readpat) )
  {
    bytes_left := bytes_left - 1.U
    mem_wen := false.B
  }
  .elsewhen( io.mem.req.fire() && (state === s_readpat) )
  {
    pat_counter := pat_counter + 1.U
    mem_wen := false.B

  }


  when( io.mem.req.fire() && (state === s_send_pat_cache) )
  {
    printf("SEND_PAT_CACHE - Memory request fire\n")
    printf("Pat.io.atom_prim = %d \n", pat.io.atom_prim)
    mem_wen := false.B
  }

  io.resp.valid := (cmd.valid && (is_acr_read || is_len_read || is_stride_read || is_rowcnt_read || is_ast_status))
  io.resp.bits.rd := inst.rd
  io.resp.bits.data := Mux(is_ast_status, mem_atom_status,
            Mux(is_stride_read, acr_reg.io.stride,
            Mux(is_rowcnt_read, acr_reg.io.rowCnt,
            Mux(is_acr_read, acr_reg.io.acr, acr_reg.io.len))))
}

class AtomTLBWrapper(implicit p: Parameters, edge: TLEdgeOut) extends Module{
  val io = IO(new Bundle {
    val ptw         = new TLBPTWIO
    val amu_status  = Input(new MStatus)
    val amu         = Flipped(new FrontendTLBIO)
    // TODO Need to know if we need status here
    // val pref_status = Input(new MStatus)
    val pref        = Flipped(new FrontendTLBIO)
  })

  // One of the requestors is AMU, other one is the prefetcher
  val tlb = Module(new FrontendTLB(2)) //Module(new FrontendTLB(2))
  io.ptw <> tlb.io.ptw

  tlb.io.ptw.status := io.amu_status //Mux(io.amu.req.valid, io.amu_status, io.pref_status)

  tlb.io.clients(0) <> io.amu
  tlb.io.clients(1) <> io.pref
}

class AtomAddressMapAccelerator(albSize: Int = 32, enablePrefetch: Boolean = true, lookupOnly: Boolean = false, atomGranularity: Int = 20)(implicit p: Parameters) extends LazyRoCC {
  override lazy val module = new AtomAddressMapAcceleratorModule(this, albSize, enablePrefetch, lookupOnly, atomGranularity)
  override val atlNode = TLClientNode(Seq(TLClientPortParameters(Seq(TLClientParameters("AtomAddressMapAccelerator")))))
}

class AtomAddressMapAcceleratorModule (outer: AtomAddressMapAccelerator,
  albSize: Int = 32, enablePrefetch: Boolean = true, lookupOnly: Boolean = false, atomGranularity: Int = 9) (implicit p: Parameters)
  extends LazyRoCCModule(outer){

  val (tl_out, edgesOut) = outer.atlNode.out(0)
  implicit val edge = edgesOut
  val tlb_wrapper = Module(new AtomTLBWrapper)
  val ctrl = Module(new AtomAddressMapController(atomGranularity))
  val pref = Module(new AtomStridePrefetcher(enablePrefetch, lookupOnly))

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

  if(albSize > 0)
  {
    val lookup = Module(new AtomLookUpUnit(atomGranularity,albSize))
    io.mem_amulookup            <>  lookup.io.mem
    // Connect AMU_LOOKUP module to the prefetcher
    // and supply it with acr
    lookup.io.acrbase           := ctrl.io.acr
    lookup.io.lookup            <> pref.io.amu_lookup
    io.core_snoop.dbg2   := lookup.io.dbg2
    io.core_snoop.dbg1   := lookup.io.dbg1
    io.core_snoop.dbg3   := pref.io.dbg1
    io.core_snoop.dbg4   := pref.io.dbg2
  }
  else
  {
    val lookup = Module(new AtomLookUpUnitNoALB(atomGranularity))
    io.mem_amulookup            <>  lookup.io.mem
    // Connect AMU_LOOKUP module to the prefetcher
    // and supply it with acr
    lookup.io.acrbase           := ctrl.io.acr
    lookup.io.lookup            <> pref.io.amu_lookup
    io.core_snoop.dbg2   := lookup.io.dbg2
    io.core_snoop.dbg1   := lookup.io.dbg1
    io.core_snoop.dbg3   := pref.io.dbg1
    io.core_snoop.dbg4   := pref.io.dbg2
  }

}

class AtomController(atomGranularity: Int = 20, isPhysical: Boolean = false, isDummy: Boolean = false)(implicit p: Parameters) extends LazyRoCC {
  override lazy val module = new AtomControllerModule(this, atomGranularity, isPhysical, isDummy)
  override val atlNode = TLClientNode(Seq(TLClientPortParameters(Seq(TLClientParameters("AtomCtrlr")))))
}

class AtomControllerModule (outer: AtomController,
  atomGranularity: Int = 9, isPhysical: Boolean = false, isDummy: Boolean = false) (implicit p: Parameters)
  extends LazyRoCCModule(outer){

  val (tl_out, edgesOut) = outer.atlNode.out(0)
  implicit val edge = edgesOut
  val tlb_wrapper = Module(new AtomTLBWrapper)
  val ctrl = Module(new AtomAddressMapController(atomGranularity,isPhysical,isDummy))

  // RoCC related connections
  ctrl.io.cmd                 <>  io.cmd
  io.resp                     <>  ctrl.io.resp
  io.interrupt                := ctrl.io.interrupt
  io.busy                     := ctrl.io.busy

  // connect modueles to the TLB they are sharing
  tlb_wrapper.io.amu          <>  ctrl.io.tlb
  tlb_wrapper.io.amu_status   :=  ctrl.io.mstatus
  tlb_wrapper.io.pref         <>  DontCare
  // tlb_wrapper.io.pref_status  :=  pref.io.status
  io.ptw.head                 <>  tlb_wrapper.io.ptw

  // bank memory ifaces
  io.mem                      <>  ctrl.io.mem
  io.mem_pref                 <>  DontCare

  ctrl.io.pref_pat_addr       := DontCare
  ctrl.io.pref_ast_addr       := DontCare

}
