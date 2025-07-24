`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 09:51:20
// Design Name: 
// Module Name: two_fourdecodtb_df
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


module two_fourdecodtb_df();
reg [1:0]a;
wire [3:0]d;
two_fourdecoder_df uut(.a(a),.d(d));
initial
begin
a[1]=0;a[0]=0;#10;
a[1]=0;a[0]=1;#10;
a[1]=1;a[0]=0;#10;
a[1]=1;a[0]=1;#10;
end
endmodule

