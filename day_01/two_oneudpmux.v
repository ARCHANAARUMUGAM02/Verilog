`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 16:21:54
// Design Name: 
// Module Name: two_oneudpmux
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



primitive two_oneudpmux (out, s, i0, i1);
 output out;
 input s, i0, i1;
 table
 0   ?   ? : 0;
 1   ?   ? : 1;
 ?   0   ? : 0;
 ?   1   ? : 1;
 ?   ?   0 : 0;
 ?   ?   1 : 1;
 endtable
endprimitive

