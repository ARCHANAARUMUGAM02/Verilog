`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 13:10:29
// Design Name: 
// Module Name: ram_memory
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


module ram_memory(
input wire clk,
input wire we,
input wire [3:0]addr,
input wire [7:0]din,
output reg [7:0]dout );
reg [3:0]mem[15:0];
always@(negedge clk)begin
if(we)
mem[addr]<=din;
else 
dout<=mem[addr];
end
endmodule
