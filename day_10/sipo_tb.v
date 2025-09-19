`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2025 17:35:46
// Design Name: 
// Module Name: piso_tb
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


module sipo_tb();
reg clk, rst, serial_in;
wire [3:0] q;
sipo #(4) uut (
        .clk(clk),
        .rst(rst),
        .serial_in(serial_in),
        .q(q)
    );

    // Clock generation (10ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // toggle every 5ns ? 100MHz
    end

    // Stimulus
    initial begin
        // Initialize
        rst = 1;
        serial_in = 0;
        #10;
        
        rst = 0;   // release reset

        // Apply serial data stream: 1, 0, 1, 1
        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;

        // Add a few more values
        serial_in = 0; #10;
        serial_in = 1; #10;

        // Finish simulation
        #20;
        $stop;
    end

endmodule

