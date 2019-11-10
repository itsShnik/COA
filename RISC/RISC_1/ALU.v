`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Amatya - Nikhil Sharma - Shah
// 
// Create Date:    14:41:49 10/23/2019 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
		// actually the immmediate, imm_addr and L will not be of 32 bits, but the computation will be done on the
		input [31:0]input1,
		input [31:0]input2,
		input [6:0] aluOp,
		input clk,
		output signed [31:0]hi_value,			// | output of mult / multu operations
		output signed [31:0]lo_value,			// |
		output reg zflag,				// |
		output reg overflowflag,		// |	 --> to be sent to branch logic
		output reg carryflag,			// |
		output reg signflag,			// |
		output reg [31:0]ALUresult	// to be sent as o/p to data memory or output
    );
	 
	// reg [31:0]input1;
	// reg [31:0]input2;
	 reg c32, c31;
	 wire signed [31:0]signed_i1 = input1;
	 wire signed [31:0]signed_i2 = input2;
	 reg signed [63:0]multo;
	 reg [63:0]multu;
	 
	 assign hi_value = (aluOp==0000001)? multu[63:32]:multo[63:32];
	 assign lo_value = (aluOp==0000001)? multu[31:0]:multo[31:0];
	 
	 wire [31:0]ip1,ip2;
	 assign ip1 = input1;
	 assign ip2 = input2;
	 
	 // heirarchal design 
	 // reg decalarations

	// assign adder_result_w = adder_result;
		// adder 
	
	 wire [31:0]adder_result_w;
	 wire carry_w;
	 hybridAdder h (.a(ip1),.b(ip2), .c_in(0) , .c_out(carry_w), .S(adder_result_w) );
	
	 wire [63:0]mult_result_w;
	 arrayMultiplier mult_unsigned (.a(ip1),.b(ip2), .y(mult_result_w) );
	 
	 wire [63:0]multo_result_w;
	 arrayMultiplierSigned mult_signed (.a(ip1),.b(ip2), .p(multo_result_w) );
	 
	 wire [31:0] shift_result_w;
	 wire dir_w;
	 reg dir;
	 assign dir_w = dir;
	 barrel_shift_register shifter (.inp(ip1),.shamt(ip2[4:0]), .outp(shift_result_w) ,.dir(dir_w));
	
	 // asynchronous operation
	 always @(*)
	 begin
//		input1 = i1;
//		input2 = i2;
		case(aluOp[6:4]) 
			3'b001: 
			begin              // logic instructions
				case(aluOp[3:0])
					4'b0001: 
					begin     //xor
						ALUresult=input1^input2;
						overflowflag=1'b0;
						carryflag=1'b0;
						zflag=(ALUresult==0)?1'b1:1'b0;
						signflag=ALUresult[31];
					end
					4'b0000:	
					begin 	//and
						ALUresult=input1&input2;
						overflowflag=1'b0;
						carryflag=1'b0;
						zflag=(ALUresult==0)?1'b1:1'b0;
						signflag=ALUresult[31];
					end
				endcase
			end			
			3'b000: 
			begin // artihmatic instructions
				case(aluOp[3:0])
					4'b0101:	
					begin		//comp
						ALUresult=~input2;
						overflowflag=1'b0;
						carryflag=1'b0;
						zflag=(ALUresult==0)?1'b1:1'b0;
						signflag=ALUresult[31];
					end
					4'b0000:	
					begin		//add
						//{c31,ALUresult[30:0]}=input1[30:0]+input2[30:0];
						ALUresult = adder_result_w;
						//{c32,ALUresult[31]}=input1[31]+input2[31]+c31;
						//overflowflag =((input1[31] == 0 && input2[31] == 0 && ALUresult[31] == 1 ) ||(input1[31] == 1 && input2[31] == 1 && ALUresult[31] == 0 )) ? 1 : 0;
						carryflag=carry_w;
						zflag=(ALUresult==0)?1'b1:1'b0;
						signflag=ALUresult[31];
									
					end
								
					4'b0101:	
					begin
						ALUresult=~input2;      //compi
						overflowflag=1'b0;
						carryflag=1'b0;
						zflag=(ALUresult==0)?1'b1:1'b0;
						signflag=ALUresult[31];
					end
					4'b0100:	
					begin				//addi
						
						ALUresult = adder_result_w;
						
						overflowflag =((input1[31] == 0 && input2[31] == 0 && ALUresult[31] == 1 ) ||(input1[31] == 1 && input2[31] == 1 && ALUresult[31] == 0 )) ? 1 : 0;
						carryflag=carry_w;
						zflag=(ALUresult==0)?1'b1:1'b0;
						signflag=ALUresult[31];
					end 
					
					4'b0010:	
					begin				//mult
						
						multo  = multo_result_w;
						signflag=input1[31]^input2[31];
						carryflag=1'b0;
						overflowflag=1'b0;
						
						zflag=(multo == 0)?1'b1:1'b0;
						ALUresult = 0;
						
				
					end 
					
					4'b0001:	
					begin				//multu
						
						//multu =input1[30:0]*input2[30:0];
						multu = mult_result_w;
						signflag=1'b0;
						carryflag=1'b0;
						overflowflag=1'b0;
						zflag=(multu == 0)?1'b1:1'b0;
						ALUresult = 0;
					end 
					endcase
					end
			3'b010: 
			begin // shift instructions
				case(aluOp[3:0])	
					4'b0000:	
					begin		//shll
//						ALUresult=input1<<input2;
						dir = 1;
						ALUresult = shift_result_w;
						overflowflag=1'b0;
						carryflag=1'b0;
						zflag=(ALUresult==0)?1'b1:1'b0;
						signflag=ALUresult[31];
					end
					4'b0001:	
					begin		//shrl
						dir = 0;
						ALUresult = shift_result_w;
						overflowflag=1'b0;
						carryflag=1'b0;
						zflag=(ALUresult==0)?1'b1:1'b0;
						signflag=ALUresult[31];
					end
					4'b0010:	
					begin		//shllv
						dir = 1;
						ALUresult = shift_result_w;
						overflowflag=1'b0;
						carryflag=1'b0;
						zflag=(ALUresult==0)?1'b1:1'b0;
						signflag=ALUresult[31];
					end	
					4'b0011:	
					begin		//shrlv
						if ( input1[31] == 0 )
						begin
							dir = 0;
							ALUresult = shift_result_w;
							overflowflag=1'b0;
							carryflag=1'b0;
							zflag=(ALUresult==0)?1'b1:1'b0;
							signflag=ALUresult[31];
						end
						else 
						begin
							
						end
					end	
					4'b0100:	
					begin		//shra
						ALUresult=input1>>>input2;
						overflowflag=1'b0;
						carryflag=1'b0;
						zflag=(ALUresult==0)?1'b1:1'b0;
						signflag=ALUresult[31];
					end	
					4'b0101:	
					begin		//shrav
						ALUresult=input1>>>input2;
						overflowflag=1'b0;
						carryflag=1'b0;
						zflag=(ALUresult==0)?1'b1:1'b0;
						signflag=ALUresult[31];
					end	
				endcase
					end				
			 
				default:                //default: keep everything 0
					begin
						ALUresult=0;
					end
			endcase
		end
		
		
endmodule
