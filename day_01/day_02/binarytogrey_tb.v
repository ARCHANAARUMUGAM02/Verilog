`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 11:49:34
// Design Name: 
// Module Name: binarytogrey_tb
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


module binarytogrey_tb();
reg [3:0]b;
wire [3:0]g;
binarytogrey_df uut(.g(g),.b(b));
initial
begin
b=4'b0111;#10;
b=4'b1110;#10;
b=4'b1000;#10;
b=4'b1011;#10;
b=4'b1111;#10;
b=4'b0101;#10;
b=4'b1001;#10;
b=4'b0100;#10;
end
endmodule
