`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:50:35 11/05/2019
// Design Name:   RISCMain
// Module Name:   D:/Amatya Sharma/COA/Lab/ASG10_4_11/RISC_1/main_tb.v
// Project Name:  blk_mem_gen_v7_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RISCMain
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_tb;

	// Inputs
	reg clk;

	// Outputs
	wire slo_clk;

	// Instantiate the Unit Under Test (UUT)
	RISCMain uut (
		.clk(clk), 
		.slo_clk(slo_clk)
	);
	always #1 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10 ;
        
		// Add stimulus here

	end
      
endmodule

