`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 15:03:21
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
reg clk, d;
reg [1:0] dly;
wire q;
integer i;
dff_udp uut (q, clk, d);
always #10 clk = ~clk;
initial begin
clk = 0;#10;  
for (i = 0; i < 20; i = i+1) begin
dly = $random;
repeat(dly) @(posedge clk);
d <= $random;
end
end
endmodule
