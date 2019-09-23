`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:24 08/26/2019 
// Design Name: 
// Module Name:    unsigned_seq_mult_LS 
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
module unsigned_seq_mult_LS (
		output reg clk,
		input rst,
		input system_clk,
		input load,
//		input loady,
		input [5:0] a,
		input [5:0]b,
		output  [11:0]product,
		output [5:0] X,
		output [5:0] Y
		);
//		wire [5:0]X;
//		wire [5:0]Y;
		
		//	 ///// Divider //////////////


		reg [26:0]counter=0;
	 
		always @(posedge system_clk)
		begin
			counter <= (counter>=40000000)?0:counter+1;
			clk <= (counter < 20000000)?1'b0:1'b1;
		end
	 
		//assign slow_clock = slow_clk;
	 
	
	 
		shiftRegister S1( .clk(clk) , .rst(rst) , .load(load), .in(a), .out(X) );
		shiftRegister S2( .clk(clk) , .rst(rst) , .load(1), .in(b), .out(Y) );
		
		single_mult SM1( .x(X[0]), .Y(Y), .clk(clk) , .P(product) , .load(load));
		
		
endmodule
