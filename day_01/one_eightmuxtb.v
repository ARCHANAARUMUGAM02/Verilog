`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 07:38:40
// Design Name: 
// Module Name: one_eightmuxtb
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


module one_eightmuxtb();
reg [2:0]s;
reg d;
wire [7:0]y;
demux_eight_1 uut(.s(s),.y(y),.d(d));
initial begin
s=3'b000;d=1'b1;#10;
s=3'b001;d=1'b1;#10;
s=3'b010;d=1'b1;#10;
s=3'b011;d=1'b1;#10;
s=3'b100;d=1'b1;#10;
s=3'b101;d=1'b1;#10;
s=3'b110;d=1'b1;#10;
s=3'b111;d=1'b1;#10;
end
endmodule
