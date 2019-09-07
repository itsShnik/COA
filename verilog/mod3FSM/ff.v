`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:30 08/21/2019 
// Design Name: 
// Module Name:    fsm 
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
module fsm(
    input reset,
	 
	 output reg cout,// bit output
	 
    input sel,	// bit input
	 
    input clk,		// manual clk
	 
	 //input system_clk,		// system_clk
	 
    output wire slow_clock
	 
    );
	 
//	 
//	reg debounced_clk;
//	reg [2:0] flag1=3'd0;
//	assign slow_clk =debounced_clk;
//	// debounce////////////////
//	always @(posedge clk)
//		begin
//			if(flag1==3'd0)
//				begin
//				flag1<=3'd1;
//				end
//		end
//
//	always @(negedge clk)
//		begin
//			if(flag1==3'd3)
//				begin
//				flag1<=3'd4;
//				end
//		end
//
//
//	always @(posedge clk)
//		begin
//			if(flag1==3'd1)
//				begin
//				flag1<=3'd2;
//				debounced_clk<=1;
//				end
//			else if(flag1==3'd2)
//				begin
//				flag1<=3'd3;
//				end
//			else if(flag1==3'd4)
//				begin
//				flag1<=3'd5;
//				debounced_clk<=0;
//				end
//			else if(flag1==3'd5)
//				begin
//				flag1<=3'd0;
//				end
//		end
//	 
//	 
//	 ///// Divider //////////////


	reg [26:0]counter=0;
	 reg slow_clk;
	 
    always @(posedge clk)
    begin
        counter <= (counter>=4000000)?0:counter+1;
        slow_clk <= (counter < 2000000)?1'b0:1'b1;
    end
	 
	 assign slow_clock = slow_clk;
	 
	 reg temp_out;
	 reg [1:0]state ;
	 
	 
	 
	 ////// FSM //////////////
	 //assign cout = temp_out;
//	 always @( posedge slow_clock or posedge reset ) 
//	 
//	 begin 
//		if ( reset == 1)
//			begin
//				temp_out = 1;
//				state = 0;
//			end	
//		else if ( sel == 1 & state == 0 )	
//			begin
//				temp_out = 0;
//				state = 1;
//			end
//			
//		else if ( sel == 0 & state == 0 )	
//			begin
//				temp_out = 1;
//				state = 0;
//			end
//			
//		else if ( sel == 1 & state == 1 )	
//			begin
//				temp_out = 1;
//				state = 0;
//			end
//			
//			
//		else if ( sel == 0 & state == 1 )	
//			begin
//				temp_out = 0;
//				state = 2;
//			end
//			
//		else if ( sel == 1 & state == 2 )	
//			begin
//				temp_out = 0;
//				state = 2;
//			end
//			
//		else if ( sel == 0 & state == 2 )	
//			begin
//				temp_out = 0;
//				state = 1;
//			end
//			
//	 end

always @( posedge slow_clock or posedge reset ) 
	 
	 begin 
		if ( reset == 1)
			begin
				cout = 1;
				state = 0;
			end	
		else if ( sel == 1 & state == 0 )	
			begin
				cout = 0;
				state = 1;
			end
			
		else if ( sel == 0 & state == 0 )	
			begin
				cout = 1;
				state = 0;
			end
			
		else if ( sel == 1 & state == 1 )	
			begin
				cout = 1;
				state = 0;
			end
			
			
		else if ( sel == 0 & state == 1 )	
			begin
				cout = 0;
				state = 2;
			end
			
		else if ( sel == 1 & state == 2 )	
			begin
				cout = 0;
				state = 2;
			end
			
		else if ( sel == 0 & state == 2 )	
			begin
				cout = 0;
				state = 1;
			end
			
	 end
	 

endmodule
