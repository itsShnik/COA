`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:26 09/26/2019 
// Design Name: 
// Module Name:    buffer1 
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
module step1_buffer(updated_exp_a, updated_exp_b, updated_sign_a, updated_sign_b, updated_mantissa_a, updated_mantissa_b, s, clk, exp_a1, exp_b1, mantissa_a1, mantissa_b1, s1, sign_a1, sign_b1);
input [7:0]updated_exp_a, updated_exp_b;
input [23:0]updated_mantissa_a, updated_mantissa_b;
input s, clk, updated_sign_a, updated_sign_b;
output reg [7:0]exp_a1, exp_b1;
output reg [23:0]mantissa_a1, mantissa_b1;
output reg s1, sign_a1, sign_b1;

	always@(posedge clk)begin
		sign_a1=updated_sign_a;
		sign_b1=updated_sign_b;
		exp_a1=updated_exp_a;
		exp_b1=updated_exp_b;
		mantissa_a1=updated_mantissa_a;
		mantissa_b1=updated_mantissa_b;
		s1=s;
	end
endmodule
