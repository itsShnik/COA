`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:38:44 11/06/2019 
// Design Name: 
// Module Name:    PC_New 
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
module PC_New(
	input clk,
	input pc,
	output npc
    );
	always @( posedge clk) 
	begin
		npc = pc;
	end

endmodule
