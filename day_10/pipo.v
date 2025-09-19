`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2025 16:34:45
// Design Name: 
// Module Name: pipo
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


module pipo#(parameter N=4)
(input clk,rst,
input [N-1:0]d,
output  reg [N-1:0]q);
always@(posedge clk or posedge rst)begin
if(rst)
q<=0;
else
q<=d;
end
endmodule
