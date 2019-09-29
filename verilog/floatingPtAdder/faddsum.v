`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:11 09/26/2019 
// Design Name: 
// Module Name:    faddsum 
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
module step2(mantissa_a, mantissa_b, sign_a1, sign_b1, s1, exp_a1, clk, intmdt_sum, updated_exp_a1, updated_sign_a1, updated_sign_b1, xor, updated_s1); //submodule for addition or subtraction
input [23:0]mantissa_a, mantissa_b;
input[7:0]exp_a1;
input sign_a1, sign_b1, clk, s1;
output reg [23:0]updated_exp_a1;
output reg[24:0]intmdt_sum;
output reg xor, updated_sign_a1, updated_sign_b1, updated_s1;

	always@(posedge clk)begin
		updated_exp_a1=exp_a1;
		updated_s1=s1;
		updated_sign_a1=sign_a1;
		updated_sign_b1=sign_b1;
		xor=sign_a1^sign_b1;
		if(xor)begin
			intmdt_sum=mantissa_a-mantissa_b;
		end
		else begin
			intmdt_sum=mantissa_a+mantissa_b;
		end
	end
	
endmodule
