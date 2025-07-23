`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 13:39:33
// Design Name: 
// Module Name: transmission_gate
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


module transmission_gate(output out, input a, ctrl);
wire c ;
supply1 Vdd;
supply0 Gnd;
not(n_ctrl, ctrl); 
pmos p1(out, a, n_ctrl);
nmos n1(out, a, ctrl);
endmodule
