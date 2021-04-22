// See LICENSE.SiFive for license details.
// See LICENSE.Berkeley for license details.

package freechips.rocketchip.system

import Chisel._
import freechips.rocketchip.config.Config
import freechips.rocketchip.subsystem._
import freechips.rocketchip.devices.debug.{IncludeJtagDTM, JtagDTMKey}
import freechips.rocketchip.diplomacy._

class WithJtagDTMSystem extends freechips.rocketchip.subsystem.WithJtagDTM

class BaseConfig extends Config(new BaseSubsystemConfig().alter((site,here,up) => {
  // DTS descriptive parameters
  case DTSModel => "freechips,rocketchip-unknown"
  case DTSCompat => Nil
  case DTSTimebase => BigInt(1000000) // 1 MHz
  // External port parameters
  case NExtTopInterrupts => 2
  case ExtMem => MasterPortParams(
                      base = x"8000_0000",
                      size = x"1000_0000",
                      beatBytes = site(MemoryBusKey).beatBytes,
                      idBits = 4)
  case ExtBus => MasterPortParams(
                      base = x"6000_0000",
                      size = x"2000_0000",
                      beatBytes = site(MemoryBusKey).beatBytes,
                      idBits = 4)
  case ExtIn  => SlavePortParams(beatBytes = 8, idBits = 8, sourceBits = 4)
}))

class BaseConfigBC extends Config(new BaseSubsystemBCConfig().alter((site,here,up) => {
  // DTS descriptive parameters
  case DTSModel => "freechips,rocketchip-unknown"
  case DTSCompat => Nil
  case DTSTimebase => BigInt(1000000) // 1 MHz
  // External port parameters
  case NExtTopInterrupts => 2
  case ExtMem => MasterPortParams(
                      base = x"8000_0000",
                      size = x"1000_0000",
                      beatBytes = site(MemoryBusKey).beatBytes,
                      idBits = 4)
  case ExtBus => MasterPortParams(
                      base = x"6000_0000",
                      size = x"2000_0000",
                      beatBytes = site(MemoryBusKey).beatBytes,
                      idBits = 4)
  case ExtIn  => SlavePortParams(beatBytes = 8, idBits = 8, sourceBits = 4)
}))

class DefaultConfig extends Config(new WithNBigCores(1) ++ new BaseConfig)

class DefaultBufferlessConfig extends Config(
  new WithBufferlessBroadcastHub ++ new WithNBigCores(1) ++ new BaseConfig)

class DefaultSmallConfig extends Config(new WithNSmallCores(1) ++ new BaseConfig)
class DefaultRV32Config extends Config(new WithRV32 ++ new DefaultConfig)

class DualBankConfig extends Config(
  new WithNBanksPerMemChannel(2) ++ new BaseConfig)

class DualChannelConfig extends Config(new WithNMemoryChannels(2) ++ new BaseConfig)

class DualChannelDualBankConfig extends Config(
  new WithNMemoryChannels(2) ++
  new WithNBanksPerMemChannel(2) ++ new BaseConfig)


class AreaBaseline extends Config(new WithSimNMediumCores(1) ++ new BaseConfig)
class AreaMetaSys extends Config(new BuffedALUConfig(128,9,false) ++ new AreaBaseline)

class RoccExampleConfig extends Config(new ALUConfig(32,true,false,9) ++ new DefaultConfig)

class BCConfig extends Config(new BoundsCheckerConfig(20,32) ++ new WithoutFPU ++ new DefaultMediumBCConfig)
class BCAllConfig extends Config(new BoundsCheckerConfig(20,32,true) ++ new WithoutFPU ++ new DefaultMediumBCConfig)
class DefaultMediumBCConfig extends Config(new WithSimNMediumCores(1) ++ new BaseConfigBC)

class DefaultMediumConfig extends Config(new WithSimNMediumCores(1) ++ new BaseConfig)
class ModifiedMediumConfig extends Config(new WithSimNMediumCores(4) ++ new BaseConfig)
class RoccMediumExampleConfig extends Config(new ALUConfig(32,true,false,20) ++ new WithoutFPU ++ new DefaultMediumConfig)
class RoccAtomPrefetcherConfig extends Config(new PrefetcherConfig(32,20) ++ new WithoutFPU ++ new DefaultMediumConfig)
class RoccStridePrefetcherConfig extends Config(new StridePrefetcherConfig(32,20) ++ new WithoutFPU ++ new DefaultMediumConfig)
class RoccIndirectPrefetcherConfig extends Config(new IndirectPrefetcherConfig(32,20)++ new WithoutFPU ++ new DefaultMediumConfig)
class RoccIndirectPrefetcherBFSConfig extends Config(new IndirectPrefetcherBFSConfig(32,20)++ new WithoutFPU ++ new DefaultMediumConfig)
class RoccIndirectPrefetcherStreamOnlyConfig extends Config(new IndirectPrefetcherStreamOnlyConfig(32,20)++ new WithoutFPU ++ new DefaultMediumConfig)
class RoccAtomControllerConfig extends Config(new AtomControllerConfig(20,false) ++ new WithoutFPU ++ new DefaultMediumConfig)
class RoccMediumBuffedExampleConfig extends Config(new BuffedALUConfig(32,20,false) ++ new WithoutFPU ++ new DefaultMediumConfig)
class TestRoccMediumBuffedPhysicalExampleConfig extends Config(new BuffedALUConfig(32,9,true) ++ new WithoutFPU ++ new DefaultMediumConfig)
class RoccDualConfig extends Config(new BuffedPartitionedALUDualConfig(16,16,20,false) ++ new WithoutFPU ++ new DefaultMediumConfig)
class RoccMediumBuffedPhysicalExampleConfig extends Config(new BuffedALUConfig(32,20,true) ++ new WithoutFPU ++ new DefaultMediumConfig)
class RoccMediumBuffedDualExampleConfig extends Config(new BuffedALUDualConfig(32,20,false) ++ new WithoutFPU ++ new DefaultMediumConfig)
class RoccMoreCoresConfig extends Config(new ALUConfig(32,true,false,9) ++ new WithoutFPU ++ new ModifiedMediumConfig)

class RoccSmallExampleConfig extends Config(new ALUConfig(32,true,false,9) ++ new WithoutFPU ++ new DefaultSmallConfig)

class Edge128BitConfig extends Config(
  new WithEdgeDataBits(128) ++ new BaseConfig)
class Edge32BitConfig extends Config(
  new WithEdgeDataBits(32) ++ new BaseConfig)

class SingleChannelBenchmarkConfig extends Config(new DefaultConfig)
class DualChannelBenchmarkConfig extends Config(new WithNMemoryChannels(2) ++ new SingleChannelBenchmarkConfig)
class QuadChannelBenchmarkConfig extends Config(new WithNMemoryChannels(4) ++ new SingleChannelBenchmarkConfig)
class OctoChannelBenchmarkConfig extends Config(new WithNMemoryChannels(8) ++ new SingleChannelBenchmarkConfig)

class EightChannelConfig extends Config(new WithNMemoryChannels(8) ++ new BaseConfig)

class DualCoreConfig extends Config(
  new WithNBigCores(2) ++ new BaseConfig)

class TinyConfig extends Config(
  new WithNMemoryChannels(0) ++
  new WithIncoherentTiles ++
  new With1TinyCore ++
  new BaseConfig)

class BaseFPGAConfig extends Config(new BaseConfig)

class DefaultFPGAConfig extends Config(new WithNBigCores(1) ++ new BaseFPGAConfig)
class DefaultFPGASmallConfig extends Config(new DefaultFPGAConfig)
