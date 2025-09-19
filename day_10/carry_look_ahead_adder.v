`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2025 16:06:06
// Design Name: 
// Module Name: carry_look_ahead_adder
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


module carry_look_ahead_adder(
input [3:0]a,b,
input cin,
output [3:0]sum,
output cout);
wire[3:0] g,p,c;
assign g=a&b;
assign p=a^b;
assign c[0] = cin;
assign c[1] = g[0] | (p[0] & c[0]);
assign c[2] = g[1] | (p[1] & c[1]);
assign c[3] = g[2] | (p[2] & c[2]);
assign cout = g[3] | (p[3] & c[3]);
assign sum=p^c;
endmodule
