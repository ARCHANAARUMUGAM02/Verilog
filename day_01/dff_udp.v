`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 14:50:15
// Design Name: 
// Module Name: dff_udp
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


primitive dff_udp(output q,input clk,d);
reg q;
table
(01) 0:?:0;
(01) 1:?:1;
(0?) 1:1:1;
(0?) 0:0:0;
(?0) ?:?:-;
?    (??):?:-;
endtable
endprimitive
