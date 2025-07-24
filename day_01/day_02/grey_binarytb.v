`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:21:26
// Design Name: 
// Module Name: grey_binarytb
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


module grey_binarytb();
reg [2:0]g;
wire [2:0]b;
graytobinary_df u1(.b(b),.g(g));
initial 
begin
g=3'b000;#10;
g=3'b001;#10;
g=3'b010;#10;
g=3'b011;#10;
g=3'b100;#10;
g=3'b101;#10;
g=3'b110;#10;
g=3'b111;#10;
end
endmodule
