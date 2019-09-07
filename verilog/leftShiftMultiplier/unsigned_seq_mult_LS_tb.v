`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:27:51 08/26/2019
// Design Name:   unsigned_seq_mult_LS
// Module Name:   E:/GROUP 16/asg7_new_COA/Multipliers/unsigned_seq_mult_LS_tb.v
// Project Name:  Multipliers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: unsigned_seq_mult_LS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module unsigned_seq_mult_LS_tb;

	// Inputs
	
	reg system_clk;
	reg rst;
	reg load;

	reg [5:0] a;
	reg [5:0] b;

	// Outputs
	wire [11:0] product;
	wire [5:0] X;
	wire [5:0] Y;
	wire clk;
	// Instantiate the Unit Under Test (UUT)
	unsigned_seq_mult_LS uut (
		.system_clk(system_clk),
		.clk(clk), 
		.rst(rst), 
		.load(load), 
		
		.a(a), 
		.b(b), 
		.product(product),
		.X(X),
		.Y(Y)
	);

	always
		#2.5 system_clk = ~system_clk;
		
	initial begin
		// Initialize Inputs
		system_clk = 0;
		rst = 0;
		#2;
		rst = 0;
		load = 1;
		a =  13;
		b = 20;

		// Wait 100 ns for global reset to finish
		#10;
        
		a = 13; b = 20; 
		#10; 
		load = 0; 
	
		#130;
		a= 12;  b = 24;
		#2;load = 1;
		
		#20; 
		load = 0; 
		

	end
      
endmodule

