`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 07:21:55
// Design Name: 
// Module Name: twofourdecoder_tb
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


module twofourdecoder_tb();
reg a1,a0;
wire d0,d1,d2,d3;
twofour_decoder uut (.a1(a1),.a0(a0),.d0(d0),.d1(d1),.d2(d2),.d3(d3));
initial begin
a0=0;a1=0;#10;
a0=0;a1=1;#10;
a0=1;a1=0;#10;
a0=1;a1=1;#10;
end
endmodule
