`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:36 09/17/2021 
// Design Name: 
// Module Name:    waytodealwithsignedwords 
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
`define WORDSIZE 3
module waytodealwithsignedwords(
    input clk,
    input reset,
    input [3:0] a,
    input [3:0] b,
    output res
    );
	 
	 reg [`WORDSIZE:0]d;
	 
	 assign res = $signed(a) > $signed(b);


endmodule
