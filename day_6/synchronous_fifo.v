`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 16:07:20
// Design Name: 
// Module Name: synchronous_fifo
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


module synchronous_fifo#(DEPTH=8,DATA_WIDTH=8)
(input clk,rst,input w_en,r_en,input[DATA_WIDTH-1:0]data_in,
output reg [DATA_WIDTH-1:0]data_out,output full,empty);
reg[$clog2(DEPTH)-1:0]wr_ptr,rd_ptr;
reg [DATA_WIDTH-1:0] fifo [0:DEPTH-1];
always @(posedge clk) begin
  if (rst) begin
    rd_ptr <= 0;
    wr_ptr <= 0;
    data_out <= 0;
  end
end
always @(posedge clk) begin
    if (!rst) begin
      if (w_en && !full) begin
        fifo[wr_ptr] <= data_in;
        wr_ptr <= wr_ptr + 1;
      end
    end
  end
always @(posedge clk) begin
    if (!rst) begin
      if (r_en && !empty) begin
        data_out <= fifo[rd_ptr];
        rd_ptr <= rd_ptr + 1;
      end
    end
  end
assign full = ((wr_ptr+1'b1) == rd_ptr);
assign empty = (wr_ptr == rd_ptr);
endmodule
