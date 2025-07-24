`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 21:29:43
// Design Name: 
// Module Name: two_1mux_tb
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


module two_1mux_tb();
reg i0,i1,s;
wire out;
two_mux_bitwise uut(.i0(i0),.i1(i1),.s(s),.out(out));
initial begin
i0=1;i1=0;s=0;#10;
i0=1;i1=0;s=1;#10;
i0=0;i1=1;s=0;#10;
i0=0;i1=1;s=1;#10;
end
endmodule
