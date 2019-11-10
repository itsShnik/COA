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
		input clk,
		//output regDst, // use when you need three registers to check, which register to write to
		output reg branch,
		output reg memRead,
		output reg memToReg, // decide b/w alu ou/p and data memory o/p
		output reg [6:0]aluOp, // bus to decode the operation and function
		output reg memWrite, // select line to data memory
		output reg aluSrc, // differentiates between register and constant for ALU
		output reg regWrite, // write to reg or not (if write : synchronous)
		output reg regBranch, // to decide whethere jump to (rs) or L
		output reg raWrite,			// to decide if it call is used , write back to ra register
		output reg isMult			// to write back hi and lo
	 );
	 
	 always @ (*)
	 begin
		//operation <= aluOp;// equate aluOp to the operation
		aluOp <= operation;
		if(operation[6:4] == 3'b100) branch = 1; // if branch instructt
		else branch = 0;
				
		if(operation[6:0] == 6'b0110000) memRead = 1; // if load word instruction
		else memRead = 0;
		
		if(operation[6:0] == 6'b0110000)  memToReg = 1; // if load word instruction
		else memToReg = 0;
		
		
		
		if(operation[6:0] == 6'b0110001)  memWrite = 1; // if store word instruction
		else memWrite = 0;
			
		if(operation[6:0] == 6'b0000100 || operation[6:0] == 6'b0000101 || operation[6:0] == 6'b0100000 || operation[6:0] == 6'b0100001) aluSrc = 1; // check for shift instructions or arithmatic immediate
		else aluSrc = 0;
		
		if(operation[6:4] != 3'b100 && operation[6:0] != 6'b0110001) regWrite = 1; //writeback to register in all cases except store word and branch instruction
		else regWrite = 0;
		
		if(operation [6:0] == 6'b1000001) regBranch = 1; //
		else regBranch = 0;
		
		if( operation[6:0] == 6'b1001010) raWrite =1;	/// IF call 
		else raWrite = 0;
		
		if( operation[6:0] == 6'b0000001 || operation[6:0] == 6'b0000010) isMult = 1;
		else isMult = 0;
	 end
		

endmodule
