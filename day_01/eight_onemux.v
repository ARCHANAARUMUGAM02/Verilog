`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 21:54:07
// Design Name: 
// Module Name: eight_onemux
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


module eight_onemux( input [7:0] i,[2:0]sel,output y);
assign y = (sel == 3'b000) ? i[0] :
           (sel == 3'b001) ? i[1] :
           (sel == 3'b010) ? i[2] :
           (sel == 3'b011) ? i[3] :
           (sel == 3'b100) ? i[4] :
           (sel == 3'b101) ? i[5] :
           (sel == 3'b110) ? i[6] :
            i[7] ;
           endmodule
