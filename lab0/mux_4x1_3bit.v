`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2023 11:35:21 AM
// Design Name: 
// Module Name: mux_4x1_3bit
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


module mux_4x1_3bit(
input [2:0] X, Y, Z, W,
input  s1,s0,
output [2:0] M
    );
    wire [2:0] f1, f2;
    mux_2x1_3bit a(X, Z, s1,f1);
    mux_2x1_3bit b(Y, W, s1,f2);
    mux_2x1_3bit c(f1, f2, s0, M);
endmodule
