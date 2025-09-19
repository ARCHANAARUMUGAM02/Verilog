`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2025 16:38:08
// Design Name: 
// Module Name: pipo_tb
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


module pipo_tb();
reg clk,rst;
reg [3:0]d;
wire [3:0]q;
pipo #(4) uut (.clk(clk),.rst(rst),.d(d),.q(q));
always #5 clk=~clk;
initial begin
clk=0;
rst=1;
d=4'b0000;#10;
rst=0;
d=4'b1010;#10;
d=4'b1100;#10;
rst=1;
end
endmodule
