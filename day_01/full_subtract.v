`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 07:02:08
// Design Name: 
// Module Name: full_subtract
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


module full_subtract(input a,b,c,output diff,borrow);
xor xor_1(d,a,b);
xor xor_2(diff,d,c);
not not_1(not_a,a);
and and_1(e,not_a,b);
and and_2(f,not_a,c);
and and_3(g,b,c);
or or_gate(borrow,e,f,g);
endmodule
