`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 23:23:46
// Design Name: 
// Module Name: buffer_tb
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


module buffer_tb();
reg x,y,s;
wire f;
two_onetristate uut(.x(x),.y(y),.s(s),.f(f));
initial begin
x=0;y=1;s=0;#10;
x=0;y=1;s=1;#10;
x=1;y=0;s=0;#10;
x=1;y=0;s=1;#10;
end
endmodule
