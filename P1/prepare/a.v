`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:21 10/26/2021 
// Design Name: 
// Module Name:    a1639 
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
module a1639(
	input a,b,
	output reg c
    );
	 
	 always @(*) begin
			c = a & b;
	 end


endmodule
