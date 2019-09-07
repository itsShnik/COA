`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:28 08/26/2019 
// Design Name: 
// Module Name:    single_RS_mult 
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
module single_RS_mult(
    input x,
	input [5:0]Y,
	input clk,
	//input loadx,
	input load,
	output reg [11:0]P,
	output reg [6:0]count_out,
	output reg [11:0]temp_out
    );
	 
	 reg [6:0]count;reg [11:0]temp;
	 initial 
	 begin
		P = 11'b0;
		
		count  = 0;
		assign count_out = count;
		assign temp_out = temp;
	
		
	 end
	 
	 
	 
	 always @( posedge clk)
	 begin 	
		if ( load == 1)
			begin
				count = 0;
				P = 0;
			end
		else if ( x == 1)
			begin 
				temp = Y;
				temp = temp << 6;  // n = 6
//				count = count +1;
				P = P + temp;
				P = P >> 1;
			end
			
		else if ( x == 0)
			begin 
				temp = 10'b0;
//				count = count +1;
				P = P + temp;
				P = P >> 1;
			end
		
		
	 end


endmodule
