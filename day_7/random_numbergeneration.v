`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 18:27:21
// Design Name: 
// Module Name: random_numbergeneration
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


module random_numbergeneration();
integer rand_num;
integer i;
initial begin
for (i = 0; i < 10; i = i + 1) begin
rand_num = ($random % 201) - 100;
$display("Random number[%0d] = %0d", i, rand_num);
#10;
end
$finish;
end
endmodule
