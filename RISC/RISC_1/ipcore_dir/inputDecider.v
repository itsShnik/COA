`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:09 10/28/2019 
// Design Name: 
// Module Name:    inputDecider 
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
module inputDecider(
		input [31:0]read_data1,
		input [31:0]read_data2,
		input aluSrc,		// from  control
		input memRead,		// from control
		input branch,		// from control
		input [19:0]immediate, // addi, shll, shrl, compi
		input [6:0] aluOp,
		input [14:0] imm_addr, // load word and store word
		input [24:0] L,
		output reg [31:0]input1,
		output reg [31:0]input2
    );
	 always @(*)
	 begin
		if ( aluSrc == 1 )//aluOp[6:0] == 0000100 || aluOp[6:0] == 0000101 || aluOp[6:0] == 0100000 || aluOp[6:0] == 0100001 || aluOp[6:0] == 0100100
				input2 <= (immediate[19]==1)?{12'b111111111111, immediate}:{12'b0, immediate};
		else if (memRead == 1 || aluOp == 7'b0110001) // if load word / store word // aluOp == 1000000 || aluOp == 10000001 
			input2 <= (imm_addr[14]==1)?{17'b11111111111111111, imm_addr}:{17'b0, imm_addr};

		else if ( branch == 1) input2 <= (L[24]==1)?{7'b1111111, L}:{7'b0, L}; // if direct jump instr
		else input2 <=  read_data2; // other instructiones  where input2 = read from register 2

		input1 <=  read_data1; // input 1 = read from register 1 always
	end

endmodule
