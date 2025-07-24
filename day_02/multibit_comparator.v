`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 15:03:14
// Design Name: 
// Module Name: multibit_comparator
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


module multibit_comparator(input [2:0]a,[2:0]b,
input Iaeqb,Iagtb,Ialtb,output oaeqb,oaltb,oagtb);
assign oaeqb = (a == b) && (Iaeqb == 1);      
assign oagtb = (a > b) || ((a == b) && (Iagtb == 1));   
assign oaltb = (a < b) || ((a == b) && (Ialtb == 1)); 
endmodule
