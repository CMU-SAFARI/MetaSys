// package tile


import chisel3._
import chisel3.util._
import freechips.rocketchip.config.{Field, Parameters}
import freechips.rocketchip.util.ParameterizedBundle
import freechips.rocketchip.subsystem._
import freechips.rocketchip.diplomacy.{LazyModule, LazyModuleImp, IdRange}
import freechips.rocketchip.tilelink._
import freechips.rocketchip.util._



case class DmaConfig(
                      nTrackers: Int = 1,
                      nDmaXacts: Int = 4,
                      nMemXacts: Int = 4,
                      pipelineDepth: Int = 16)

case object DmaKey extends Field[DmaConfig]

trait HasDmaParameters {
  implicit val p: Parameters
  val dmaExternal = p(DmaKey)
  val nDmaTrackers = dmaExternal.nTrackers
  val nDmaXacts = dmaExternal.nDmaXacts
  val nDmaTrackerMemXacts = dmaExternal.nMemXacts
  val dmaXactIdBits = log2Up(nDmaXacts)
  val pipelineDepth = dmaExternal.pipelineDepth
  val pipelineIdxBits = log2Up(pipelineDepth)
  val pipelineCountBits = log2Up(pipelineDepth+1)
  val dmaStatusBits = 3
  val addrBits = 32
  val blockBytes = p(CacheBlockBytes)
  val blockOffset = log2Ceil(blockBytes)
  val blockAddrBits = addrBits - blockOffset
}

