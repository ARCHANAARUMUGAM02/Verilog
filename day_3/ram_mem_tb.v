`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 13:23:13
// Design Name: 
// Module Name: ram_mem_tb
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


module ram_mem_tb();
reg clk,we;
reg [7:0]din;
reg [3:0]addr;
wire [7:0]dout;
integer i;
reg [7:0]test_data;
ram_memory dut (.clk(clk),.we(we),.addr(addr), .din(din),.dout(dout));
always #5 clk=~clk;

task write(input [3:0]a,input [7:0]d);
begin
@(negedge clk)
addr=a;
din=d;
we=1;
@(negedge clk);
we=0;
end 
endtask

// read operation 
task read(input[3:0]a);begin
@(negedge clk)
addr = a;
#1;
end
endtask

// initialize the value 
initial begin
 clk = 0 ;
//
for (i = 0; i < 1; i = i + 1) begin
  test_data = i * 3; 
end
//for (i = 0; i < 16; i = i + 1) begin
//end
for (i = 0; i < 1; i = i + 1) begin
read(i[3:0]);
end
write(i[3:0], test_data);
end
endmodule
