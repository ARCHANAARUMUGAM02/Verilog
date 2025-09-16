`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 16:32:08
// Design Name: 
// Module Name: sync_rptr_to_wclk
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

module sync_r2w #(parameter ADDRSIZE = 4)
(input wclk, wrst_n,
 input [ADDRSIZE:0] rptr,
 output reg [ADDRSIZE:0] wq2_rptr);
 reg [ADDRSIZE:0] wq1_rptr;
 always @(posedge wclk or negedge wrst_n)
 if (!wrst_n)
  {wq2_rptr,wq1_rptr} <= 0;
 else    
 {wq2_rptr,wq1_rptr} <= {wq1_rptr,rptr};
 endmodule
