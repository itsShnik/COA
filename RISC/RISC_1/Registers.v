`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:38 10/21/2019 
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
    input [4:0] r1,		// address to read from
    input [4:0] r2,		// do
    input [4:0] r3,		// address to write to
	 input [31:0] r3_value,		// value to write
    input clk,	
    input writeEnable, // whehter to read
	 input raWrite,				// if call
	 input [31:0]ra_value,				// value to be written to ra
	 input [31:0] hi,
	 input [31:0] lo,
	 input isMult,
	 input memToReg,
    output [31:0] r1_value,	// value read
    output [31:0] r2_value,		// -do-
	 output [31:0] ra_read_value 		// -d0-
    
    );
	/* TO-DO
		writeEnable operation
	
	*/
	// intialise register file :: double array32*32
	reg [31:0] registers[31:0];
	reg[31:0] r1_val_reg,r2_val_reg,ra_val_reg;
	assign r1_value = r1_val_reg;
	assign r2_value = r2_val_reg;
	assign ra_read_value = ra_val_reg;
	
	//testing//
	
	reg [31:0] high,loow;
	
	initial begin
		registers[0] = 0;
		registers[1] = 0;
		registers[2] = 0;
		registers[3] = 0;
		registers[4] = 0;
		registers[5] = 0;
		registers[6] = 0;
		registers[7] = 0;
		registers[8] = 0;
		registers[9] = 0;
		registers[10] = 0;
		registers[11] = 0;
		registers[12] = 0;
		registers[13] = 0;
		registers[14] = 0;
		registers[15] = 0;
		registers[16] = 0;
		registers[17] = 0;
		registers[18] = 0;
		registers[19] = 0;
		registers[20] = 0;
		registers[21] = 0;
		registers[22] = 0;
		registers[23] = 0;
		registers[24] = 0;
		registers[25] = 0;
		registers[26] = 0;
		registers[27] = 0;
		registers[28] = 0;
		registers[29] = 0;
		registers[30] = 0;
		registers[31] = 0;
		
	end
	
	//synchrnous write phase /*it takes time to
	always @ (negedge clk)
	begin
		if(writeEnable == 1 && isMult == 0)
		begin
			// flag to write or not
			if(memToReg == 0) registers[r1]=r3_value;		// write back to reg-file from alu
			else registers[r2] = r3_value;			// else write back to reg from memory
		end
		 if( raWrite == 1)			// write back ra value 
			registers[5'b00101] = ra_value;
		 if( isMult == 1)			// write back hi and low value
			begin
			//	registers[5'b10011] = hi;
				registers[5'b10100] = lo;
			end
	end
	//asynchrnous writeEnable phase 
	always @ (clk)
	begin
		//f(writeEnable != 1 && raWrite !=1)
		//begin
			r1_val_reg<=registers[r1];		// read r1 from reg-file
			r2_val_reg<=registers[r2];		// read r2 from reg-file
			ra_val_reg <= registers[5'b00101]; 	// read ra from reg-file
			high <= registers[5'b10011];
			loow <= registers[5'b10100];
			/*if( isMult == 1) 
			begin
				//registers[5'b10011] = hi;
				registers[5'b10100] = lo;
			end*/
		//end
	end




endmodule
