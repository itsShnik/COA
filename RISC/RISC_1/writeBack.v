`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:11:36 11/05/2019 
// Design Name: 
// Module Name:    writeBack 
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
module writeBack(
	input[31:0] ALUresult,
	input[31:0] readData,
	input memToReg,
	output reg[31:0] r3_value
    );
	
	always @(*)
	begin
		if(memToReg == 1) r3_value = readData;
		else r3_value = ALUresult;
	end
endmodule
