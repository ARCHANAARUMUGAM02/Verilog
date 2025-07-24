`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 07:17:42
// Design Name: 
// Module Name: two_muxbw_tb
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


module two_muxbw_tb();
reg s,d;
wire y0,y1;
demux2_1bitwe uut(s,d,y0,y1);
initial begin
s=0;d=0;#10;
s=1;d=1;#10;
end
endmodule
