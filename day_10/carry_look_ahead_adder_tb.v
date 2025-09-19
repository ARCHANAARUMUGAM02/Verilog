`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2025 16:12:34
// Design Name: 
// Module Name: carry_look_ahead_adder_tb
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


module carry_look_ahead_adder_tb();
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    carry_look_ahead_adder uut (
        .a(a), .b(b), .cin(cin),
        .sum(sum), .cout(cout)
    );

    initial begin
        $monitor("Time=%0t | a=%b b=%b cin=%b => sum=%b cout=%b",
                  $time, a, b, cin, sum, cout);

      
        a=4'b0000; b=4'b0000; cin=0; #10;
        a=4'b0101; b=4'b0011; cin=0; #10;  // 5 + 3 = 8
        a=4'b1111; b=4'b0001; cin=0; #10;  // 15 + 1 = 16
        a=4'b1010; b=4'b0101; cin=1; #10;  // 10 + 5 + 1 = 16
        a=4'b1111; b=4'b1111; cin=1; #10;  // 15 + 15 + 1 = 31
        $finish;
    end
endmodule

