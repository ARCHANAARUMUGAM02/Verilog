`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 10:06:01
// Design Name: 
// Module Name: four_twoencodertb
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


module four_twoencodertb();
reg [3:0]d;
wire [1:0]a;
two_fourencoder_df uut(.a(a),.d(d));
initial
begin
d=4'b1000;#10;
d=4'b0100;#10;
d=4'b0010;#10;
d=4'b0001;#10;
end
endmodule
