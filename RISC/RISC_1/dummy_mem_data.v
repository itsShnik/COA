`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:15 11/06/2019 
// Design Name: 
// Module Name:    dummy_mem_data 
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
module dummy_mem_data(
	input clka,
	input wea,
	input [4:0] addra,
	input [31:0] dina,
	output reg[31:0] douta
    );
	
	reg[31:0] data_mem [31:0];
	
	initial 
	begin
		data_mem[0] = 1;
		data_mem[1] = 2;
		data_mem[2] = 3;
		data_mem[3] = 4;
		data_mem[4] = 5;
		data_mem[5] = 1;
		data_mem[6] = 0;
		data_mem[7] = 0;
		data_mem[8] = 0;
		data_mem[9] = 0;
		data_mem[10] = 0;
		data_mem[11] = 0;
		data_mem[12] = 0;
		data_mem[13] = 0;
		data_mem[14] = 0;
		data_mem[15] = 0;
		data_mem[16] = 0;
		data_mem[17] = 0;
		data_mem[18] = 0;
		data_mem[19] = 0;
		data_mem[20] = 0;
		data_mem[21] = 0;
		data_mem[22] = 0;
		data_mem[23] = 0;
		data_mem[24] = 0;
		data_mem[25] = 0;
		data_mem[26] = 0;
		data_mem[27] = 0;
		data_mem[28] = 0;
		data_mem[29] = 0;
		data_mem[30] = 0;
		data_mem[31] = 0;
	end

	always @ (*)
	begin
		if(wea == 0)	douta = data_mem[addra];
	end
	
	//assign douta = data_mem[addra];
	always @ (negedge clka)
	begin
		if(wea == 1)	data_mem[addra] = dina;
	end
endmodule
