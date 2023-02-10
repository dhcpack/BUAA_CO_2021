`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:30 09/17/2021 
// Design Name: 
// Module Name:    Sample 
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
module Sample(
    input clk
    );
	 
	 wire a;
	 reg b;
	 
	 initial begin
		b = 0;
	 end
	 
	 always @(posedge clk)begin
		b = ~b;
	 end
	 
/*	 always #5 b=~b;
	 
	 //module AndGate(input a, input b, output c);
	 wire x,y,z;
	 AndGate and1(x, y, z);
	 AndGate and2(.b(x), .c(z));
*/
endmodule
