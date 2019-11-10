`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:50 10/21/2019 
// Design Name: 
// Module Name:    ProgramCounter 
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
module ProgramCounter(
		input clk,
		input isBranch,
		input [24:0]jump_value,
		output [31:0]next_instr
    );
	reg [31:0]instr;
	wire [31:0]jump;
	assign jump = (jump_value[24]==1)?{7'b1111111,jump_value[24:0]}:{7'b0,jump_value[24:0]};
	assign next_instr = instr;
	initial
	begin
		instr = 0; // just before first instr
	end
	
	always @(posedge clk)
	begin
		instr = instr + 1;
		if ( isBranch == 0)
		begin
			/*do nothing*/
		end
		
		else 
		begin
			instr = instr+jump;		/// increment to jump_value
		end
	end
	
endmodule
