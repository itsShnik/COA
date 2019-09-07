`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:39:38 08/21/2019 
// Design Name: 
// Module Name:    barrel_shift 
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
module barrel_shift(
    input [7:0] in,
    input dir,
    output [7:0] out,
    input [2:0] shamt
    );
	wire [7:0]x, y;
	//4bit shift right
	mux2to1  ins_17 (.in0(in[7]),.in1(1'b0),.sel(shamt[2]),.out(x[7]), .shift_dir(dir), .in2(in[3]));
	mux2to1  ins_16 (.in0(in[6]),.in1(1'b0),.sel(shamt[2]),.out(x[6]),.shift_dir(dir), .in2(in[2]));
	mux2to1  ins_15 (.in0(in[5]),.in1(1'b0),.sel(shamt[2]),.out(x[5]),.shift_dir(dir), .in2(in[1]));
	mux2to1  ins_14 (.in0(in[4]),.in1(1'b0),.sel(shamt[2]),.out(x[4]),.shift_dir(dir), .in2(in[0]));
	mux2to1  ins_13 (.in0(in[3]),.in1(in[7]),.sel(shamt[2]),.out(x[3]),.shift_dir(dir), .in2(1'b0));
	mux2to1  ins_12 (.in0(in[2]),.in1(in[6]),.sel(shamt[2]),.out(x[2]),.shift_dir(dir), .in2(1'b0));
	mux2to1  ins_11 (.in0(in[1]),.in1(in[5]),.sel(shamt[2]),.out(x[1]),.shift_dir(dir), .in2(1'b0));
	mux2to1  ins_10 (.in0(in[0]),.in1(in[4]),.sel(shamt[2]),.out(x[0]),.shift_dir(dir), .in2(1'b0));
	 
	//2 bit shift right
	 
	mux2to1  ins_27 (.in0(x[7]),.in1(1'b0),.sel(shamt[1]),.out(y[7]),.shift_dir(dir), .in2(x[5]));
	mux2to1  ins_26 (.in0(x[6]),.in1(1'b0),.sel(shamt[1]),.out(y[6]),.shift_dir(dir), .in2(x[4]));
	mux2to1  ins_25 (.in0(x[5]),.in1(x[7]),.sel(shamt[1]),.out(y[5]),.shift_dir(dir), .in2(x[3]));
	mux2to1  ins_24 (.in0(x[4]),.in1(x[6]),.sel(shamt[1]),.out(y[4]),.shift_dir(dir), .in2(x[2]));
	mux2to1  ins_23 (.in0(x[3]),.in1(x[5]),.sel(shamt[1]),.out(y[3]),.shift_dir(dir), .in2(x[1]));
	mux2to1  ins_22 (.in0(x[2]),.in1(x[4]),.sel(shamt[1]),.out(y[2]),.shift_dir(dir), .in2(x[0]));
	mux2to1  ins_21 (.in0(x[1]),.in1(x[3]),.sel(shamt[1]),.out(y[1]),.shift_dir(dir), .in2(1'b0));
	mux2to1  ins_20 (.in0(x[0]),.in1(x[2]),.sel(shamt[1]),.out(y[0]),.shift_dir(dir), .in2(1'b0));
	 
	//1 bit shift right
	mux2to1  ins_07 (.in0(y[7]),.in1(1'b0),.sel(shamt[0]),.out(out[7]),.shift_dir(dir), .in2(y[6]));
	mux2to1  ins_06 (.in0(y[6]),.in1(y[7]),.sel(shamt[0]),.out(out[6]),.shift_dir(dir), .in2(y[5]));
	mux2to1  ins_05 (.in0(y[5]),.in1(y[6]),.sel(shamt[0]),.out(out[5]),.shift_dir(dir), .in2(y[4]));
	mux2to1  ins_04 (.in0(y[4]),.in1(y[5]),.sel(shamt[0]),.out(out[4]),.shift_dir(dir), .in2(y[3]));
	mux2to1  ins_03 (.in0(y[3]),.in1(y[4]),.sel(shamt[0]),.out(out[3]),.shift_dir(dir), .in2(y[2]));
	mux2to1  ins_02 (.in0(y[2]),.in1(y[3]),.sel(shamt[0]),.out(out[2]),.shift_dir(dir), .in2(y[1]));
	mux2to1  ins_01 (.in0(y[1]),.in1(y[2]),.sel(shamt[0]),.out(out[1]),.shift_dir(dir), .in2(y[0]));
	mux2to1  ins_00 (.in0(y[0]),.in1(y[1]),.sel(shamt[0]),.out(out[0]),.shift_dir(dir), .in2(1'b0));
	 
endmodule
