`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:45 11/06/2019 
// Design Name: 
// Module Name:    DataMux 
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
module DataMux(
	input clk,
	input hi_value,
	input lo_value,
	output reg hi_val,
	output reg lo_val
	
    );
	 
	 always @(posedge clk) 
	 begin
		hi_val = hi_value;
		lo_val = lo_value;
	 end


endmodule
