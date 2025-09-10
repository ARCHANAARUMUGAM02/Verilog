`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 19:28:04
// Design Name: 
// Module Name: moore_sequence_tb
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


module moore_sequence_tb();
reg clk,rst,x;
wire y;
moore_sequence_detector uut (.clk(clk),.rst(rst),.x(x),.y(y));
reg[15:0]test_vector;
integer i;
always#5 clk=~clk;
initial begin
clk = 0; rst = 1; x = 0;
#12 rst = 0;
test_vector= 17'b01011011110101100;
for (i = 16; i >= 0; i = i - 1) begin
x = test_vector[i];
#10;
end
#20 $finish;
end
endmodule


