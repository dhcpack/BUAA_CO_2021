`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:36 09/17/2021 
// Design Name: 
// Module Name:    zs 
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
module zs(
    input clk,
    input a,
    output b,
    output c
    );
	
	reg b,c;
always @(posedge clk)
	begin
		b <= a;
		c <= b;
	end

endmodule
