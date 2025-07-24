`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 16:02:47
// Design Name: 
// Module Name: twos_comp_adder
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


module twos_comp_adder( input [3:0]x,y,input c_in,output [3:0]sum ,c_out,[3:0]t);
assign t=y^{4{c_in}};
assign {c_out,sum}=x+t+c_in;
endmodule
