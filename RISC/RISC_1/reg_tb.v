`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:49:05 10/26/2019
// Design Name:   Registers
// Module Name:   D:/Amatya Sharma/COA/Lab/Asg10/reg_tb.v
// Project Name:  Asg10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Registers
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_tb;

	// Inputs
	reg [4:0] r1;
	reg [4:0] r2;
	reg [4:0] r3;
	reg [31:0] r3_value;
	reg clk;
	reg writeEnable;
	reg raWrite;
	reg [31:0]ra_value;

	// Outputs
	wire [31:0] r1_value;
	wire [31:0] r2_value;
	wire [31:0] ra_read_value;

	// Instantiate the Unit Under Test (UUT)
	Registers uut (
		.r1(r1), 
		.r2(r2), 
		.r3(r3), 
		.r3_value(r3_value), 
		.clk(clk), 
		.writeEnable(writeEnable), 
		.raWrite(raWrite), 
		.ra_value(ra_value), 
		.r1_value(r1_value), 
		.r2_value(r2_value), 
		.ra_read_value(ra_read_value)
	);

	always #10 clk = !clk;
	
	initial begin
		// Initialize Inputs
		r1 = 0;
		r2 = 0;
		r3 = 0;
		r3_value = 0;
		clk = 0;
		writeEnable = 0;
		raWrite = 0;
		ra_value = 0;
		
		#10;
		r1 = 4;
		r2 = 2;
		r3 = 7;
		
		#10;
		writeEnable = 1;
		r3 = 7;
		r3_value = 88;
		
		#10;
		writeEnable =  0;
		r3_value  =0;
		r1 = 7;
		
		#10;
		raWrite = 1;
		//ra = 2;
		ra_value = 77;
		
		#10;
		raWrite =  0;
		ra_value = 0;
		r1 = 1;
		r2 = 7;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

