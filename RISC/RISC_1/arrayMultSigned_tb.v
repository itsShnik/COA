`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:51:09 10/30/2019
// Design Name:   arrayMultiplierSigned
// Module Name:   D:/Amatya Sharma/COA/Lab/Asg10/arrayMultSigned_tb.v
// Project Name:  Asg10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: arrayMultiplierSigned
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module arrayMultSigned_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [63:0] p;

	// Instantiate the Unit Under Test (UUT)
	arrayMultiplierSigned uut (
		.a(a), 
		.b(b), 
		.p(p)
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
			a = 7;
			b = -9;
		
		#10;
			a = 10;
			b = 6;
		
		#10;
			a = -9;
			b = -34;
        
		// Add stimulus here

	end
      
endmodule

