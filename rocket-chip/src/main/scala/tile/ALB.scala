package tile

import chisel3._
import chisel3.util._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.rocket._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.tile._
import freechips.rocketchip.diplomacy.{LazyModule, LazyModuleImp, IdRange}

class ALBReq extends Bundle{
  val wen = Bool()
  val rden = Bool()
  val paddr = UInt(40.W)
  val atom_id = UInt(8.W)
}

class Buffed_ALBReq extends Bundle{
  val wen = Bool()
  val rden = Bool()
  val paddr_rd = UInt(40.W)
  val paddr_wr = UInt(40.W)
  val atom_id = UInt(8.W)
}

class ALBResp extends Bundle{
  // val valid = Bool() // We don't need this
  val miss = Bool()
  val atom_id = UInt(8.W)
  val debug = Bool()
}

/* Direct mapped atom cache
 * Caches alb_size atoms
 */
class ALB(val atomGranularity: Int = 9, val alb_size: Int = 16)(implicit p: Parameters) extends Module{
  val io = IO(new Bundle {
    val req = Input(new ALBReq())
    val resp = Output(new ALBResp())
  })

  val lg_alb_size = log2Up(alb_size)

  // Our tag and data store arrays
  val tags   = Reg(Vec(alb_size, UInt((39-atomGranularity-lg_alb_size).W)))
  val atoms  = Reg(Vec(alb_size, UInt(8.W)))

  // extract tag and idx from given address
  val rw_tag = io.req.paddr(39,lg_alb_size+atomGranularity)
  val rw_idx = io.req.paddr(atomGranularity+lg_alb_size-1,atomGranularity)

  // read out atoms and tags
  val rd_atom = atoms(rw_idx)
  val rd_tag  = tags(rw_idx)

  val tag_match = rd_tag === rw_tag

  // Update tag and data stores with new values if wen is set
  tags(rw_idx)  := Mux(io.req.wen, rw_tag, rd_tag)
  atoms(rw_idx) := Mux(io.req.wen, io.req.atom_id, rd_atom)

  io.resp.miss    := io.req.rden && !tag_match
  io.resp.atom_id := rd_atom
}

/* Fully associative atom cache
 * Caches alb_size atoms
 */
class ALB_FA(val atomGranularity: Int = 9, val alb_size: Int = 8)(implicit p: Parameters) extends Module{
  val io = IO(new Bundle {
    val req = Input(new ALBReq())
    val resp = Output(new ALBResp())
  })

  val DEBUG_ALB = false

  println("ALB " + atomGranularity + " " + alb_size)

  val lg_alb_size      = log2Up(alb_size)

  // Our tag and data store arrays
  val tags   = Reg(Vec(alb_size, UInt((39-atomGranularity).W)))
  val atoms  = Reg(Vec(alb_size, UInt(8.W)))
  val valids = RegInit(Vec.fill(alb_size) { false.B })
  val mru    = RegInit(UInt(0,lg_alb_size.W))

  // extract tag and idx from given address
  val rw_tag = io.req.paddr(39,atomGranularity)

  // tag match logic
  val tag_hits = Wire(Vec(alb_size, Bool()))
  for(i <- 0 until alb_size){
    tag_hits(i) := (rw_tag === tags(i)) && valids(i)
  }
  val tag_match     = PopCount(tag_hits.asUInt) === 1.U
  assert(PopCount(tag_hits.asUInt)<2.U, "ALB reduntant tags")
  val match_idx     = PriorityEncoder(tag_hits.asUInt)
  mru              := Mux(tag_match, match_idx, mru)
  val rd_atom       = atoms(match_idx)

  // Eviction&replacement
  // try to find a non-valid (empty) entry first
  var empty = (~valids.asUInt).orR
  var empty_idx = PriorityEncoder(~valids.asUInt)
  // update the lfsr with each miss
  val evict_rand_idx = LFSR16(io.resp.miss && ~empty)(lg_alb_size-1,0)
  // Do not evict the most recently used atom
  val evict_idx = Mux(evict_rand_idx === mru, evict_rand_idx + 1.U, evict_rand_idx)
  // Evict if all entries valid
  when(io.resp.miss && ~empty){
    valids(evict_idx) := false.B
  }

  when(io.req.wen){
    atoms(empty_idx)  := io.req.atom_id
    valids(empty_idx) := true.B
    tags(empty_idx)   := rw_tag
  }

  if(DEBUG_ALB){
    when(io.resp.miss){
      printf("ALB Miss - addr 0x%x\n", io.req.paddr)
      for(i <- 0 until alb_size){
        printf("Entry%d: tag:0x%x valid:%d\n",i.U, tags(i.U), valids(i.U))
      }
    }
  }

  // if there are redundant hits during runtime
  io.resp.debug   := (PopCount(tag_hits.asUInt) > 1.U) && io.req.rden

  io.resp.miss    := io.req.rden && !tag_match
  io.resp.atom_id := rd_atom
}

/* Fully associative atom cache
 * Caches alb_size atoms
 */
class Buffed_ALB_FA(val atomGranularity: Int = 9, val alb_size: Int = 8)(implicit p: Parameters) extends Module{
  val io = IO(new Bundle {
    val req = Input(new Buffed_ALBReq())
    val resp = Output(new ALBResp())
    val map_update_addr   = Input(UInt(40.W))
    val map_update_valid  = Input(Bool())
    val map_update_id     = Input(UInt(8.W)) 
  })

  val DEBUG_ALB = true

  println("ALB " + atomGranularity + " " + alb_size)

  val lg_alb_size      = log2Up(alb_size)

  // Our tag and data store arrays
  val tags        = Reg(Vec(alb_size, UInt((39-atomGranularity).W)))
  val atoms       = Reg(Vec(alb_size, UInt(8.W)))
  val valids      = RegInit(Vec.fill(alb_size) { false.B })
  val mru         = RegInit(UInt(0,lg_alb_size.W))

  // extract tag and idx from given address
  val rd_tag = Mux(io.map_update_valid, io.map_update_addr(39, atomGranularity), io.req.paddr_rd(39,atomGranularity))
  val wr_tag = io.req.paddr_wr(39,atomGranularity)

  // tag match logic
  val tag_hits = Wire(Vec(alb_size, Bool()))
  for(i <- 0 until alb_size){
    tag_hits(i) := (rd_tag === tags(i)) && valids(i)
  }
  val bypass_match  = (rd_tag === wr_tag) && io.req.wen
  val tag_match     = ((PopCount(tag_hits.asUInt) === 1.U) || bypass_match) && io.req.rden
  assert(PopCount(tag_hits.asUInt)<2.U, "ALB reduntant tags")
  when(bypass_match)
  {
    assert(PopCount(tag_hits.asUInt)<1.U, "Bypass and array simultaneous hit")
  }
  val match_idx     = PriorityEncoder(tag_hits.asUInt)
  val rd_atom       = Mux(bypass_match, io.req.atom_id, atoms(match_idx))

  // Eviction&replacement
  // try to find a non-valid (empty) and non-writeback entry first
  var empty = (~valids.asUInt).orR
  var empty_idx = PriorityEncoder(~valids.asUInt)
  // update the lfsr with each miss
  // val evict_rand_idx = LFSR16(io.req.wen && !empty)(lg_alb_size-1,0)
  val evict_rand_idx = RegInit(UInt(0,lg_alb_size.W))
  evict_rand_idx := evict_rand_idx + 1.U
  // Do not evict the most recently used atom
  val evict_idx = Mux(evict_rand_idx === mru, evict_rand_idx + 1.U, evict_rand_idx)
  mru          := Mux(bypass_match, evict_idx, Mux(tag_match, match_idx, mru))
  // Evict if all entries valid

  //printf("Evictidx:%d\n",evict_rand_idx)

  when(io.req.wen && !empty){
    valids(evict_idx)     := true.B
    tags(evict_idx)       := wr_tag
    atoms(evict_idx)      := io.req.atom_id
  }

  when(io.req.wen && empty){
    atoms(empty_idx)  := io.req.atom_id
    valids(empty_idx) := true.B
    tags(empty_idx)   := wr_tag
  }

  when(io.map_update_valid){
    when((PopCount(tag_hits.asUInt) === 1.U) && !bypass_match){
      atoms(match_idx) := io.map_update_id
    }
  }

  if(DEBUG_ALB){
    when(io.map_update_valid){
      printf("0x%x %d %d %d\n", rd_tag, (PopCount(tag_hits.asUInt) === 1.U), match_idx, io.map_update_id)
      for(i <- 0 until alb_size){
        printf("Entry%d: tag:0x%x valid:%d aid:%d\n",i.U, tags(i.U), valids(i.U), atoms(i.U))
      }
    }

    when(io.resp.miss || io.req.wen){
      printf("ALB Miss or WB - raddr 0x%x waddr 0x%x - evict idx %d empty idx %d\n", io.req.paddr_rd, io.req.paddr_wr, evict_idx, empty_idx)
      for(i <- 0 until alb_size){
        printf("Entry%d: tag:0x%x valid:%d aid:%d\n",i.U, tags(i.U), valids(i.U), atoms(i.U))
      }
    }
  }

  // if there are redundant hits during runtime
  io.resp.debug   := (PopCount(tag_hits.asUInt) > 1.U) && io.req.rden

  io.resp.miss    := io.req.rden && !tag_match
  io.resp.atom_id := rd_atom
}

class Buffed_ALB_RANDOM(val atomGranularity: Int = 9, val alb_size: Int = 8)(implicit p: Parameters) extends Module{
  val io = IO(new Bundle {
    val req = Input(new Buffed_ALBReq())
    val resp = Output(new ALBResp())
  })
  val hit_or_miss  = LFSR16(io.req.rden)(3,0)
  val i_guess_they = hit_or_miss > 13.U 
  io.resp.miss    := i_guess_they && io.req.rden
  io.resp.atom_id := 0.U
  io.resp.debug   := false.B
}
