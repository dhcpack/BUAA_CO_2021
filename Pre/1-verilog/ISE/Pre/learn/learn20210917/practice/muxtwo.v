`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:03:51 09/16/2021 
// Design Name: 
// Module Name:    muxtwo 
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
module muxtwo(
    input a,
    input b,
    input s1,
    output reg out
    );
		 always @(s1 or a or b)
			if (!s1)
				out=a;
			else
				out=b;


endmodule


