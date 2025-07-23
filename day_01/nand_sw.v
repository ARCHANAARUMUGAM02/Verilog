`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 11:13:56
// Design Name: 
// Module Name: nand_sw
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


module nand_sw( input a,b,output out);
wire c;
supply0 gnd;
supply1 vdd;
pmos pmos_1(out,vdd,b);
pmos pmos_2(out,vdd,b);
nmos nmos_1(c,gnd,b);
nmos nmos_2(out,c,a);
endmodule
