`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 15:12:04
// Design Name: 
// Module Name: fifo_mem
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


module fifo_mem #(parameter DATASIZE=8, parameter ADDRSIZE=4)
(
  output reg [DATASIZE-1:0] rdata,
  input [DATASIZE-1:0] wdata,
  input [ADDRSIZE-1:0] waddr,
  input [ADDRSIZE-1:0] raddr,
  input wclken, wfull, wclk,
  input rclk,rclken,rempty
);
  localparam DEPTH=1<<ADDRSIZE;
  reg [DATASIZE-1:0] mem [0:DEPTH-1];

  always @(posedge wclk) begin
    if (wclken && !wfull)
      mem[waddr] <= wdata;
  end

  always @(posedge rclk) begin
  if(rclken&&!rempty)
    rdata <= mem[raddr];
  end
endmodule
