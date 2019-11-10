`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:30:46 10/30/2019 
// Design Name: 
// Module Name:    arrayMultiplierSigned 
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
module arrayMultiplierSigned(
	input[31:0] a,
	input[31:0] b,
	output[63:0]p
    );    
	wire[63:0] out;
	reg[31:0]rega, regb;
	wire [31:0]multa, multb;
	reg sign; 		/// sign of product 0 = + , 1 = -
	assign multa = rega;
	assign multb = regb;
	
	always @(*)
	begin
		if ( a[31] == 1 )		// if a is negative
		begin
			rega = -a;			// 2's complement a
			if ( b[31] == 1) // if b is neg
			begin
				regb = -b;		// complement b
				sign = 0;		
			end
			else 
			begin
				regb = b;		// if positive store b in reg as is
				sign = 1;
			end
		end
		else 						// if a is positive
		begin
			rega = a;			// store a as is in rega
			if ( b[31] == 1) 
			begin
				regb = -b;		// if  b is neg store compliment(b)
				sign = 1;
			end
			else 
			begin
				regb = b;		// if b is positive store b in reg
				sign = 0;
			end
		end
	end
	
	arrayMultiplier a1(.a(multa),.b(multb), .y(out));
	
	assign p = (sign)? -out : out;
	
endmodule
