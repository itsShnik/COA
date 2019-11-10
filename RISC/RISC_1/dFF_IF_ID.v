`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:47 11/04/2019 
// Design Name: 
// Module Name:    dFF_IF_ID 
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
module dFF_IF_ID(
	input clk,
	input[31:0] instruction,
	output reg[31:0] instructionToDecoder
    );
	always @(posedge clk)
	begin
		instructionToDecoder <= instruction ; // hold instruction for next clk cycle
	end

endmodule
