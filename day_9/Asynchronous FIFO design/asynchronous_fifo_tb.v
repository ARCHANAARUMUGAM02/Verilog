`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 12:23:00
// Design Name: 
// Module Name: asynchronous_fifo_tb
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


module asynchronous_fifo_tb();
  parameter DATASIZE = 8;
  parameter ADDRSIZE = 4;

  reg  [DATASIZE-1:0] wdata;
  reg  winc, wclk, wrst_n;
  reg  rinc, rclk, rrst_n;
  wire [DATASIZE-1:0] rdata;
  wire wfull, rempty;

  asynchronous_fifo_top #(DATASIZE, ADDRSIZE) uut (
    .rdata(rdata),
    .wfull(wfull),
    .rempty(rempty),
    .wdata(wdata),
    .winc(winc),
    .wclk(wclk),
    .wrst_n(wrst_n),
    .rinc(rinc),
    .rclk(rclk),
    .rrst_n(rrst_n)
  );

  // Clock generators
  initial begin
    wclk = 0;
    forever #5 wclk = ~wclk; // 100MHz
  end

  initial begin
    rclk = 0;
    forever #7 rclk = ~rclk; // ~71MHz
  end

  // Stimulus
  initial begin
    wrst_n = 0;
    rrst_n = 0;
    winc = 0;
    rinc = 0;
    wdata = 0;
    #20;
    wrst_n = 1;
    rrst_n = 1;

    // Write some data
 repeat (20) begin
      @(posedge wclk);
      if (!wfull) begin
        wdata <= $random;
        winc <= 1;
      end
    end
    winc <= 0;
// Read some data
    repeat (20) begin
      @(posedge rclk);
      if (!rempty) rinc <= 1;
      else rinc <= 0;
    end
    rinc <= 0;
    #100;
    $finish;
  end
  endmodule


