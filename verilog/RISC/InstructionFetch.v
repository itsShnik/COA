`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:37 10/14/2019 
// Design Name: 
// Module Name:    InstructionFetch 
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
module InstructionFetch(
    input [10:0] pc_address,
    input clk,
	 input instruction_memory,
    output [31:0] instruction
    );
	 
	 //Preprocessing
	 //Create a module to read into the instruction memory from the instruction file
	 
	 
	 //#TODO
	 // Always posedge clock
	 
	 always @ (posedge clk)
	 begin
	 // Access the instruction memory
	 //return the register/bus containing the 32 bit instruction
	 instruction <= instruction_memory[pc_address];
	 end


endmodule
