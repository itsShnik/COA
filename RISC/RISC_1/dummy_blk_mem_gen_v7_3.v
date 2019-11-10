`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:27:38 11/05/2019 
// Design Name: 
// Module Name:    dummy_blk_mem_gen_v7_3 
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
module dummy_blk_mem_gen_v7_3(
	input clka,
	input wea,
	input[2:0] addra,
	input[31:0] dina,
	output reg[31:0] douta
    );
	 
	reg [31:0] imd [31:0];
	
	initial
	begin
		imd[0] = 32'b00001000110000000000000000000100; //addi r12 4
		imd[1] = 32'b00001000100100000000000000000110; // addi r9 6
		imd[2] = 32'b00000010100101100000000000000000; // mult r12 r9
		imd[3] = 32'b01100010000010100000000000000100; // sw $19, 4($0)
		imd[4] = 32'b01100000000000001000000000000100;	// lw $1, 4($0)
		imd[5] = 32'b10000000000000000000000000000000; // jump
	end
	 
	always @ (posedge clka)
	begin
		douta = imd[addra];
	end

endmodule
