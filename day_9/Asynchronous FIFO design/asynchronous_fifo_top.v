`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 12:18:46
// Design Name: 
// Module Name: asynchronous_fifo_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module asynchronous_fifo_top #(parameter DATASIZE = 8,
parameter ADDRSIZE = 4)
(
    output [DATASIZE-1:0] rdata,
    output  wfull,
    output  rempty,
    input  [DATASIZE-1:0] wdata,
    input  winc, wclk, wrst_n,
    input  rinc, rclk, rrst_n
);

  wire [ADDRSIZE-1:0] waddr, raddr;
  wire [ADDRSIZE  :0] wptr, rptr;
  wire [ADDRSIZE  :0] wq2_rptr, rq2_wptr;

  fifo_mem #(DATASIZE, ADDRSIZE) fifo_mem_inst (
    .rdata(rdata),
    .wdata(wdata),
    .waddr(waddr),
    .raddr(raddr),
    .wclken(winc),
    .wfull(wfull),
    .wclk(wclk),
    .rclk(rclk),
    .rempty(rempty),
    .rclken(rinc)
  );

  write_pointer_full #(ADDRSIZE) wptr_inst (
    .wfull(wfull),
    .waddr(waddr),
    .wptr(wptr),
    .wq2_rptr(wq2_rptr),
    .winc(winc),
    .wclk(wclk),
    .wrst_n(wrst_n)
  );

   read_pointer_empty #(ADDRSIZE) rptr_inst (
    .rempty(rempty),
    .raddr(raddr),
    .rptr(rptr),
    .rq2_wptr(rq2_wptr),
    .rinc(rinc),
    .rclk(rclk),
    .rrst_n(rrst_n)
  );

  sync_r2w #(ADDRSIZE) sync_r2w_inst (
    .wclk(wclk),
    .wrst_n(wrst_n),
    .rptr(rptr),
    .wq2_rptr(wq2_rptr)
  );

  sync_w2r #(ADDRSIZE) sync_w2r_inst (
    .rq2_wptr(rq2_wptr),
    .wptr(wptr),
    .rclk(rclk),
    .rrst_n(rrst_n)
  );

endmodule


