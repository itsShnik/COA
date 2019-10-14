`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:17 10/14/2019 
// Design Name: 
// Module Name:    Registers 
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
module Registers(
    input [4:0] r1,
    input [4:0] r2,
    input [4:0] r3,
    input clk,
    input read,
    output [31:0] r1_value,
    output [31:0] r2_value,
    input [31:0] r3_value
    );
	
	initial begin
		reg [31:0] register0,register1,register2,register3,register4,register5,register6,register7,register8,register9,register10,register11,register12,register13,register14,register15,register16,register17,register18,register19,register20,register21,register22,register23,register24,register25,register26,register27,register28,register29,register30,register31;	
	end
	
	always @ (posedge clk)
	begin
		if(read == 1)
		begin
			//create a switch case for the 32 register values
		end
		else if(read == 0)
		begin
		
		end
	end
endmodule
