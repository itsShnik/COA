`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:50:59 08/26/2019
// Design Name:   single_mult
// Module Name:   E:/GROUP 16/asg7_new_COA/Multipliers/single_mult_tb.v
// Project Name:  Multipliers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: single_mult
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module single_mult_tb;

	// Inputs
	reg x;
	reg [5:0] Y;
	reg clk;

	// Outputs
	wire [11:0] P;
	wire [11:0] temp_out;
	wire [6:0]count_out;

	// Instantiate the Unit Under Test (UUT)
	single_mult uut (
		.x(x), 
		.Y(Y), 
		.clk(clk), 
		.P(P),
		.count_out(count_out),
		.temp_out(temp_out)
		
	);
	
	always  
		#5 clk = ~clk;
		
	initial begin
		// Initialize Inputs
		x = 0;
		Y = 13;
		clk = 0;
		#2;

		// Wait 100 ns for global reset to finish
		#10;
			x= 0; Y= 13;
			
		#10;
			x= 0; Y= 13;
			
		#10;
			x= 1; Y= 13;
			
		#10;
			x= 0; Y= 13;
		
		#10;
			x= 1; Y= 13;
			
		#10;
			x= 0; Y= 13;
			
//		#10;
//			x= 1; Y= 13;
//		
//		#10;
//			x= 1; Y= 13;
//			
//		#10;
//			x= 1; Y= 13;
//			
//		#10;
//			x= 1; Y= 13;
//			
//		#10;
//			x= 1; Y= 13;
        
		// Add stimulus here

	end
      
endmodule

