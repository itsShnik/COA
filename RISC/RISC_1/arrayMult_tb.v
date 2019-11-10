`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:26:16 10/30/2019
// Design Name:   arrayMultiplier
// Module Name:   D:/Amatya Sharma/COA/Lab/Asg10/arrayMult_tb.v
// Project Name:  Asg10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: arrayMultiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module arrayMult_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [63:0] y;

	// Instantiate the Unit Under Test (UUT)
	arrayMultiplier uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#10;
      
			a = 5;
			b = 7;
		
		#10;
			a = -5;
			b = 9;
		// Add stimulus here

	end
      
endmodule

