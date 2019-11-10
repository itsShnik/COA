`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:22 11/04/2019
// Design Name:   DataMemory
// Module Name:   E:/GROUP 16/RISC_1/dataMemory_tb.v
// Project Name:  blk_mem_gen_v7_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dataMemory_tb;

	// Inputs
	reg clk;
	reg memWrite;
	reg memRead;
	reg [9:0] data_addr;
	reg [31:0] writeData;

	// Outputs
	wire [31:0] readData;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.clk(clk), 
		.memWrite(memWrite), 
		.memRead(memRead), 
		.data_addr(data_addr), 
		.writeData(writeData), 
		.readData(readData)
	);
	
	always #10 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		memWrite = 0;
		memRead = 0;
		data_addr = 0;
		writeData = 0;

		// Wait 100 ns for global reset to finish
		#11;
        memWrite = 1;
		  data_addr = 9;
		  writeData = 24;
		  
		  
		#11;
	  memWrite = 0;
	  data_addr = 9;
	  
	  	  
		#11;
	  memWrite = 0;
	  data_addr = 3;
	  
		// Add stimulus here

	end
      
endmodule

