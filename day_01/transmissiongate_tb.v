`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 13:45:49
// Design Name: 
// Module Name: transmissiongate_tb
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


module transmissiongate_tb();
reg a,ctrl;
wire out;
transmission_gate uut(.a(a),.ctrl(ctrl),.out(out));
initial begin
a=0;ctrl=0;#10;
a=1;ctrl=1;#10;
a=0;ctrl=1;#10;
end
endmodule
