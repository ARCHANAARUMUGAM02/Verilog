`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 12:24:44
// Design Name: 
// Module Name: alu_testbench
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


module alu_testbench();

reg  [3:0] a, b;
reg  [1:0] op;
wire [3:0] y;
alu_function ut (.a(a),
    .b(b),
    .op(op),
    .y(y)
);
initial begin
a='d5;b='d8;op=2'b00;#10;
a='d7;b='d8;op=2'b01;#20;
a=1'b0;b=1'b1;op=2'b10;#40;
a=1'b1;b=1'b0;op=2'b11;#50;
end
endmodule

