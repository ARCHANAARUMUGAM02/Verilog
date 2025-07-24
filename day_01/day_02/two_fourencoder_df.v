`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 10:00:30
// Design Name: 
// Module Name: two_fourencoder_df
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


module two_fourencoder_df(input[3:0]d,output [1:0]a);
assign a[0]=d[1]|d[3];
assign a[1]=d[2]|d[3];
endmodule
