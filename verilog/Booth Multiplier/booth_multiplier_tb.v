`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:25:15 09/02/2019
// Design Name:   booth_multiplier
// Module Name:   E:/GROUP 16/Assgn_8_Grp_16.s/Multipliers/booth_multiplier_tb.v
// Project Name:  Multipliers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: booth_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module booth_multiplier_tb;

	// Inputs
	reg clk;
	reg load;
	reg reset;
	reg [5:0] M;
	reg [5:0] Q;

	// Outputs
	wire [11:0] P;

	// Instantiate the Unit Under Test (UUT)
	booth_multiplier uut (
		.clk(clk), 
		.load(load), 
		.reset(reset), 
		.M(M), 
		.Q(Q), 
		.P(P)
	);
	
	always
		#10 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		load = 0;
		reset = 0;
		M = 6'b101010;
		Q = 6'b101111;
		#2;
		load = 1;
		#12;
		load = 0;
		#2;
		M = 1;
		Q = 7;
		
		#100;

	end
      
endmodule


