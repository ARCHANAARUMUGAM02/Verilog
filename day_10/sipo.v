`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2025 17:17:00
// Design Name: 
// Module Name: piso
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


module sipo #(parameter N=4)(
input clk,rst,
input serial_in,
output reg [N-1:0]q);
always@(posedge clk or posedge rst )begin
if(rst)
q<=0;
else
q={q[N-2:0],serial_in};
end
endmodule
