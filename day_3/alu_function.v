`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 12:09:00
// Design Name: 
// Module Name: alu_function
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


module alu_function(input wire [3:0]a,
input wire [3:0]b,
input wire [1:0]op,
output wire [3:0]y
);
function automatic [3:0]alu_fun;
input [3:0] x;
input [3:0] y;
input [1:0]opcode;
begin
case(opcode)
            2'b00: alu_fun= x + y;      
            2'b01: alu_fun = x - y;      
            2'b10: alu_fun = x & y;       
            2'b11: alu_fun = x | y;       
            default: alu_fun = 4'b0000;
endcase
end
endfunction
assign y=alu_fun(a,b,op);
endmodule
