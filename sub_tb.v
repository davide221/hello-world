`timescale 1ns / 1ps

module sub_tb;

  // Testbench variables
  reg clk;
  reg reset_l;

  // Instantiate the Unit Under Test (UUT)
  sub uut (
    .clk(clk),
    .reset_l(reset_l)
  );

  // Clock generation
  always #5 clk = ~clk; // Generate a clock with a period of 10ns

  // Test sequence
  initial begin
    // Initialize Inputs
    clk = 0;
    reset_l = 0;

    // Reset the design
    #10;
    reset_l = 1;
    #10;
    reset_l = 0;
    #10;
    reset_l = 1;

    // Wait for the test to complete
    // (the *-* All Finished *-* message and $finish in the design)
  end

endmodule