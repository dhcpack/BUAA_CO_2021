`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:19 09/14/2021 
// Design Name: 
// Module Name:    sillyfunction 
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
module sillyfunction(
    input a,
    input b,
    input c,
    output y
    );
	assign y=~a & ~b &~c |
				a & ~b & ~c |
				a & ~b &c;
endmodule
