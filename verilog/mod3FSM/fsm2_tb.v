`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:07:18 08/23/2019
// Design Name:   fsm
// Module Name:   E:/GROUP 16/asg7_new_COA/Asg7/fsm2_tb.v
// Project Name:  Asg7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fsm2_tb;

	// Inputs
	reg reset;
	reg sel;
	reg clk;

	// Outputs
	wire cout;
	wire slow_clock;

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.reset(reset), 
		.cout(cout), 
		.sel(sel), 
		.clk(clk),
		.slow_clock(slow_clock)
	);
	
	initial begin
		clk = 0;
		forever #1 clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
		reset = 0;
		sel = 0;
		clk = 0;
		#5;reset =1;
		#5;reset = 0;
		// Wait 100 ns for global reset to finish
		#10 sel = 1; 
		#10 sel = 0; 
		#10 sel = 1; 
		#10 sel = 1; 
		#10 sel = 1; 
		#10 sel = 0; 
		#10 sel = 0; 
		#10 sel = 0; 
		#10 sel = 1; 
		#10 sel = 1; 
		#10 sel = 1;
		#10 sel = 1;
		#10 sel = 0;
		#10 sel = 1;
		#10 sel = 0;
		#10 sel = 1;
		#10 sel = 0;
		#10 sel = 1;
		#10 sel = 1; 
		#10 sel = 0; 
		#10 sel = 1; 
		#10 sel = 1; 
		#10 sel = 1; 
		#10 sel = 0; 
		#10 sel = 0; 
		#10 sel = 0; 
		#10 sel = 1; 
		#10 sel = 1; 
		#10 sel = 1;
		#10 sel = 1;
		#10 sel = 0;
		#10 sel = 1;
		#10 sel = 0;
		#10 sel = 1;
		#10 sel = 0;
		#10 sel = 1;
		#10 sel = 1; 
		#10 sel = 0; 
		#10 sel = 1; 
		#10 sel = 1; 
		#10 sel = 1; 
		#10 sel = 0; 
		#10 sel = 0; 
		#10 sel = 0; 
		#10 sel = 1; 
		#10 sel = 1; 
		#10 sel = 1;
		#10 sel = 1;
		#10 sel = 0;
		#10 sel = 1;
		#10 sel = 0;
		#10 sel = 1;
		#10 sel = 0;
		#10 sel = 1;
		


        
		// Add stimulus here

	end
      
endmodule

