`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 22:30:59
// Design Name: 
// Module Name: nine_bitparity
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


module nine_bitparity(input x0,x1,x2,x3,x4,x5,x6,x7,x8,output ep,op );
wire c,d,e,f,g,h,i;
xor xor_1(c,x0,x1);
xor xor_2(d,x2,x3);
xor xor_3(e,x4,x5);
xor xor_4(f,x6,x7);
xor xor_5(g,c,d);
xor xor_6(h,e,f);
xor xor_7(i,g,h);
xor xor_8(ep,x8,i);
xnor xnor_1(op,x8,i);
endmodule
