`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 19:04:56
// Design Name: 
// Module Name: moore_sequence_detector
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


module moore_sequence_detector(input clk,rst,x,output reg y);
parameter [2:0] idle=3'b000,
                first=3'b001,
                second=3'b010,
                third=3'b011,
                four=3'b100,
                five=3'b101;
reg [2:0]state,next_state;
always@(posedge clk or posedge rst)begin
if(rst)
state<=idle;
else
state<=next_state;
end
always@(*)begin
y=0;
case(state)
 idle:begin
 if(x)
 next_state=first;
 else
 next_state=idle;
 end
 first:begin
 if(!x)
 next_state=second;
 else
 next_state=first;
 end
 second:begin
 if(x)
 next_state=third;
 else
 next_state=idle;
 end
 third:begin
 if(x)
 next_state=four;
 else
 next_state=second;
 end
 four:begin
 if(!x)
 next_state=five;
 else
 next_state=first;
 end
 five:begin
 y=1;
 if(x)
 next_state=five;
 else
 next_state=idle;
 end
 endcase
 end
 endmodule
