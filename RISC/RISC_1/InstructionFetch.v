`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:31 10/21/2019 
// Design Name: 
// Module Name:    InstructionFetch 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
// Author
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module InstructionFetch(
    //input [31:0] pc_address,		// address of previous instr
    input clk,
	 input isBranch,
	 input [31:0]jump_value,
	 //input instruction_memory,		// instruction_memory = address of array where memory is stored
    output [31:0] instruction		// instruction fetched from instruction_memory
    );
	 
	 //Preprocessing
	 //Create a module to read into the instruction memory from the instruction file
	 
	 
	 //#TODO
	 // Always posedge clock
	 
//	 always @ (posedge clk)
//	 begin
//	 // Access the instruction memory
//	 //return the register/bus containing the 32 bit instruction
//	 instruction <= instruction_memory[pc_address];
//	 
//	 end

	wire [31:0]add_pc_address;
	ProgramCounter P_C ( .clk(clk), .isBranch(isBranch), .jump_value(jump_value), .next_instr(add_pc_address));
	InstructionMemory I_Mem ( .clk(!clk), .writeEnable(0), .instruction_addr(add_pc_address),.data_in(0), .data_out(instruction));
	/*reg [31:0] add_pc;
	reg [31:0]pc;
	wire [31:0] npc;
	
	initial begin
		add_pc = 0;
//		pc = 0;
//		npc = 0;
	end
	
//	always @(*)
//	begin
	//assign npc[31:0] = (isBranch == 1) ? jump_value[31:0] : add_pc[31:0]; 
	assign npc = jump_value;
//	end
	
	always @(posedge clk) 
	begin
		pc = npc;
		add_pc = pc +1;
	end
	
	InstructionMemory I_Mem ( .clk(!clk), .writeEnable(0), .instruction_addr(pc[2:0]),.data_in(0), .data_out(instruction));*/
//	
//	wire [31:0] dout;
//	reg [31:0] npc, pc;
//	
//	initial begin
//		npc<=10'b0;
//		instruction<=32'b0;
//	end
//
//	always @( posedge clk) 
//	begin
//		npc = pc;
//	end
//	
//	InstructionMemory IMEM(           //extract instruction
//	.clk(!clk), 
//	.instruction_addr(pc), 
//	.data_out(dout)); 
//	
//	
//	always @(posedge clk)     //At every clock cycle, assign output=input
//		begin
//			
//			instruction=dout;
//			npc=pc;
//			
//		end
//	always @(*)
//	begin
//		npc = pc+1;
//	end
endmodule
