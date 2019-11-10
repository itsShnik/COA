`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:15 10/21/2019
// Design Name:   ProgramCounter
// Module Name:   E:/GROUP 16/RISC_1/PC_tb.v
// Project Name:  blk_mem_gen_v7_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ProgramCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_tb;

	// Inputs
	reg clk;
	reg isBranch;
	reg [24:0] jump_value;

	// Outputs
	wire [31:0] next_instr;

	// Instantiate the Unit Under Test (UUT)
	ProgramCounter uut (
		.clk(clk), 
		.isBranch(isBranch), 
		.jump_value(jump_value), 
		.next_instr(next_instr)
	);
	
	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		//#33;
		clk = 1;
		isBranch = 0;
		jump_value = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

