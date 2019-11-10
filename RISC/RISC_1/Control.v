`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:01 10/21/2019 
// Design Name: 
// Module Name:    Control 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Control(
		input [6:0]operation,
		//input clk,
		//output regDst, // use when you need three registers to check, which register to write to
		output branch,
		output memRead,
		output memToReg, // decide b/w alu ou/p and data memory o/p
		//output [6:0]aluOp, // bus to decode the operation and function
		output memWrite, // select line to data memory
		output aluSrc, // differentiates between register and constant for ALU
		output regWrite, // write to reg or not (if write : synchronous)
		output regBranch // to decide whethere jump to (rs) or L
	 );
	 
	 always @ (posedge clk)
	 begin
		if(operation[6:4] == 100) branch = 1; // if branch instructt
		else branch = 0;
				
		if(operation[6:0] == 0110000) memRead = 1; // if load word instruction
		else memRead = 0;
		
		if(operation[6:0] == 0110000)  memToReg = 1; // if load word instruction
		else memToReg = 0;
		
		// equate aluOp to the operation
		aluOp <= operation;
		
		if(operation[6:0] == 0110001)  memWrite = 1; // if store word instruction
		else memWrite = 0;
			
		if(operation[6:0] == 0000100 || operation[6:0] == 0000101 || operation[6:0] == 0100000 || operation[6:0] == 0100001) aluSrc = 1; // check for shift instructions or arithmatic immediate
		else aluSrc = 0;
		
		if(operation[6:4] != 100 && operation[6:0] != 0110001) regWrite = 1; //writeback to register in all cases except store word and branch instruction
		else regWrite = 0;
		
		if(operation [6:0] == 1000001) regBranch = 1; //
		else regBranch = 0;
	 end
		

endmodule
