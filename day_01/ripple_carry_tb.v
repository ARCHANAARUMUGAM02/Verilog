`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 18:36:26
// Design Name: 
// Module Name: ripple_carry_tb
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


module ripple_carry_tb();
    reg a0, a1, a2, a3;       
    reg b0, b1, b2, b3;       
    reg c;                    
    wire [3:0] sum;           
    wire carry;               
    wire [3:0] a = {a3, a2, a1, a0};
    wire [3:0] b = {b3, b2, b1, b0};
    ripple_carryadder uut(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));
    initial begin
    {a3,a2,a1,a0} = 4'b0011;
    {b3,b2,b1,b0} = 4'b0101;
    c = 0;#10;
    {a3,a2,a1,a0} = 4'b1111;
    {b3,b2,b1,b0} = 4'b0001;
    c = 0;#10;
    {a3,a2,a1,a0} = 4'b1000;
    {b3,b2,b1,b0} = 4'b0111;
     c = 1;#10;
     {a3,a2,a1,a0} = 4'b0000;
     {b3,b2,b1,b0} = 4'b0000;
      c = 0; #10;
     {a3,a2,a1,a0} = 4'b1001;
     {b3,b2,b1,b0} = 4'b0110;
      c = 0; #10;
    end
endmodule


