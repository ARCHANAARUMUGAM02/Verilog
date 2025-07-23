`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 23:20:41
// Design Name: 
// Module Name: two_onetristate
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


module two_onetristate(input x,y,s,output f);
bufif0 buf_1(f,x,s);
bufif1 buf_2(f,y,s);
endmodule
