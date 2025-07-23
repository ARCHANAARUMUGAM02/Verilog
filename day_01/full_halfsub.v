`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 15:46:18
// Design Name: 
// Module Name: full_halfsub
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


module full_halfsub(input a,b,c,output diff,borrow);
wire w1,w2,w3;
not not_1(not_a,a);
not not_2(not_w1,w1);
xor xor_1(w1,a,b);
xor xor_2(diff,c,w1);
and and_1(w2,not_a,b);
and and_2(w3,not_w1,c);
or or_gate(borrow,w2,w3);
endmodule
