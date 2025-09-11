`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 09:45:47
// Design Name: 
// Module Name: 8_3_priority_encoder
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


module eight_three_priority_encoder(
input[7:0]data,
output reg[2:0]out);
always@(*)begin
casez(data)
8'b1???????:out=3'b111;
8'b01??????:out=3'b110;
8'b001?????:out=3'b101;
8'b0001????:out=3'b100;
8'b00001???:out=3'b011;
8'b000001??:out=3'b010;
8'b0000001?:out=3'b001;
8'b00000001:out=3'b000;
default:out=3'bxxx;
endcase
end
endmodule
