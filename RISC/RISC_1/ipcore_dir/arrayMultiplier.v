`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:20:45 10/30/2019 
// Design Name: 
// Module Name:    arrayMultiplier 
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
module arrayMultiplier(a,b,y
    );     
	 
	parameter w = 32;       
	input [w-1:0] a, b;            // w-width       
	output [(2*w)-1:0] y  ;          // p-partials
	//output bits 	
	wire [(2*w*w)-1:0] p;        //assign width as input bits multiplyied by 
	
	genvar i;        
	assign p[(2*w)-1 : 0] = a[0] ? b : 0;  //first output size bits          
	generate            
		for (i = 1; i < w; i = i+1)       
			begin    : mult    
				 assign p[(w*(4+(2*(i-1))))-1 : (w*2)*i] = (a[i]?b<<i :0) + p[(w*(4+(2* 
					 (i-2))))-1 :(w*2)*(i-1)];       
			end     
	endgenerate          
	assign y=p[(2*w*w)-1:(2*w)*(w-1)];     //taking last output size bits       

endmodule
