`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:07:54
// Design Name: 
// Module Name: graytobinary_df
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


module graytobinary_df(input [2:0]g,output[2:0]b);
assign b[0]=g[0]|g[1]|g[2];
assign b[1]=g[1]|g[2];
assign b[2]=g[2];
endmodule
