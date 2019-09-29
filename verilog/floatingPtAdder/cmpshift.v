`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:07:23 09/26/2019 
// Design Name: 
// Module Name:    cmpshift 
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
module step1(exp_a, exp_b, sign_a, sign_b, mantissa_a, mantissa_b, clk, updated_exp_a, updated_exp_b, updated_mantissa_a, updated_mantissa_b, s, updated_sign_a, updated_sign_b); //module for copare &shift
input [7:0]exp_a, exp_b;
input [23:0]mantissa_a, mantissa_b;
input clk, sign_a, sign_b;
output reg[7:0]updated_exp_a, updated_exp_b;
output reg[23:0]updated_mantissa_a, updated_mantissa_b;
output reg s, updated_sign_a, updated_sign_b;

	reg [7:0]diff;

	always@(posedge clk)begin
		updated_sign_a=sign_a;
		updated_sign_b=sign_b;
		if(exp_a==exp_b)begin
			updated_exp_a=exp_a+8'b1;
			updated_exp_b=exp_b+8'b1;
			updated_mantissa_a=mantissa_a;
			updated_mantissa_b=mantissa_b;
			s=1'b1;
		end
		else if(exp_a>exp_b)begin
			diff=exp_a-exp_b;
			updated_exp_a=exp_a+8'b1;
			updated_exp_b=exp_a+8'b1;
			updated_mantissa_a=mantissa_a;
			updated_mantissa_b=mantissa_b>>diff;
			s=1'b1;
		end
		else begin
			diff=exp_b-exp_a;
			updated_exp_a=exp_b+8'b1;
			updated_exp_b=exp_b+8'b1;
			updated_mantissa_a=mantissa_b;
			updated_mantissa_b=mantissa_a>>diff;
			s=1'b0;
		end
	end
endmodule