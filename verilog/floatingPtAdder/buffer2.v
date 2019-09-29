`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:03 09/26/2019 
// Design Name: 
// Module Name:    buffer2 
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
module step2_buffer(intmdt_sum, xor, updated_s1, updated_exp_a1, updated_sign_a1, updated_sign_b1, clk, intmdt_sum2, exp_a2, sign_a2, sign_b2, xor2, s2);
input [24:0]intmdt_sum;
input xor, clk, updated_s1, updated_sign_a1, updated_sign_b1;
input [7:0]updated_exp_a1;
output reg[24:0]intmdt_sum2;
output reg[7:0]exp_a2;
output reg sign_a2, sign_b2, xor2, s2;

	always@(posedge clk)begin
		s2=updated_s1;
		sign_a2=updated_sign_a1;
		sign_b2=updated_sign_b1;
		exp_a2=updated_exp_a1;
		intmdt_sum2=intmdt_sum;
		xor2=xor;
	end
endmodule
