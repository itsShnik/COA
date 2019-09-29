`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:02 09/02/2019 
// Design Name: 
// Module Name:    fp_adder 
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
module fp_adder(
	input [31:0]a,
	input [31:0]b,
	input clk,
	input load,
	input reset,
	input start,
	output reg [31:0]sum
    );
	 
	 // variable initialization
	// wire  sign;
	 //wire [7:0] E;
	// wire [22:0] M; 
	 reg [24:0] updated_intmdt_sum; 
	 reg [24:0] intmdt_sum; 
	 reg [23:0] intmdt_a, intmdt_b;
	 reg [7:0] exp;
	 reg [7:0] updated_exp;
	 reg [2:0] state = 0;
	 reg flag = 1,flag1 = 0;
	 
	 
	 // main pipeline code
	 // begin :: 
	 always @(posedge clk or posedge reset)
	 begin
	 
		// reset control
		if(reset == 1)
		begin
			state = 0;
			sum = 0;
			updated_intmdt_sum = 0;
			intmdt_a = 0; 
			intmdt_b = 0;
			exp = 0;
			updated_exp = 0;
		end
		
		// state 0 :: equalising the exponents
		else if(state ==0)
		begin
			if(a[30:23] == b[30:23])
			begin
				intmdt_a = {1,a[22:0]};
				intmdt_b = {1,b[22:0]};
				exp = a[30:23];
			end
			else if(a[30:23] < b[30:23])
			begin
				intmdt_a = {1,a[22:0]};
				intmdt_b = {1,b[22:0]};
				intmdt_a = intmdt_a >> ( b[30:23] - a[30:23]);
				exp = b[30:23] - a[30:23];
			end
			else if(a[30:23] > b[30:23])
			begin
				intmdt_a = {1,a[22:0]};
				intmdt_b = {1,b[22:0]};
				intmdt_b = intmdt_b >> (a[30:23] - b[30:23]);
				exp = a[30:23] - b[30:23];
			end
			state = 1;
		end
		
		// state 1 :: adding mantisas of intmdt representations
		else if(state ==1)
		begin
			if(a[31] == b[31])
			 begin
				sum[31] = a[31];
				intmdt_sum = intmdt_a + intmdt_b;
			 end
			 else if(a[31]  == 0)
			 begin
				if(intmdt_a >= intmdt_b)
				 begin
					sum[31] = a[31];
					intmdt_sum = intmdt_a - intmdt_b;
				 end
				 else if(intmdt_a < intmdt_b)
				 begin
					sum[31] = b[31];
					intmdt_sum = intmdt_b - intmdt_a;
				 end
				 
			 end
			 else if(b[31]  == 0)
			 begin
				if(intmdt_b >= intmdt_a)
				 begin
					sum[31] = b[31];
					intmdt_sum = intmdt_b - intmdt_a;
				 end
				 else if(intmdt_b < intmdt_a)
				 begin
					sum[31] = a[31];
					intmdt_sum = intmdt_a - intmdt_b;
				 end
				 
			 end
			state = 2;
		end
		
		
		// state 2::normalisation and rounding
		else if(state ==2)
		begin
		if (flag == 1) begin
			  if (flag1 == 0) begin
				 flag1 = 1;
				 updated_intmdt_sum = intmdt_sum;
				 updated_exp = exp;
			  end
			 
				if(updated_intmdt_sum[24] == 1)
				begin
					flag = 0;
					//updated_intmdt_sum = intmdt_sum;
				end
				else if(updated_intmdt_sum[24] == 0)
				begin
					flag = 1;
					updated_intmdt_sum = updated_intmdt_sum << 1;
					updated_exp = updated_exp - 1;
				end
		end

			state = 3;
		end
		
		// step 3:: converting back to fp notation and last rounding 
		else if(state ==3)
		begin
			sum[22:0] = updated_intmdt_sum[23:1];
			sum[30:23] = updated_exp;
			state = 4;
		end
		else if(state ==4)
		begin
			state = 4;
		end
	 end
	 
endmodule
