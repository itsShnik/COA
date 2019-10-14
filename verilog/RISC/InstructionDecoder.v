`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Kharagpur
// Engineer: Amatya - Nikhil Sharma - Shah
// 
// Create Date:    15:53:15 10/14/2019 
// Design Name: 
// Module Name:    InstructionDecoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Github pr sara code hai
//
//////////////////////////////////////////////////////////////////////////////////
module InstructionDecoder(
    input [31:0] instruction,
	 input clk,
	 output [6:0] operation,
	 output [4:0] r1,
	 output [4:0] r2, 
	 output [4:0] r3,
	 output [24:0] L,
	 output [19:0] shamt,
	 output [14:0]imm_addr
    );
	
	//Outputs
	//first 7 bits (31 - 25) to control, basically its a wire connection [operation] {Control}
		//controller will decide which module is going to act
	// next 5 bits (24 - 20) for the register 1 [r1] |
	// next 5 bits (19 - 15) for the register 2 [r2] | -> {Registers}
	// next 5 bits (14 - 10) for the register 3 [r3] |
	// if it is afn unconditional jump, feed the bits (24 - 0) to the ALU [L] {pc incrementor}
	// immediate values in bits (19 - 0) [shamt]{ALU}
	// immediate values in bits (14 - 0) [imm_addr] {ALU}
	
	always @ ( posedge clk ) begin
		operation<= instruction[31:25];
		r1<= instruction[24:20];
		r2<= instruction[19:15];
		r3<= instruction[14:10];
		L<= instruction[24:0];
		shamt<= instruction[19:0];
		imm_addr<= instruction[14:0];
	end

endmodule
