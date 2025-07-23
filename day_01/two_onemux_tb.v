`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 12:46:50
// Design Name: 
// Module Name: two_onemux_tb
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


module two_onemux_tb();
reg io,i1,s;
wire y;
two_1mux uut(.io(io),.i1(i1),.s(s),.y(y));
initial begin
io=1;i1=0;s=0;#10;
io=1;i1=0;s=1;#10;
io=0;i1=1;s=0;#10;
io=0;i1=1;s=1;#10;
end
endmodule
