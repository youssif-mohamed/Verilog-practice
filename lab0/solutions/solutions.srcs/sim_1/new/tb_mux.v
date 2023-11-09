`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2023 03:38:49 PM
// Design Name: 
// Module Name: tb_mux
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


module tb_mux_4x1_3bit;

  // Inputs
  reg [2:0] X, Y, Z, W;
  reg s1, s0;
  
  // Output
  wire [2:0] M;
  
  // Instantiate the mux_4x1_3bit module
  mux_4x1_3bit uut(
    .X(X),
    .Y(Y),
    .Z(Z),
    .W(W),
    .s1(s1),
    .s0(s0),
    .M(M)
  );
  
  // Clock generation
  reg clk = 0;
  always begin
    #5 clk = ~clk;
  end
  
  // Test stimulus
  initial begin
    // Initialize inputs
    X = 3'b000;
    Y = 3'b001;
    Z = 3'b010;
    W = 3'b011;
    s1 = 0;
    s0 = 0;
    
    // Test case 1
    $display("Test Case 1:");
    $display("Input: X=000, Y=001, Z=010, W=011, s1=0, s0=0");
    #10 s1 = 0;
    #10 s0 = 1;
    $display("Output: M=%b", M);
    
    // Test case 2
    $display("Test Case 2:");
    $display("Input: X=000, Y=001, Z=010, W=011, s1=0, s0=1");
    #10 s1 = 1;
    #10 s0 = 0;
    $display("Output: M=%b", M);
    
    // Test case 3
    $display("Test Case 3:");
    $display("Input: X=000, Y=001, Z=010, W=011, s1=1, s0=0");
    #10 s1 = 1;
    #10 s0 = 1;
    $display("Output: M=%b", M);
    
    // Add more test cases as needed
    
    // End simulation
    $finish;
  end
  
  // Apply clock to the design
  always begin
    #5 clk = ~clk;
  end
  
endmodule

