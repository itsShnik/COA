`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:50:10 10/28/2019
// Design Name:   ALU
// Module Name:   E:/GROUP 16/Asg10/Asg10/alu_tb.v
// Project Name:  Asg10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [31:0] input1;
	reg [31:0] input2;
	reg [6:0] aluOp;
	reg clk;

	// Outputs
	wire [31:0] hi_value;
	wire [31:0] lo_value;
	wire zflag;
	wire overflowflag;
	wire carryflag;
	wire signflag;
	wire [31:0] ALUresult;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.input1(input1), 
		.input2(input2), 
		.aluOp(aluOp), 
		.hi_value(hi_value), 
		.lo_value(lo_value), 
		.zflag(zflag), 
		.overflowflag(overflowflag), 
		.carryflag(carryflag), 
		.signflag(signflag), 
		.ALUresult(ALUresult),
		.clk(clk)
	);
	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		input1 = 0;
		input2 = 0;
		aluOp = 0;
		clk = 0;
		#10;

		// Wait 100 ns for global reset to finish
		#20;
			aluOp = 7'b0010000;				// and
			input1 = 32'b111010101001011001;
			input2 = 32'b010101001101010111;
			
		
      #20;
			aluOp = 7'b0000000;				// xor
			input1 = 32'b11101010100101100101;
			input2 = 32'b01010100110101000000;
		
			
		 #20;
			aluOp = 7'b0000000;				// add
			input1 = 32'b11111111111111111111111111111111;
			input2 = 32'b10000000010000000010000000000000;
			
		#20;
			aluOp = 7'b0000001;				// multu
			input1 = 32'b01000000000000000000000000000000;
			input2 = 32'b01000000000000000000000000000000;
	
		#20;
			aluOp = 7'b0000010;				// mult
			input1 = 32'b10111111111111111111111111111111;
			input2 = 32'b01000000000000000000000000000000;
		
		#20;
			aluOp = 7'b0000011;				// comp
			input1 = 32'b11111111111111111111111111111111;// redundant
			input2 = 32'b10000000010000000010000000000000;
			
		#20;
			aluOp = 7'b0000100;				// addi
			input1 = 32'b00000000000000000000000000100000;
			input2 = 32'b00000000010000000010000000000000;
	
		#20;
			aluOp = 7'b0000000;				// compi
			input1 = 32;
			input2 = 32'b10000000010000000010000000000000;
			
		#20;
			aluOp = 7'b0100000;				// shll
			input1 = 32;
			input2 = 5;
			
		#20;
			aluOp = 7'b0100001;				// shrl
			input1 = 32;
			input2 = 32'b10000000000000000000000000000010;
		
			
        
		  
		  
		// Add stimulus here

	end
      
endmodule

