// See LICENSE.SiFive for license details.
// See LICENSE.Berkeley for license details.

package freechips.rocketchip.subsystem

import Chisel._
import freechips.rocketchip.config._
import freechips.rocketchip.devices.debug._
import freechips.rocketchip.devices.tilelink._
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.rocket._
import freechips.rocketchip.tile._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.util._
import tile.AtomAddressMapAccelerator
import tile.AtomPrefetcher
import tile.Prefetcher
import tile.PrefetcherBFS
import tile.PrefetcherStreamOnly
import tile.StridePrefetcher
import tile.ALUStressorTop
import tile.ALUDualStressorTop
import tile.AtomController
import tile.BoundsCheckerImpl
import tile.ALUDualStressor2ALBTop

class BaseSubsystemConfig extends Config ((site, here, up) => {
  // Tile parameters
  case PgLevels => if (site(XLen) == 64) 3 /* Sv39 */ else 2 /* Sv32 */
  case XLen => 64 // Applies to all cores
  case MaxHartIdBits => log2Up(site(RocketTilesKey).size)
  case BuildCore => (p: Parameters) => new Rocket()(p)
  // Interconnect parameters
  case SystemBusKey => SystemBusParams(beatBytes = site(XLen)/8, blockBytes = site(CacheBlockBytes))
  case PeripheryBusKey => PeripheryBusParams(beatBytes = site(XLen)/8, blockBytes = site(CacheBlockBytes))
  case MemoryBusKey => MemoryBusParams(beatBytes = site(XLen)/8, blockBytes = site(CacheBlockBytes))
  case FrontBusKey => FrontBusParams(beatBytes = site(XLen)/8, blockBytes = site(CacheBlockBytes))
  // Additional device Parameters
  case ErrorParams => ErrorParams(Seq(AddressSet(0x3000, 0xfff)), maxAtomic=site(XLen)/8, maxTransfer=4096)
  case BootROMParams => BootROMParams(contentFileName = "./bootrom/bootrom.img")
  case DebugModuleParams => DefaultDebugModuleParams(site(XLen))
})

class BaseSubsystemBCConfig extends Config ((site, here, up) => {
  // Tile parameters
  case PgLevels => if (site(XLen) == 64) 3 /* Sv39 */ else 2 /* Sv32 */
  case XLen => 64 // Applies to all cores
  case MaxHartIdBits => log2Up(site(RocketTilesKey).size)
  case BuildCore => (p: Parameters) => new RocketBC()(p)
  // Interconnect parameters
  case SystemBusKey => SystemBusParams(beatBytes = site(XLen)/8, blockBytes = site(CacheBlockBytes))
  case PeripheryBusKey => PeripheryBusParams(beatBytes = site(XLen)/8, blockBytes = site(CacheBlockBytes))
  case MemoryBusKey => MemoryBusParams(beatBytes = site(XLen)/8, blockBytes = site(CacheBlockBytes))
  case FrontBusKey => FrontBusParams(beatBytes = site(XLen)/8, blockBytes = site(CacheBlockBytes))
  // Additional device Parameters
  case ErrorParams => ErrorParams(Seq(AddressSet(0x3000, 0xfff)), maxAtomic=site(XLen)/8, maxTransfer=4096)
  case BootROMParams => BootROMParams(contentFileName = "./bootrom/bootrom.img")
  case DebugModuleParams => DefaultDebugModuleParams(site(XLen))
})

/* Composable partial function Configs to set individual parameters */

class WithNBigCores(n: Int) extends Config((site, here, up) => {
  case RocketTilesKey => {
    val big = RocketTileParams(
      core   = RocketCoreParams(mulDiv = Some(MulDivParams(
        mulUnroll = 8,
        mulEarlyOut = true,
        divEarlyOut = true))),
      dcache = Some(DCacheParams(
        rowBits = site(SystemBusKey).beatBits,
        nMSHRs = 4,
        blockBytes = site(CacheBlockBytes))),
      icache = Some(ICacheParams(
        rowBits = site(SystemBusKey).beatBits,
        blockBytes = site(CacheBlockBytes))))
    List.tabulate(n)(i => big.copy(hartId = i))
  }
})


class CorrectWithNMediumCores(n: Int, bwSlowdown: Int = 20, mshrno: Int = 2) extends Config((site, here, up) => {
  case RocketTilesKey => {
    val medium = RocketTileParams(
      core = RocketCoreParams(),
      btb = None,
      dcache = Some(DCacheParams(
        rowBits = site(SystemBusKey).beatBytes*8,
        nSets = 64,
        nWays = 4,
        nTLBEntries = 16,
        nMSHRs = mshrno,
        bwSlowdown = bwSlowdown,
        blockBytes = site(CacheBlockBytes))),
      icache = Some(ICacheParams(
        rowBits = site(SystemBusKey).beatBytes*8,
        nSets = 64,
        nWays = 1,
        nTLBEntries = 4,
        blockBytes = site(CacheBlockBytes))))
    List.tabulate(n)(i => medium.copy(hartId = i))
  }
})

class WithNSmallCores(n: Int) extends Config((site, here, up) => {
  case RocketTilesKey => {
    val small = RocketTileParams(
      core = RocketCoreParams(useVM = false, fpu = None),
      btb = None,
      dcache = Some(DCacheParams(
        rowBits = site(SystemBusKey).beatBits,
        nSets = 64,
        nWays = 1,
        nTLBEntries = 4,
        nMSHRs = 1,
        blockBytes = site(CacheBlockBytes))),
      icache = Some(ICacheParams(
        rowBits = site(SystemBusKey).beatBits,
        nSets = 64,
        nWays = 1,
        nTLBEntries = 4,
        blockBytes = site(CacheBlockBytes))))
    List.tabulate(n)(i => small.copy(hartId = i))
  }
})

class With1TinyCore extends Config((site, here, up) => {
  case XLen => 32
  case RocketTilesKey => List(RocketTileParams(
      core = RocketCoreParams(
        useVM = false,
        fpu = None,
        mulDiv = Some(MulDivParams(mulUnroll = 8))),
      btb = None,
      dcache = Some(DCacheParams(
        rowBits = site(SystemBusKey).beatBits,
        nSets = 256, // 16Kb scratchpad
        nWays = 1,
        nTLBEntries = 4,
        nMSHRs = 1,
        blockBytes = site(CacheBlockBytes),
        scratch = Some(0x80000000L))),
      icache = Some(ICacheParams(
        rowBits = site(SystemBusKey).beatBits,
        nSets = 64,
        nWays = 1,
        nTLBEntries = 4,
        blockBytes = site(CacheBlockBytes)))))
  case RocketCrossingKey => List(RocketCrossingParams(
    crossingType = SynchronousCrossing(),
    master = TileMasterPortParams(cork = Some(true))
  ))
})

class WithSimNMediumCores(n: Int) extends Config((site, here, up) => {
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  case RocketTilesKey => {
    val medium = RocketTileParams(
      core = RocketCoreParams(fpu = None),
      btb = None,
      dcache = Some(DCacheParams(
        rowBits = 64*8,
        nSets = 64,
        nWays = 1,
        nTLBEntries = 4,
        nMSHRs = 4,
        bwSlowdown = 2,
        blockBytes = site(CacheBlockBytes))),
      icache = Some(ICacheParams(
        rowBits = site(SystemBusKey).beatBytes*8,
        nSets = 64,
        nWays = 1,
        nTLBEntries = 4,
        blockBytes = site(CacheBlockBytes))))
    List.tabulate(n)(i => medium.copy(hartId = i))
  }
})

class WithNBanksPerMemChannel(n: Int) extends Config((site, here, up) => {
  case BankedL2Key => up(BankedL2Key, site).copy(nBanksPerChannel = n)
})

class WithNTrackersPerBank(n: Int) extends Config((site, here, up) => {
  case BroadcastKey => up(BroadcastKey, site).copy(nTrackers = n)
})

// This is the number of icache sets for all Rocket tiles
class WithL1ICacheSets(sets: Int) extends Config((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(icache = r.icache.map(_.copy(nSets = sets))) }
})

// This is the number of icache sets for all Rocket tiles
class WithL1DCacheSets(sets: Int) extends Config((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(dcache = r.dcache.map(_.copy(nSets = sets))) }
})

class WithL1ICacheWays(ways: Int) extends Config((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(icache = r.icache.map(_.copy(nWays = ways)))
  }
})

class WithL1DCacheWays(ways: Int) extends Config((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(dcache = r.dcache.map(_.copy(nWays = ways)))
  }
})

class WithCacheBlockBytes(linesize: Int) extends Config((site, here, up) => {
  case CacheBlockBytes => linesize
})

class WithBufferlessBroadcastHub extends Config((site, here, up) => {
  case BroadcastKey => up(BroadcastKey, site).copy(bufferless = true)
})

/**
 * WARNING!!! IGNORE AT YOUR OWN PERIL!!!
 *
 * There is a very restrictive set of conditions under which the stateless
 * bridge will function properly. There can only be a single tile. This tile
 * MUST use the blocking data cache (L1D_MSHRS == 0) and MUST NOT have an
 * uncached channel capable of writes (i.e. a RoCC accelerator).
 *
 * This is because the stateless bridge CANNOT generate probes, so if your
 * system depends on coherence between channels in any way,
 * DO NOT use this configuration.
 */
class WithIncoherentTiles extends Config((site, here, up) => {
  case RocketCrossingKey => up(RocketCrossingKey, site) map { r =>
    r.copy(master = r.master.copy(cork = Some(true)))
  }
  case BankedL2Key => up(BankedL2Key, site).copy(coherenceManager = { subsystem =>
    val ww = LazyModule(new TLWidthWidget(subsystem.sbus.beatBytes)(subsystem.p))
    (ww.node, ww.node, () => None)
  })
})

class WithRV32 extends Config((site, here, up) => {
  case XLen => 32
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(core = r.core.copy(
      fpu = r.core.fpu.map(_.copy(fLen = 32)),
      mulDiv = Some(MulDivParams(mulUnroll = 8))))
  }
})

class WithNonblockingL1(nMSHRs: Int) extends Config((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(dcache = r.dcache.map(_.copy(nMSHRs = nMSHRs)))
  }
})

class WithNBreakpoints(hwbp: Int) extends Config ((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(core = r.core.copy(nBreakpoints = hwbp))
  }
})

class BuffedALUConfig(albSize: Int, atomGranularity: Int, isPhysical: Boolean) extends Config((site,here,up) => {
  case MonitorsEnabled => false
  // Want our bus to be wider if we need 64 byte cache lines
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  // Hopefully widens cache rows
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      dcache = r.dcache.map(_.copy(rowBits = 64*8)),
      rocc = Seq(
        RoCCParams
        (
          opcodes = OpcodeSet.custom2,
          generator = (p: Parameters) => 
          {
            val atomAddressMap = LazyModule(
              new ALUStressorTop(albSize = albSize,
                                 atomGranularity = atomGranularity,
                                 isPhysical = isPhysical)(p))
            atomAddressMap
          },
          nPTWPorts = 1
        )
      )
    )
  } 
})

class BuffedALUDualConfig(albSize: Int, atomGranularity: Int, isPhysical: Boolean, dontblock: Boolean = false) extends Config((site,here,up) => {
  case MonitorsEnabled => false
  // Want our bus to be wider if we need 64 byte cache lines
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  // Hopefully widens cache rows
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      dcache = r.dcache.map(_.copy(rowBits = 64*8)),
      rocc = Seq(
        RoCCParams
        (
          opcodes = OpcodeSet.custom2,
          generator = (p: Parameters) => 
          {
            val atomAddressMap = LazyModule(
              new ALUDualStressorTop(albSize = albSize, 
                                atomGranularity = atomGranularity,
                                isPhysical=isPhysical,
                                dontblock=dontblock)(p))
            atomAddressMap
          },
          nPTWPorts = 1
        )
      )
    )
  } 
})

class BuffedPartitionedALUDualConfig(albSize1: Int, albSize2: Int, atomGranularity: Int, isPhysical: Boolean) extends Config((site,here,up) => {
  case MonitorsEnabled => false
  // Want our bus to be wider if we need 64 byte cache lines
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  // Hopefully widens cache rows
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      dcache = r.dcache.map(_.copy(rowBits = 64*8)),
      rocc = Seq(
        RoCCParams
        (
          opcodes = OpcodeSet.custom2,
          generator = (p: Parameters) => 
          {
            val atomAddressMap = LazyModule(
              new ALUDualStressor2ALBTop(albSize1 = albSize1,
              albSize2 = albSize2,
                                 atomGranularity = atomGranularity,
                                isPhysical=isPhysical)(p))
            atomAddressMap
          },
          nPTWPorts = 1
        )
      )
    )
  } 
})

class ALUConfig(albSize: Int, enablePrefetch: Boolean, lookupOnly: Boolean, atomGranularity: Int) extends Config((site, here, up) => {
  case MonitorsEnabled => false
  // Want our bus to be wider if we need 64 byte cache lines
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  // Hopefully widens cache rows
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      dcache = r.dcache.map(_.copy(rowBits = 64*8)),
      rocc = Seq(
        RoCCParams
        (
          opcodes = OpcodeSet.custom2,
          generator = (p: Parameters) => 
          {
            val atomAddressMap = LazyModule(
              new AtomAddressMapAccelerator(albSize = albSize,
                                            enablePrefetch = enablePrefetch,
                                            lookupOnly = lookupOnly,
                                            atomGranularity = atomGranularity)(p))
            atomAddressMap
          },
          nPTWPorts = 1
        )
      )
    )
  }
})

class PrefetcherConfig(albSize: Int, atomGranularity: Int) extends Config((site, here, up) => {
  case MonitorsEnabled => false
  // Want our bus to be wider if we need 64 byte cache lines
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  // Hopefully widens cache rows
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      dcache = r.dcache.map(_.copy(rowBits = 64*8)),
      rocc = Seq(
        RoCCParams
        (
          opcodes = OpcodeSet.custom2,
          generator = (p: Parameters) => 
          {
            val atomAddressMap = LazyModule(
              new AtomPrefetcher(albSize = albSize,
                                atomGranularity = atomGranularity)(p))
            atomAddressMap
          },
          nPTWPorts = 1
        )
      )
    )
  }
})



class IndirectPrefetcherConfig(albSize: Int, atomGranularity: Int) extends Config((site, here, up) => {
  case MonitorsEnabled => false
  // Want our bus to be wider if we need 64 byte cache lines
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  // Hopefully widens cache rows
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      dcache = r.dcache.map(_.copy(rowBits = 64*8)),
      rocc = Seq(
        RoCCParams
        (
          opcodes = OpcodeSet.custom2,
          generator = (p: Parameters) => 
          {
            val atomAddressMap = LazyModule(
              new Prefetcher(albSize = albSize,
                                atomGranularity = atomGranularity)(p))
            atomAddressMap
          },
          nPTWPorts = 1
        )
      )
    )
  }
})

class IndirectPrefetcherBFSConfig(albSize: Int, atomGranularity: Int) extends Config((site, here, up) => {
  case MonitorsEnabled => false
  // Want our bus to be wider if we need 64 byte cache lines
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  // Hopefully widens cache rows
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      dcache = r.dcache.map(_.copy(rowBits = 64*8)),
      rocc = Seq(
        RoCCParams
        (
          opcodes = OpcodeSet.custom2,
          generator = (p: Parameters) => 
          {
            val atomAddressMap = LazyModule(
              new PrefetcherBFS(albSize = albSize,
                                atomGranularity = atomGranularity)(p))
            atomAddressMap
          },
          nPTWPorts = 1
        )
      )
    )
  }
})

class IndirectPrefetcherStreamOnlyConfig(albSize: Int, atomGranularity: Int) extends Config((site, here, up) => {
  case MonitorsEnabled => false
  // Want our bus to be wider if we need 64 byte cache lines
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  // Hopefully widens cache rows
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      dcache = r.dcache.map(_.copy(rowBits = 64*8)),
      rocc = Seq(
        RoCCParams
        (
          opcodes = OpcodeSet.custom2,
          generator = (p: Parameters) => 
          {
            val atomAddressMap = LazyModule(
              new PrefetcherStreamOnly(albSize = albSize,
                                atomGranularity = atomGranularity)(p))
            atomAddressMap
          },
          nPTWPorts = 1
        )
      )
    )
  }
})





class StridePrefetcherConfig(albSize: Int, atomGranularity: Int) extends Config((site, here, up) => {
  case MonitorsEnabled => false
  // Want our bus to be wider if we need 64 byte cache lines
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  // Hopefully widens cache rows
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      dcache = r.dcache.map(_.copy(rowBits = 64*8)),
      rocc = Seq(
        RoCCParams
        (
          opcodes = OpcodeSet.custom2,
          generator = (p: Parameters) => 
          {
            val atomAddressMap = LazyModule(
              new StridePrefetcher(albSize = albSize,
                                atomGranularity = atomGranularity)(p))
            atomAddressMap
          },
          nPTWPorts = 1
        )
      )
    )
  }
})

class AtomControllerConfig(atomGranularity: Int, isDummy: Boolean) extends Config((site, here, up) => {
  case MonitorsEnabled => false
  // Want our bus to be wider if we need 64 byte cache lines
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  // Hopefully widens cache rows
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      dcache = r.dcache.map(_.copy(rowBits = 64*8)),
      rocc = Seq(
        RoCCParams
        (
          opcodes = OpcodeSet.custom2,
          generator = (p: Parameters) => 
          {
            val atomAddressMap = LazyModule(
              new AtomController(atomGranularity = atomGranularity,
                                isDummy = isDummy)(p))
            atomAddressMap
          },
          nPTWPorts = 1
        )
      )
    )
  }
})

class BoundsCheckerConfig(atomGranularity: Int, albSize: Int, checkAll: Boolean = false) extends Config((site, here, up) => {
  case MonitorsEnabled => false
  // Want our bus to be wider if we need 64 byte cache lines
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
  // Hopefully widens cache rows
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(
      dcache = r.dcache.map(_.copy(rowBits = 64*8)),
      rocc = Seq(
        RoCCParams
        (
          opcodes = OpcodeSet.custom2,
          generator = (p: Parameters) => 
          {
            val atomAddressMap = LazyModule(
              new BoundsCheckerImpl(atomGranularity = atomGranularity,
                                albSize = albSize,
                                checkAll = checkAll)(p))
            atomAddressMap
          },
          nPTWPorts = 1,
          disableCommandRouter = true
        )
      )
    )
  }
})

class WithDefaultBtb extends Config((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(btb = Some(BTBParams()))
  }
})

class WithFastMulDiv extends Config((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(core = r.core.copy(mulDiv = Some(
      MulDivParams(mulUnroll = 8, mulEarlyOut = (site(XLen) > 32), divEarlyOut = true)
  )))}
})

class WithoutMulDiv extends Config((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(core = r.core.copy(mulDiv = None))
  }
})

class WithoutFPU extends Config((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(core = r.core.copy(fpu = None))
  }
})

class WithFPUWithoutDivSqrt extends Config((site, here, up) => {
  case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(core = r.core.copy(fpu = r.core.fpu.map(_.copy(divSqrt = false))))
  }
})

class WithBootROMFile(bootROMFile: String) extends Config((site, here, up) => {
  case BootROMParams => up(BootROMParams, site).copy(contentFileName = bootROMFile)
})

class WithSynchronousRocketTiles extends Config((site, here, up) => {
  case RocketCrossingKey => up(RocketCrossingKey, site) map { r =>
    r.copy(crossingType = SynchronousCrossing())
  }
})

class WithAsynchronousRocketTiles(depth: Int, sync: Int) extends Config((site, here, up) => {
  case RocketCrossingKey => up(RocketCrossingKey, site) map { r =>
    r.copy(crossingType = AsynchronousCrossing(depth, sync))
  }
})

class WithRationalRocketTiles extends Config((site, here, up) => {
  case RocketCrossingKey => up(RocketCrossingKey, site) map { r =>
    r.copy(crossingType = RationalCrossing())
  }
})

class WithEdgeDataBits(dataBits: Int) extends Config((site, here, up) => {
  case MemoryBusKey => up(MemoryBusKey, site).copy(beatBytes = dataBits/8)
  case ExtIn => up(ExtIn, site).copy(beatBytes = dataBits/8)

})

class WithJtagDTM extends Config ((site, here, up) => {
  case IncludeJtagDTM => true
})

class WithNBitPeripheryBus(nBits: Int) extends Config ((site, here, up) => {
  case PeripheryBusKey => up(PeripheryBusKey, site).copy(beatBytes = nBits/8)
})

class WithoutTLMonitors extends Config ((site, here, up) => {
  case MonitorsEnabled => false
})

class WithNExtTopInterrupts(nExtInts: Int) extends Config((site, here, up) => {
  case NExtTopInterrupts => nExtInts
})

class WithNMemoryChannels(n: Int) extends Config((site, here, up) => {
  case BankedL2Key => up(BankedL2Key, site).copy(nMemoryChannels = n)
})

class WithExtMemSize(n: Long) extends Config((site, here, up) => {
  case ExtMem => up(ExtMem, site).copy(size = n)
})

class WithDTS(model: String, compat: Seq[String]) extends Config((site, here, up) => {
  case DTSModel => model
  case DTSCompat => compat
})

class WithTimebase(hertz: BigInt) extends Config((site, here, up) => {
  case DTSTimebase => hertz
})
