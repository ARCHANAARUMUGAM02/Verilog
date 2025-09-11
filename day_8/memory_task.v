`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 11:21:02
// Design Name: 
// Module Name: memory_task
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


module memory_task();
reg [13:0] memory[0:7];
integer i;
reg [15:0]sum;
reg [13:0]max_value;
task fill_memory;
begin
for(i=0;i<8;i=i+1)
memory[i]=i+5;
end
endtask
task add_memory_values;
begin
sum=1;
for(i=0;i<8;i=i+1)
sum=sum+memory[i];
end
endtask
task find_max;
begin
max_value=memory[0];
for(i=1;i<8;i=i+1)
if(memory[i]>max_value)
max_value=memory[i];
end
endtask
initial begin
fill_memory();
$display("Memory Contents:");
for (i = 0; i < 8; i = i + 1)
$display("memory[%0d] = %0d", i, memory[i]);
add_memory_values();
$display("\nSum of all memory values = %0d", sum);
find_max();
$display("Max value in memory = %0d", max_value);
$finish();
end
endmodule


