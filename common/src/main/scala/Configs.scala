package zynq

import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.subsystem._
import freechips.rocketchip.devices.tilelink.BootROMParams
import freechips.rocketchip.rocket.{RocketCoreParams, MulDivParams, DCacheParams, ICacheParams}
import freechips.rocketchip.tile.{RocketTileParams, BuildCore, XLen}
import testchipip._
import freechips.rocketchip.config.Config
import freechips.rocketchip.subsystem._
import freechips.rocketchip.diplomacy._

class WithBootROM extends Config((site, here, up) => {
  case BootROMParams => BootROMParams(
    contentFileName = s"../testchipip/bootrom/bootrom.rv${site(XLen)}.img")
})

class WithZynqAdapter extends Config((site, here, up) => {
  case SerialFIFODepth => 16
  case ResetCycles => 10
  case ZynqAdapterBase => BigInt(0x43C00000L)
  case ExtMem => up(ExtMem, site).copy(idBits = 6)
  case ExtIn => up(ExtIn, site).copy(beatBytes = 4, idBits = 12)
  case BlockDeviceKey => BlockDeviceConfig(nTrackers = 2)
  case BlockDeviceFIFODepth => 16
  case NetworkFIFODepth => 16
})

class WithNMediumCores(n: Int, bwSlowdown: Int = 20, mshrno: Int = 2) extends Config((site, here, up) => {
  case RocketTilesKey => {
    val medium = RocketTileParams(
      core = RocketCoreParams(),
      btb = None,
      dcache = Some(DCacheParams(
        rowBits = 64*8,
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
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = site(XLen)/8*8)
})

class RoccExampleConfig extends Config(new ALUConfig(32,true,false,9) ++ new WithoutFPU ++ new DefaultConfig)

class DefaultConfig extends Config(
  new WithBootROM ++ new freechips.rocketchip.system.DefaultConfig)
class DefaultMediumConfig extends Config(
  new WithBootROM ++ new WithNMediumCores(1) ++
  new freechips.rocketchip.system.BaseConfig)
class DefaultSmallConfig extends Config(
  new WithBootROM ++ new freechips.rocketchip.system.DefaultSmallConfig)

class ZynqConfig extends Config(new WithZynqAdapter ++ new DefaultConfig)
class ZynqSmallConfig extends Config(new WithZynqAdapter ++ new DefaultSmallConfig)

class MediumConfig(bwSlowdown: Int = 20, mshrno: Int = 2) extends Config(new WithBootROM ++ new WithNMediumCores(1, bwSlowdown, mshrno) ++ new freechips.rocketchip.system.BaseConfig)
class MediumBCConfig(bwSlowdown: Int = 20, mshrno: Int = 2) extends Config(new WithBootROM ++ new WithNMediumCores(1, bwSlowdown, mshrno) ++ new freechips.rocketchip.system.BaseConfigBC)

class ZynqMediumConfig extends Config(new WithZynqAdapter ++ new ALUConfig(32,true,false,9) ++ new WithoutFPU ++ new MediumConfig)

class LargeConfig extends Config(new WithBootROM ++ new WithNBigCores(1) ++ new freechips.rocketchip.system.BaseConfig)
class ZynqLargeConfig extends Config(new WithZynqAdapter ++ new ALUConfig(32,true,false,9) ++ new LargeConfig)

class ZynqFPGAConfig extends Config(new ALUConfig(32,true,false,9) ++ new ZynqConfig)
class ZynqMediumFPGAConfig extends Config(new WithZynqAdapter ++ new WithoutFPU ++ new MediumConfig)
class ZynqSmallFPGAConfig extends Config(new WithoutTLMonitors ++ new ZynqSmallConfig)
class BaselineConfig extends Config(new WithZynqAdapter ++ new AtomControllerConfig(9,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig128GRA9 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(128,9,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig0GRA9 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(0,9,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig8GRA9 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(8,9,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig16GRA9 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(16,9,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig32GRA9 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(32,9,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig64GRA9 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(64,9,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig128GRA6 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(128,6,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig128GRA7 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(128,7,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig128GRA8 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(128,8,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig128GRA10 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(128,10,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig128GRA11 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(128,11,false) ++ new WithoutFPU ++ new MediumConfig)
class StressZynqConfig128GRA12 extends Config(new WithZynqAdapter ++ new BuffedALUConfig(128,12,false) ++ new WithoutFPU ++ new MediumConfig)
