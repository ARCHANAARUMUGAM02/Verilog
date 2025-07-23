`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 14:18:10
// Design Name: 
// Module Name: four_1muxtb
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


module four_1muxtb();
reg [1:0]s;
reg [3:0]i;
wire y;
four_onemuxes uut (.s(s),.i(i),.y(y));
initial begin 
s[0]=0;s[1]=0;i[0]=2'b00;#10;
s[0]=0;s[1]=1;i[1]=2'b01;#10;
s[0]=1;s[1]=0;i[2]=2'b10;#10;
s[0]=1;s[1]=1;i[3]=2'b11;#10;
end
endmodule
