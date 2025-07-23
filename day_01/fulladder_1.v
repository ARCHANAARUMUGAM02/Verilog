`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 21:56:09
// Design Name: 
// Module Name: fulladder_1
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


module fulladder_1(input a,b,cin,output sum,carry);
wire d,e,f;
xor xor_1(d,a,b);
xor xor_2(sum,d,cin);
and and_1(e,a,b);
and and_2(f,d,cin);
or or_gate(carry,e,f);
endmodule;

