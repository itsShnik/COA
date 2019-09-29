`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:49 09/26/2019 
// Design Name: 
// Module Name:    normalised 
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
module step3(intmdt_sum_2, s2, sign_a2, sign_b2, xor2, clk, ex, final_sign, final_exp, final_sum);
input[24:0]intmdt_sum_2;
input s2, sign_a2, sign_b2, xor2, clk;
input[7:0]ex;
output reg final_sign;
output reg[7:0]final_exp;
output reg[23:0]final_sum;
	reg [24:0]temp;
	always@(posedge clk)begin
		final_sign=s2?sign_a2^(intmdt_sum_2[24]&xor2):sign_b2^(intmdt_sum_2[24]&xor2);
		temp=(intmdt_sum_2[24]&xor2)?~intmdt_sum_2+25'b1:intmdt_sum_2;
		final_sum=temp[24:1];
		final_exp=ex;
		repeat(24)begin
			if(final_sum[23]==1'b0)begin
				final_sum=final_sum<<1'b1;
				final_exp=final_exp-8'b1;
			end
		end
	end
endmodule

