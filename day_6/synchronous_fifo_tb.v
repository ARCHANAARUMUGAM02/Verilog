`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 16:52:44
// Design Name: 
// Module Name: synchronous_fifo_tb
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


module synchronous_fifo_tb ;
parameter DEPTH=8;
parameter DATA_WIDTH=8;
reg clk,rst;
reg w_en,r_en;
reg [DATA_WIDTH-1:0] data_in;
wire [DATA_WIDTH-1:0] data_out;
wire full,empty;
synchronous_fifo #(DEPTH, DATA_WIDTH) uut (
    .clk(clk),
    .rst(rst),
    .w_en(w_en),
    .r_en(r_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
  );
  always #5 clk=~clk;
  initial begin
    clk = 0;
    rst = 1;
    w_en = 0;
    r_en = 0;
    data_in = 0;
    #10 rst = 0;
repeat(4)begin
@(negedge clk)
w_en=1;
data_in=$random%256;
end
@(negedge clk)
w_en=0;
repeat (4) begin
@(negedge clk);
r_en = 1;
end
@(negedge clk) r_en = 0;
#20 $finish;
end
endmodule
