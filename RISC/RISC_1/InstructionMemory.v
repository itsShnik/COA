`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Kharagpur
// Engineer: Amatya - Nikhil
// 
// Create Date:    15:45:44 10/16/2019 
// Design Name: 
// Module Name:    InstructionMemory 
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
module InstructionMemory(
	input clk,
	input  writeEnable,		// write instructions to instruction memory // comment out for testing
	input [4 : 0] instruction_addr,		// instruction address	// comment out for testing
	input [31 : 0] data_in,			// comment out for testing
	output [31 : 0] data_out
	//output slo_clk		// testing
    );
	

//	always @(posedge clk)
//	begin
//		instruction_addrr = instruction_addrr+1;
//	end
//	assign data_out = 25;
	///////////////////////////
	// initialise
	IM1 InstMem (.clka(clk),.wea(0),.addra(instruction_addr),.dina(0),.douta(data_out));
	
	//blk_mem_gen_v7_3 InstMem (.clka(clk),.wea(0),.addra(instruction_addrr),.dina(data_in),.douta(data_out));
endmodule
