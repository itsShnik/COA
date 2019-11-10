`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:47 08/14/2019 
// Design Name: 
// Module Name:    carryLookaheadAdder 
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
module carryLookaheadAdder(
    input [3:0] a,
    input [3:0] b,
    input c_in,
    output [3:0] S,
    output  c_out
    );
	 reg [3:0] P, G;
	 reg [4:0] C;
	 //assign C[0] = c_in;
	 // calculating P[]
	 
	 always @(*)
	 begin 
		 P[0] <= a[0] ^ b[0];
		 P[1] <= a[1] ^ b[1];
		 P[2] <= a[2] ^ b[2];
		 P[3] <= a[3] ^ b[3];
		 
		 // calculate G[] parallely
		 G[0] <= a[0] & b[0];
		 G[1] <= a[1] & b[1];
		 G[2] <= a[2] & b[2];
		 G[3] <= a[3] & b[3];

	 end 
	 
	 always @(*)
	 begin
		C[1] <= G[0] + (P[0] & c_in);
		C[2] <= G[1] + (P[1]&G[0]) +(P[1]&P[0]&c_in);
		C[3] <= G[2] + (P[2]&G[1])+(P[2]&P[1]&G[0])+(P[2]&P[1]&P[0]&c_in);
		C[4] <= G[3] + (P[3]&G[2]) + (P[3]&P[2]&P[1]&G[0]) + (P[3]&P[2]&G[1]) + (P[3]&P[2]&P[1]&P[0]&c_in);	
	 end
	 
	 assign c_out = C[4];
	 
		assign S[0] = P[0] ^ c_in;
		assign S[1] = P[1] ^ C[1];
		assign S[2] = P[2] ^ C[2];
		assign S[3] = P[3] ^ C[3];


endmodule
