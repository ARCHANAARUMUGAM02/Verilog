`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 15:49:03
// Design Name: 
// Module Name: synchronizer
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


 module sync_w2r #(parameter ADDRSIZE = 4)
  (output reg [ADDRSIZE:0] rq2_wptr,
   input [ADDRSIZE:0] wptr,
   input rclk, rrst_n);
   reg [ADDRSIZE:0] rq1_wptr;
  always @(posedge rclk or negedge rrst_n)
   if (!rrst_n) 
   {rq2_wptr,rq1_wptr} <= 0;
   else         
    {rq2_wptr,rq1_wptr} <= {rq1_wptr,wptr};
   endmodule
