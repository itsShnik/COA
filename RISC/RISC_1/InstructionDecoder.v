`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:42 10/21/2019 
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
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module InstructionDecoder(
    input [31:0] instruction,
	 input clk,
	 output reg [6:0] operation,
	 output reg [4:0] r1,
	 output reg [4:0] r2, 
	 output reg [4:0] r3,
	 output reg [24:0] L,
	 output reg [19:0] imm,
	 output reg [14:0]imm_addr
	// output reg [3:0]function_code
    );
	
	//Outputs
	//first 7 bits (31 - 25) to control, basically its a wire connection [operation] {Control}
		//controller will decide which module is going to act
	// next 5 bits (24 - 20) for the register 1 [r1] |
	// next 5 bits (19 - 15) for the register 2 [r2] | -> {Registers}
	// next 5 bits (14 - 10) for the register 3 [r3] |
	// if it is afn unconditional jump, feed the bits (24 - 0) to the ALU [L] {pc incrementor}
	// immediate values in bits (19 - 0) [imm]{ALU}
	// immediate values in bits (14 - 0) [imm_addr] {ALU}
//	
//	always @ ( posedge clk ) begin
//		operation<= instruction[31:25];
//		r1<= instruction[24:20];
//		r2<= instruction[19:15];
//		r3<= instruction[14:10];
//		L<= instruction[24:0];
//		imm<= instruction[19:0];
//		imm_addr<= instruction[14:0];
//	end
	
	
	//opcode extraction
	
	
//	always @ (posedge clk)
//	begin
//		operation <= instruction[31:29];
//		function_code <= instruction[28:25];
//		if(operation == 000) // arithmetic
//		begin
//			r1<= instruction[24:20];
//			r2<= instruction[19:15];
//			r3<= 0;
//			L<= 0;
//			imm<= instruction[19:0];
//			imm_addr<= 0;
//		end
//		
//		if(operation == 001) // Logic
//		begin
//			r1<= instruction[24:20];
//			r2<= instruction[19:15];
//			r3<= 0;
//			L<= 0;
//			imm<= 0;
//			imm_addr<= 0;
//		end
//		
//		if(operation == 010) // shift
//		begin
//			r1<= instruction[24:20];
//			r2<= instruction[19:15];
//			r3<= 0;
//			L<= 0;
//			imm<= instruction[19:0];
//			imm_addr<= 0;
//		end
//		
//		if(operation == 011) // Memory
//		begin
//			r1<= instruction[24:20];
//			r2<= instruction[19:15];
//			r3<= 0;
//			L<= 0;
//			imm<= 0;
//			imm_addr<= instruction[14:0];
//		end
//		
//		if(operation == 100) // Branch
//		begin
//			r1<= instruction[24:20];
//			r2<= 0;
//			r3<= 0;
//			L<= instruction[24:0];
//			imm<= 0;
//			imm_addr<= 0;
//		end
//		
//	end

	always @ (*)
	begin
		operation<= instruction[31:25];
		r1<= instruction[24:20];
		r2<= instruction[19:15];
		r3<= instruction[14:10]; // not needed
		L<= instruction[24:0]; // jump value , branch immediate
		imm<= instruction[19:0]; // shift, addi , compi
		imm_addr<= instruction[14:0]; // in load word and store word
	end
	

endmodule
