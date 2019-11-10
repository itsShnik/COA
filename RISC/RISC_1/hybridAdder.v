`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:09 08/14/2019 
// Design Name: 
// Module Name:    hybridAdder 
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
module hybridAdder(
    input [31:0] a,
    input [31:0] b,
    input c_in,
    output c_out,
    output [31:0] S
    );
	 
	 wire [6:0]c_out1;
	 carryLookaheadAdder C0 (.a(a[3:0]), .b(b[3:0]), .c_in(c_in), .c_out(c_out1[0]), .S(S[3:0]));
	 carryLookaheadAdder C1 (.a(a[7:4]), .b(b[7:4]), .c_in(c_out1[0]), .c_out(c_out1[1]), .S(S[7:4]));
	 carryLookaheadAdder C2 (.a(a[11:8]), .b(b[11:8]), .c_in(c_out1[1]), .c_out(c_out1[2]), .S(S[11:8]));
	 carryLookaheadAdder C3 (.a(a[15:12]), .b(b[15:12]), .c_in(c_out1[2]), .c_out(c_out1[3]), .S(S[15:12]));
	 carryLookaheadAdder C4 (.a(a[19:16]), .b(b[19:16]), .c_in(c_out1[3]), .c_out(c_out1[4]), .S(S[19:16]));
	 carryLookaheadAdder C5 (.a(a[23:20]), .b(b[23:20]), .c_in(c_out1[4]), .c_out(c_out1[5]), .S(S[23:20]));
	 carryLookaheadAdder C6 (.a(a[27:24]), .b(b[27:24]), .c_in(c_out1[5]), .c_out(c_out1[6]), .S(S[27:24]));
	 carryLookaheadAdder C7 (.a(a[31:28]), .b(b[31:28]), .c_in(c_out1[6]), .c_out(c_out), .S(S[31:28]));

endmodule
