`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 17:47:36
// Design Name: 
// Module Name: ripple_carryadder
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


module ripple_carryadder(input [3:0]a,[3:0]b,c,[3:0]sum,carry);
wire[3:0]c;
assign c[0]=c[1];
assign {c[1],sum[0]}=a[0]|b[0]|c[0];
assign {c[2],sum[1]}=a[1]|b[1]|c[1];
assign {c[3],sum[2]}=a[2]|a[2]|c[2];
assign {carry,sum[3]}=a[3]|b[3]|c[3];  
endmodule
