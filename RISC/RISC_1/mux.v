`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:57:34 10/21/2019 
// Design Name: 
// Module Name:    mux 
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
module mux(
		input select,
		input [31:0]input1,
		input [31:0]input2,
		output [31:0]output1
    );
	 
	 always @ (*)
	 begin
		 if(select == 0)
		 begin
			ouptut1 <= input1;
		 end
		 else
		 begin
			output1 <= input2;
		 end
	end

endmodule
