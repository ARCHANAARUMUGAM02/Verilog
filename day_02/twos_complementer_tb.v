`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 16:08:14
// Design Name: 
// Module Name: twos_complementer_tb
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


module twos_complementer_tb();
reg [3:0]x,y;
reg c_in;
wire [3:0]sum,t ,c_out;
twos_comp_adder uut (.x(x),.y(y),.c_in(c_in),.sum(sum),.c_out(c_out),.t(t));
initial begin
x=4'd5;y=4'd6;c_in=0;#10;
x=4'd7;y=4'd4;c_in=0;#10;
x=4'd3;y=4'd2;c_in=0;#10;
x=4'd5;y=4'd4;c_in=0;#10;
end
endmodule