`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:37 08/16/2019 
// Design Name: 
// Module Name:    shiftRegister 
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
module shiftRegister(
    input clk,
    input rst,
    input load,
    input [5:0] in,
    output reg [5:0] out
    );


	//ssreg [7:0] out;

	always @(posedge clk)	//if reset=1, assign out=0, else if load=1, assign out=input given, else right shift
	begin
		if (load == 0 & rst == 0)
			out=out>>1;
		else if (load ==1 & rst == 0)
			out=in;
		else
			out=6'b0;
	end
	
endmodule


