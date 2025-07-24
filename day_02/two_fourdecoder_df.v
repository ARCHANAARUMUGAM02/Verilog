`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 09:47:03
// Design Name: 
// Module Name: two_fourdecoder_df
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


module two_fourdecoder_df(input [1:0]a,[3:0]d);
assign d[0]=~a[1]&~a[0];
assign d[1]=~a[1]&a[0];
assign d[2]=a[1]&~a[0];
assign d[3]=a[1]&a[0];
endmodule
