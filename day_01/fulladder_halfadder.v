`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 16:03:11
// Design Name: 
// Module Name: fulladder_halfadder
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


module fulladder_halfadder(input a,b,c,sum,carry);
wire w1,w2,w3;
xor xor_1(w1,a,b);
xor xor_2(sum,c,w1);
and and_1(w2,a,b);
and and_2(w3,w1,c);
or or_gate(carry,w2,w3);
endmodule
