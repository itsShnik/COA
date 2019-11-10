`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:45 10/26/2019 
// Design Name: 
// Module Name:    branchLogic 
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
module branchLogic(	
	input branch, 				// is / isn't branch from control
	input zflag,				// |
	input overflowflag,		// |	 --> from ALU
	input carryflag,			// |
	input signflag,			// |
	input[6:0] operation,	// from  control
	input regBranch,			// from control , select line for mux(L, read value from register)
	input [24:0]L, 			// from instr decoder , value of jump
	input [31:0]register_value, 	// from register file , value of r1 read ( for jump instr)
	input [31:0]ra_value,			// from register file , value of ra stored
	output [31:0]jump_value		// o/p to pc incrementor , value to be added to next instr
	
    );
	
	reg [24:0]jump=0;
	assign jump_value = {7'b0,jump[24:0]};		
	always @(*)
	begin
		if( branch == 1)
		begin
			if( operation == 1000001 )
			begin
				jump <= register_value;			// if br rs
			end
			else if( operation == 1001011 )
			begin
				jump <= ra_value;					// if Ret
			end
			else
			begin
				if( operation == 1000000)		// if b L
				 begin
					jump <= L;
				 end
				else if( operation == 1000010)		// if bz
				 begin
					if ( zflag == 1) jump <= L;
					else jump =0;
				 end
				 
				else  if( operation == 1000011) 			// if bnz
				 begin
					if ( zflag == 0) jump <= L;
					else jump =0;
				 end
				 
				else if( operation == 1000100)			// bcy
				 begin
					if ( carryflag == 1) jump <= L;
					else jump =0;
				 end
				 
				 else if( operation == 1000101)		// bncy
				 begin
					if ( carryflag == 0) jump <= L;
					else jump =0;
				 end
				
				else if( operation == 1000110)			// bs
				 begin
					if ( signflag == 1) jump <= L;
					else jump =0;
				 end
				
				else if( operation == 1000111)			/// bns
				 begin
					if ( signflag == 0) jump <= L;
					else jump =0;
				 end
				
				else if( operation == 1001000)				// bv
				 begin
					if ( overflowflag == 1) jump <= L;
					else jump =0;
				 end
				 
				 else if( operation == 1001001)					// bnv
				 begin
					if ( overflowflag == 0) jump <= L;
					else jump =0;
				 end
				 
				else if( operation == 1001010)			// if call
				 begin
					jump <= L;
				 end
				 
				else if( operation == 1001010)			// if call
				 begin
					jump <= L;
				 end
				 
				 else if( operation == 1001011)			// if Ret
				 begin
					jump <= ra_value[24:0];
				 end
			end			
		end
	end	

endmodule
