`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:44 09/14/2021 
// Design Name: 
// Module Name:    addGate 
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
module AndGate(
    input i1,
    input i2,
    output o
    );
	 
	assign o = i1&i2;
	reg [31:0] r1, r2, mem[1023:0];
	integer c = 32'd9999;
	parameter d = 10'b101;
	
	
endmodule
