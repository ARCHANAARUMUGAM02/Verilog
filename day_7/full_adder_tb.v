`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 17:06:14
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg [7:0]a8bit,b8bit;
reg cin_8bit;
wire[7:0]sum8bit;
wire cout_8bit;
parameterized_full_adder#(8) uut1(.a(a8bit),.b(b8bit),.cin(cin_8bit),.sum(sum8bit),.carry(cout_8bit));
reg [15:0]a16bit,b16bit;
reg cin_16bit;
wire[15:0]sum16bit;
wire cout_16bit;
parameterized_full_adder#(16) uut(.a(a16bit),.b(b16bit),.cin(cin_16bit),.sum(sum16bit),.carry(cout_16bit));
initial begin
a8bit=8'd4;b8bit=8'd6;cin_8bit=0;#10;
a16bit=16'd5;b16bit=16'hc5;cin_16bit=1;#10;
end
endmodule
