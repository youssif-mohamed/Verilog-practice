`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2023 11:22:09 AM
// Design Name: 
// Module Name: mux_2x1_3bit
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


module mux_2x1_3bit(
input [2:0] X,
input [2:0] Y,
input s,
output [2:0] M

    );
    
    mux_2x1_simple n(X[0], Y[0], s, M[0]);
    mux_2x1_simple m(X[1], Y[1], s, M[1]);
    mux_2x1_simple b(X[2], Y[2], s, M[2]);
    
endmodule
