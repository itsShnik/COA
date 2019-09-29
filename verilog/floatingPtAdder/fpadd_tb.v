`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:38:35 09/26/2019
// Design Name:   fpadd
// Module Name:   D:/Amatya Sharma/COA/Lab/fp_adder/fp_adder_26_9/fpadd_tb.v
// Project Name:  fp_adder_26_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fpadd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fpadd_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg clk;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	fpadd uut (
		.a(a),  
		.b(b),  
		.clk(clk),  
		.out(out)
	);
	
	always #100 clk = ~clk ;
	
	initial begin
		// Initialize Inputs

		a = 0;
		b = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#11;

		// Add stimulus here
	
		a = 32'b00011001101010101010101010101010;
		b = 32'b00011000001010101010101010101011;
		#11;
		
	end
      
endmodule

