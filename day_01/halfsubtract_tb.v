`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 06:50:37
// Design Name: 
// Module Name: halfsubtract_tb
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


module halfsubtract_tb();
    reg a,b;
    wire diff,borrow;
    half_subtractor uut(.a(a),.b(b),.diff(diff),.borrow(borrow));
    initial begin
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    end
    endmodule



