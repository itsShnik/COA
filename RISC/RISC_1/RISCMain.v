`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:04 11/04/2019 
// Design Name: 
// Module Name:    RISCMain 
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
module RISCMain(
	input clk,
	output slo_clk
    );
	
	// declarations :::
	reg [26:0]counter=0;
	reg slow_clk;
	// To-Do 
	// Slow- clk

	always @(posedge clk)
	begin
		counter <= (counter>=2)?0:counter+1;
		slow_clk <= (counter < 1)?1'b0:1'b1;
	end
	assign slo_clk = slow_clk;		// assign o/p
	
	//assign slo_clk = slow_clk;
	//assign slow_clk = clk;
	
	
	wire isBranch;	//input to control
	wire[31:0] jump_value;	// i/p to IF
	wire[31:0] instruction;	// i/p to IF
	wire[31:0] instructionToDecoder;		// i/p to ID
	wire [6:0] operation;	// o/p from ID
	wire [4:0] r1;	// o/p from ID
	wire [4:0] r2;	// o/p from ID
	wire [4:0] r3;	// o/p from ID
	wire [24:0] L;	// o/p from ID
	wire [19:0] imm;	// o/p from ID
	wire [14:0]imm_addr;	// o/p from ID
	//wire [3:0]function_code;	// o/p from ID	
	wire memRead;  // o/p from control
	wire memToReg;  // o/p from control
	wire memWrite;  // o/p from control
	wire aluSrc;  // o/p from control
	wire regWrite;  // o/p from control
	wire regBranch; // o/p from control
	wire raWrite; // o/p from control
	wire isMult; // o/p from control
   
	
	wire [31:0]input1;	// i/p to ALU
	wire [31:0]input2;	// i/p to ALU

	wire[31:0]hi_value;	// |
	wire [31:0]lo_value;	// |
	wire zflag;				// |
	wire overflowflag;	// |--> o/p form ALU
	wire carryflag;		// |
	wire signflag;			// |
	wire [31:0]ALUresult	;// |
	  		
	wire [31 : 0] readData;	// o/p of DaTaMemory
	
	
	
	 wire [31:0] r3_value; // | --> i/p to the regFile		
	 wire [31:0]ra_value;  // | --> i/p to the regFile			
    wire [31:0] r1_value; // |
    wire [31:0] r2_value; // |		 --> o/p from the regFile	
	 wire [31:0] ra_read_value;  // | 		
	 
//	 wire [31:0] hi_val;
//	 wire [31:0] lo_val; 
	/////////////////////////// slow_clk :: begin /////////////////////////////
//	always @(posedge clk)
//	begin
//		counter <= (counter>=20000000)?0:counter+1;
//		slow_clk <= (counter < 10000000)?1'b0:1'b1;
//	end
	//assign slo_clk = slow_clk;		// assign o/p
	/////////////////////////// slow_clk :: end /////////////////////////////

	/////////////////////////// IF :: begin /////////////////////////////
	
	InstructionFetch Module1 ( .clk(slo_clk), .isBranch(isBranch) , .jump_value(jump_value), .instruction(instruction) );
	
	//----------------------------------------------------
	
	
	
	/////////////////////////// DFF :: begin /////////////////////////////
	
	//dFF_IF_ID Module2 (.clk(slo_clk), .instruction(instruction), .instructionToDecoder(instructionToDecoder));
	
	assign instructionToDecoder = instruction;
	//----------------------------------------------------
	
	
	/////////////////////////// ID :: begin /////////////////////////////
	
	InstructionDecoder Module3 ( .clk(slo_clk) , .instruction(instructionToDecoder), .operation(operation), .r1(r1) , .r2(r2), .r3(r3), .L(L), .imm(imm), .imm_addr(imm_addr));
  
	
	//----------------------------------------------------
	
		/////////////////////////// Register :: begin /////////////////////////////
	
	Registers Module8 ( .clk(slo_clk), .r1(r1), .r2(r2), .r3(r3), .r3_value(r3_value), .writeEnable(regWrite), .raWrite(raWrite), .ra_value(ra_value), .r1_value(r1_value), .r2_value(r2_value), .ra_read_value(ra_read_value), .hi(hi_value) , .lo(lo_value), .isMult(isMult), .memToReg(memToReg));
	

    
	
	//----------------------------------------------------
	
	/////////////////////////// Control :: begin /////////////////////////////
	
	
  
	Control Module4 (.operation(operation), .branch(isBranch), .memRead(memRead), .memToReg(memToReg),.memWrite(memWrite), .aluSrc(aluSrc), .regWrite(regWrite), .regBranch(regBranch), .raWrite(raWrite) , .isMult(isMult));
	
		
	//----------------------------------------------------
	
	/////////////////////////// ALU :: begin /////////////////////////////
	
	
  inputDecider Module5 ( .read_data1(r1_value) , .read_data2(r2_value) , .aluSrc(aluSrc), .branch(isBranch), .immediate(imm),  .aluOp(operation), .imm_addr (imm_addr), .L(L), .input1(input1), .input2(input2), .memRead(memRead));
  

	ALU Module6 ( .input1(input1), .input2(input2), .aluOp(operation), .clk(slo_clk), .hi_value(hi_value), .lo_value(lo_value),.zflag(zflag), .overflowflag(overflowflag), .carryflag(carryflag), .signflag(signflag), .ALUresult(ALUresult));
	

		
	//----------------------------------------------------
	
	
	
//	DataMux Module11 (.hi_value(hi_value), .lo_value(lo_value), .hi_val(hi_val), .lo_val(lo_val), .clk(slo_clk) );
	
	/////////////////////////// DataMemory :: begin /////////////////////////////
	
	DataMemory Module7 (.clk(clk), .memWrite(memWrite), .memRead(memRead), .data_addr(ALUresult), .writeData(r2_value), .readData(readData)); //input2 is actually the second value from register file

	
	//----------------------------------------------------
	
	/////////////////////////// BranchLogic :: begin /////////////////////////////
	
	branchlogicc module9 ( .branch(isBranch), .zflag(zflag), .overflowflag(overflowflag), .carryflag(carryflag), .signflag(signflag), .operation(operation), .regBranch(regBranch), .L(L), .register_value(r1_value), .ra_value(ra_read_value), .jump_value(jump_value));
	
	//----------------------------------------------------
	
	/////////////////////////// writeBack :: begin /////////////////////////////
	
	writeBack Module10 (.ALUresult(ALUresult), .readData(readData),.memToReg(memToReg), .r3_value(r3_value)); // read read as read
	
	//----------------------------------------------------
	
	
endmodule
