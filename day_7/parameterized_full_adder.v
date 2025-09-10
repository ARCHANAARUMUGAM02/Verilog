`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 17:01:28
// Design Name: 
// Module Name: parameterized_full_adder
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


module parameterized_full_adder#(parameter WIDTH=1)
(input wire[WIDTH-1:0]a,
input wire[WIDTH-1:0]b,
input  wire cin,
output  wire[WIDTH-1:0]sum,
output  wire carry);
assign {carry,sum}=a+b+cin;
endmodule
