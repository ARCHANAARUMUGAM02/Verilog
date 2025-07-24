`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 10:50:29
// Design Name: 
// Module Name: paritygen_dftb
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


module paritygen_dftb();
reg x0,x1,x2,x3,x4,x5,x6,x7,x8;
wire ep,op;
parity_gendf uut(.x0(x0),.x1(x0),.x2(x2),.x3(x3),.x4(x4),.x5(x5),.x6(x6),.x7(x7),.x8(x8),.ep(ep),.op(op));
initial begin
x0=9'b000000111;#10;
x1=9'b000000001;#10;
x2=9'b000000010;#10;
x3=9'b000000110;#10;
x4=9'b110000000;#10;
x5=9'b111000000;#10;
x6=9'b100000001;#10;
x7=9'b010000010;#10;
x8=9'b111110001;#10;
end
endmodule
