`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:24 08/21/2019 
// Design Name: 
// Module Name:    mux2to1 
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
module mux2to1(
input in0,in1,in2,
input sel,
input shift_dir,

output out);
	reg var;
	
	always @( * )
	begin
		if ( shift_dir == 0)
			 var=(sel)?in1:in0;
		else
			 var=(sel)?in2:in0;
	end
	assign out = var;
endmodule
