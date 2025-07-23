`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 07:16:52
// Design Name: 
// Module Name: twofour_decoder
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


module twofour_decoder(input a0,a1,output d0,d1,d2,d3);
not not_1(not_a0,a0);
not not_2(not_a1,a1);
and and_1(d0,not_a0,not_a1);
and and_2(d1,not_a0,a1);
and and_3(d2,a0,not_a1);
and and_4(d3,a0,a1);
endmodule
