`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 10:34:21
// Design Name: 
// Module Name: parity_gendf
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


module parity_gendf(input x0,x1,x2,x3,x4,x5,x6,x7,x8,output ep,op );
assign ep=(((x0^x1)^(x2^x3))^((x4^x5)^(x6^x7))^x8);
assign op=(((x0^x1)^(x2^x3))^((x4^x5)^(x6^x7))~^x8);
endmodule
