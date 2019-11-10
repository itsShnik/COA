`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:03:20 08/14/2019
// Design Name:   hybridAdder
// Module Name:   E:/GROUP 16/Asg7/hybridAdder_tb.v
// Project Name:  Asg7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hybridAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hybridAdder_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg c_in;

	// Outputs
	wire c_out;
	wire [31:0] S;

	// Instantiate the Unit Under Test (UUT)
	hybridAdder uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.c_out(c_out), 
		.S(S)
	);

	initial begin
		a = 	14;
		b = 	11;
		c_in = 20;

		// Wait 100 ns for global reset to finish
		#100;
		a = 	12;
		b = 	11;
		c_in = 02;

		// Wait 100 ns for global reset to finish
		#100;
//		
		a = 	11;
		b = 	31;
		c_in = 07;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 	11;
		b = 	211;
		c_in = 20;

		// Wait 100 ns for global reset to finish
		#100;
//		
		a = 	51;
		b = 	11;
		c_in = 80;

		// Wait 100 ns for global reset to finish
		#100;
		a = 41;
		b = -27;
		
		#100;
		a = -49;
		b = -77;
		
		#100;
		a = -43;
		b = 27;
		
	end
      
endmodule

