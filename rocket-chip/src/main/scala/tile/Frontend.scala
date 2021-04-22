
package tile

import chisel3._
import freechips.rocketchip.util.ParameterizedBundle
import chisel3.util._
import freechips.rocketchip.tilelink.TLEdgeOut
import freechips.rocketchip.util._
import freechips.rocketchip.rocket._
import freechips.rocketchip.tile.{HasCoreParameters, CoreBundle, CoreModule}
import freechips.rocketchip.config.Parameters
/*
import AmuRequest._
import ClientAmuResponse._



trait HasClientAmuParameters extends HasCoreParameters with HasAmuParameters {
  val amuAddrBits = coreMaxAddrBits
  val amuSegmentSizeBits = coreMaxAddrBits
  val amuSegmentBits = 24
  val amuClientIdBits = 2
}

abstract class ClientAmuBundle(implicit val p: Parameters)
  extends ParameterizedBundle()(p) with HasClientAmuParameters

abstract class ClientAmuModule(implicit val p: Parameters)
  extends Module with HasClientAmuParameters



class ClientAmuRequest(implicit p: Parameters)
  extends ClientAmuBundle()(p) {
  val client_id = UInt(amuClientIdBits.W)
  val cmd = UInt(AMU_CMD_SZ.W)
  val dst_start = UInt(amuAddrBits.W)
  val dst_stride = UInt(amuSegmentSizeBits.W)
  val segment_size = UInt(amuSegmentSizeBits.W)
  val nsegments = UInt(amuSegmentBits.W)
  val alloc = UInt(2.W)

  def isPrefetch(dummy: Int = 0): Bool =
    cmd === AmuRequest.AMU_CMD_PFR || cmd === AmuRequest.AMU_CMD_PFW
}


object ClientAmuRequest {
  val DMA_CMD_RESUME = "b01".U

  def apply(client_id: UInt,
            cmd: UInt,
            dst_start: UInt,
            segment_size: UInt,
            nsegments: UInt = 1.U,
            dst_stride: UInt = 0.U,
            alloc: UInt = "b10".U)
           (implicit p: Parameters) = {
    val req = Wire(new ClientAmuRequest)
    req.client_id := client_id
    req.cmd := cmd
    req.dst_start := dst_start
    req.dst_stride := dst_stride
    req.segment_size := segment_size
    req.nsegments := nsegments
    req.alloc := alloc
    req
  }

}

object ClientAmuResponse {
  val NO_ERROR = "b000".U
  val PAUSED = "b001".U
  val DST_PAGE_FAULT = "b011".U
  val DST_INVALID_REGION = "b101".U
}

class ClientAmuResponse(implicit p:Parameters)
  extends ClientAmuBundle()(p) with HasCoreParameters
{
  val client_id = UInt(amuClientIdBits.W)
  val status = UInt(amuStatusBits.W)
  val fault_vpn = UInt(vpnBits.W)
}


class ClientAmuIO(implicit p: Parameters) extends ParameterizedBundle()(p) {
    val req = Decoupled(new ClientAmuRequest)
    val resp = Flipped(Valid(new ClientAmuResponse))
}


class ClientAmuArbiter(n: Int)(implicit p: Parameters) extends Module {
  val io = IO(new Bundle {
    val in = Flipped(Vec(n, new ClientAmuIO))
    val out = new ClientAmuIO
  })

  val req_arb = Module(new RRArbiter(new ClientAmuRequest, n))
  req_arb.io.in <> io.in.map(_.req)
  io.out.req <> req_arb.io.out

  io.in.zipWithIndex.foreach { case (in, i) =>
    val me = io.out.resp.bits.client_id === i.U
    in.resp.valid := me && io.out.resp.valid
    in.resp.bits := io.out.resp.bits
  }
}
*/
class DecoupledTLB(entries: Int)(implicit p: Parameters, edge : TLEdgeOut)
  extends CoreModule
{
  val lgMaxSize = log2Ceil(coreDataBytes)
   val io = new Bundle {
     val req = Flipped(Decoupled(new TLBReq(lgMaxSize)))
     val resp = Decoupled(new TLBResp)
     val ptw = new TLBPTWIO
   }

  val req = Reg(new TLBReq(lgMaxSize))
  val resp = Reg(new TLBResp)
  val tlb = Module(new TLB(false, lgMaxSize, entries))

  val s_idle :: s_tlb_req :: s_tlb_resp :: s_done :: Nil = Enum(Bits(), 4)
  val state = Reg(init = s_idle)

  when (io.req.fire()) {
    req := io.req.bits
    state := s_tlb_req
  }

  when (tlb.io.req.fire()) {
    state := s_tlb_resp
  }

  when (state === s_tlb_resp) {
    when (tlb.io.resp.miss) {
      state := s_tlb_req
    } .otherwise {
      resp := tlb.io.resp
      state := s_done
    }
  }

  when (io.resp.fire()) { state := s_idle }

  io.req.ready := state === s_idle

  tlb.io.req.valid := state === s_tlb_req
  tlb.io.req.bits := req

  io.resp.valid := state === s_done
  io.resp.bits := resp

  io.ptw <> tlb.io.ptw
}


class FrontendTLBIO (implicit p:Parameters)
  extends CoreBundle
{
  val lgMaxSize = log2Ceil(coreDataBytes)
  val req = Decoupled(new TLBReq(lgMaxSize))
  val resp = Flipped(Decoupled(new TLBResp))
}


class FrontendTLB(nClients: Int) (implicit p:Parameters, edge: TLEdgeOut)
  extends CoreModule
{
  val io = IO(new Bundle {
    val clients = Flipped(Vec(nClients, new FrontendTLBIO))
    val ptw = new TLBPTWIO
  })

  val lgMaxSize = log2Ceil(coreDataBytes)
  val tlbArb = Module(new InOrderArbiter (
    new TLBReq(lgMaxSize), new TLBResp, nClients
  ))

  val tlb = Module(new DecoupledTLB(4))
  tlb.io.req <> tlbArb.io.out_req
  tlb.io.req.bits.isLookup := Bool(false)
  tlbArb.io.out_resp <> tlb.io.resp
  io.ptw <> tlb.io.ptw

  tlbArb.io.in_req <> io.clients.map(_.req)
  io.clients.zip(tlbArb.io.in_resp).foreach {
    case (client, arb_resp) => client.resp <> arb_resp
  }
}



/*

class AmuFrontend(implicit p: Parameters) extends CoreModule()(p)
 // with HasClientAmuParameters
{
  val io = IO(new Bundle {
//    val cpu = Flipped(new ClientAmuIO)
//    val amu = new AmuIO
    val tlb = new FrontendTLBIO
    val busy = Output(Bool())
//    val pause = Input(Bool())
  })



  val (s_idle :: s_translate :: s_amu_req :: s_amu_update ::
        s_prepare :: s_finish :: Nil) = Enum(6)
  val state = Reg(init = s_idle)

  //----------------------------------------------------------------------------------------------//
  val to_translate = RegInit(false.B)
  val tlb_sent = RegInit(true.B)
  val tlb_to_send = to_translate & !tlb_sent
  val ptw_error = false.B
  io.tlb.clients(0).req.valid := tlb_to_send
  tlb.io.clients(0).req.bits.vaddr := acr_reg.io.rdata
  tlb.io.clients(0).req.bits.passthrough := false.B
  tlb.io.clients(0).req.bits.sfence.valid := ptw_error
  tlb.io.clients(0).req.bits.sfence.bits.rs1 := true.B
  tlb.io.clients(0).req.bits.sfence.bits.rs2 := false.B
  tlb.io.clients(0).req.bits.sfence.bits.addr := acr_reg.io.rdata
  tlb.io.clients(0).req.bits.sfence.bits.asid := 0.U
  tlb.io.clients(0).resp.ready := tlb_sent
  tlb.io.clients(0).req.bits.cmd := M_XRD
  tlb.io.clients(0).req.bits.size := MT_W
  //----------------------------------------------------------------------------------------------//

} */