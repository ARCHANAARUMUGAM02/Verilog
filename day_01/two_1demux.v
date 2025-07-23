`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 15:10:43
// Design Name: 
// Module Name: two_1demux
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


module two_1demux(input d,s,output y0,y1);
not not_1(not_out,s);
and and_1(y0,not_out,d);
and and_2(y1,s,d);
endmodule
