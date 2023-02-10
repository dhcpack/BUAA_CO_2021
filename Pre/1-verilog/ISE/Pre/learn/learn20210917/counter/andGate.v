`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:45 09/14/2021 
// Design Name: 
// Module Name:    andGate 
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
module andGate(a,b,c);
	input a, b;
	output c;
	
	reg x;
	
	assign c = a & b;
	

endmodule
