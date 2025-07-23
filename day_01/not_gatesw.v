`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 11:02:08
// Design Name: 
// Module Name: not_gatesw
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


module not_gatesw(input a,output out);
supply1 vdd;
supply0 gnd;
pmos p1(out,vdd,a);
nmos n1(out,gnd,a);
endmodule
