`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:31:04 08/21/2019
// Design Name:   barrel_shift
// Module Name:   D:/Amatya Sharma/COA/Lab/ISE_PROJECTS/Asg6/Asg7/barrel_shifter_tb.v
// Project Name:  Asg7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrel_shift
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module barrel_shifter_tb;

	// Inputs
	reg [7:0] in;
	reg dir;
	reg [2:0] shamt;

	// Outputs
	wire [7:0] out;


	// Instantiate the Unit Under Test (UUT)
	barrel_shift uut (
		.in(in), 
		.dir(dir), 
		.out(out), 
		.shamt(shamt)
		);
		// Add stimulus here

	initial 
	 begin
		
		 $display($time, " << Starting the Simulation >>");
		 in= 8'd0;  shamt=3'd0;dir = 1; //no shift
		 #10 in=8'd128; shamt= 3'd4; dir = 0; //shift 4 bit
		 #10 in=8'd128; shamt= 3'd2; dir = 0;//shift 2 bit
		 #10 in=8'd128; shamt= 3'd1; dir = 1;//shift by 1 bit
		 #10 in=8'd255; shamt= 3'd7; dir = 1;//shift by 7bit
	  end
    initial begin
      $monitor("Input=%d, Control=%d,Control=%d, Output=%d",in,shamt,dir,out);
    end
	
	//////
      
endmodule

