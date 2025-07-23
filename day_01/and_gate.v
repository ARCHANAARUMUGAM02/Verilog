`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 15:03:30
// Design Name: 
// Module Name: and_gate
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

//AND GATE
module basic gates();
module and_gate(
input a,b,
output out_and
);
assign out_and=a&b;
endmodule

//OR GATE 
module or_gate(
input a,b,
output out_or
);
assign out_or=a|b;
endmodule
 
//NAND GATE
module nand_gate(
input a,b,
output out_nand);
assign out_nand=~(a&b);
endmodule

//NOR GATE
module nor_gate(
input a,b,
output out_nor);
assign out_nor=~(a|b);
endmodule

//NOT GATE
module not_gate(
input a,
output out_not);
assign out_not=~a;;
endmodule

//XOR GATE

module xor_gate(
input a,b,
output out_xor);
assign out_xor=(a^b);
endmodule;

// XNOR GATE
module xnor_gate(
input a,b,
output out_xnor);
assign out_xnor=~(a^b);
endmodule
endmodule






