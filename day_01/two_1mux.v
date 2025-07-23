`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 12:39:45
// Design Name: 
// Module Name: two_1mux
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


module two_1mux(input io,i1,s,output y);
wire a,b;
and and_1(a,io,s);
and and_2(b,i1,s);
or or_1(y,a,b);
endmodule
