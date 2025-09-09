`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 10:11:03
// Design Name: 
// Module Name: dual_port_ram
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


module dram_ds#(parameter WIDTH = 8,
		        ADDR = 6)
	(input clk,
	input ena,enb,
	input wra,wrb,
	input [WIDTH-1:0]din_a,
	input [WIDTH-1:0]din_b,
	input [ADDR-1:0]addr_a,
	input [ADDR-1:0]addr_b,
	output reg [WIDTH-1:0]dout_a,
	output reg [WIDTH-1:0]dout_b);

reg [WIDTH-1:0] mem [0:63];

always@(posedge clk)
begin
	if(ena && wra)
		mem[addr_a] <= din_a;
	else if (ena && !wra)
		dout_a <= mem[addr_a];
end


always@(posedge clk)
begin
	if(enb && wrb)
		mem[addr_b] <= din_b;
	else if (enb && !wrb)
		dout_b <= mem[addr_b];
end

endmodule