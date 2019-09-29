`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:05 09/26/2019 
// Design Name: 
// Module Name:    fpadder 
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
module fpadd(a, b, clk, out);
input[31:0]a, b;
input clk;
output [31:0]out;

	wire [7:0]exp_a,  exp_b,  updated_exp_a,  updated_exp_b,  exy,  exp_a1,  exp_b1,  updated_exp_a1,  final_exp;
	wire sign_a,  sign_b,  s, s1, updated_s1, s2, updated_sign_a,  updated_sign_b,  sign_a1,  sign_a2,  sign_b1,  sign_b2, updated_sign_a1, updated_sign_b1, xor, xor2, final_sign;
	wire [23:0]mantissa_a, mantissa_b, updated_mantissa_a, updated_mantissa_b, final_mantissa, mantissa_a1, mantissa_b1;
	wire [24:0]intmdt_sum, intmdt_sum2;
	assign sign_a = a[31];
	assign sign_b = b[31];
	assign exp_a = a[30:23];
	assign exp_b = b[30:23];
	assign mantissa_a[23] = 1'b1;
	assign mantissa_b[23] = 1'b1;
	assign mantissa_a[22:0] = a[22:0];
	assign mantissa_b[22:0] = b[22:0];
	
	//submodule for compare and shfit
	step1 as(exp_a[7:0], exp_b[7:0], sign_a, sign_b, mantissa_a[23:0], mantissa_b[23:0], clk, updated_exp_a, updated_exp_b, updated_mantissa_a, updated_mantissa_b, s, updated_sign_a, updated_sign_b);
	
	step1_buffer buff1(updated_exp_a, updated_exp_b, updated_sign_a, updated_sign_b, updated_mantissa_a, updated_mantissa_b, s, clk, exp_a1, exp_b1, mantissa_a1, mantissa_b1, s1, sign_a1, sign_b1);
	
	//sub module for mantissa addition snd subtraction
	step2 asign_a(mantissa_a1, mantissa_b1, sign_a1, sign_b1, s1, exp_a1, clk, intmdt_sum, updated_exp_a1, updated_sign_a1, updated_sign_b1, xor, updated_s1);
	
	step2_buffer buff2(intmdt_sum, xor, updated_s1, updated_exp_a1, updated_sign_a1, updated_sign_b1, clk, intmdt_sum2, exp_a2, sign_a2, sign_b2, xor2, s2);
	
	//sub module for normalization
	step3 asign_b(intmdt_sum2, s2, sign_a2, sign_b2, xor2, clk, exp_a2, final_sign, final_exp, final_mantissa);
	
	assign out={final_sign, final_exp, final_mantissa[22:0]};
	
endmodule
