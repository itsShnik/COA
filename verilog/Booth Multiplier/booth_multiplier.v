`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:49 08/28/2019 
// Design Name: 
// Module Name:    booth_multiplier 
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
module booth_multiplier(
	// control signals
	input clk,
	input load,
	input reset,

	//inputs
	input [5:0] M,
	input [5:0] Q,
	
	//outputs
	output reg [11:0] P,
	output reg slow_clk


    );
	 
	 reg [5:0] A = 0;
	 reg Q_minus_one = 0;
	 reg [5:0] Q_temp = 0 ;
	 reg [5:0] M_temp = 0;
	 
	 
	 // 
	 
	 //	 ///// Divider //////////////


		reg [26:0]counter=0;
	 
		always @(posedge clk)
		begin
			counter <= (counter>=20000000)?0:counter+1;
			slow_clk <= (counter < 10000000)?1'b0:1'b1;
		end
	 
		//assign slow_clock = slow_clk;
	 
	 
	 always @ (posedge slow_clk)
	 begin
		if (load == 1)
		begin
			A = 0;		//initialise values
			Q_minus_one = 0;
			P = 0;
			Q_temp = Q;
			M_temp = M;
		end
		
		else if (reset == 1)
		begin
			A = 0;		//reset values
			Q_minus_one = 0;
			P = 0;
			Q_temp = 0;
			M_temp = 0;
		end

		else if(Q_temp[0] == Q_minus_one)
		begin
			Q_minus_one = Q_temp[0];
			Q_temp = {A[0],Q_temp[5:1]};		// right shift Q
			//A = A >>> 1;							// right shift A
			A = {A[5],A[5:1]};							// right shift A
		end
		else if(Q_temp[0] == 0 && Q_minus_one == 1)
		begin
			A = A + M_temp;
			Q_minus_one = Q_temp[0];
			Q_temp = {A[0],Q_temp[5:1]};		// right shift Q
			//A = A >>> 1;
			A = {A[5],A[5:1]};							// right shift A
		end
		else if(Q_temp[0] == 1 && Q_minus_one == 0)
		begin
			A = A - M_temp;
			Q_minus_one = Q_temp[0];
			Q_temp = {A[0],Q_temp[5:1]};		// right shift Q
			//A = A >>> 1;
			A = {A[5],A[5:1]};							// right shift A
		end
		P = {A, Q_temp};
		
		
	 end

endmodule
