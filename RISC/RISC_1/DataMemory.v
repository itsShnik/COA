`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:13 11/04/2019 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(
   input clk,
	input  memWrite,	// write data to data memory 
	input memRead,
	input [9 : 0] data_addr,		// data address	
	input [31 : 0] writeData,			
	output [31 : 0] readData
	//output slo_clk
    );
	


	
	DM dataMem (.clka(clk),.wea(memWrite),.addra(data_addr),.dina(writeData),.douta(readData)); 
	
	
endmodule