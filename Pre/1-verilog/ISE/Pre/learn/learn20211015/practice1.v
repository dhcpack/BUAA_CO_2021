`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:57:13 10/15/2021 
// Design Name: 
// Module Name:    practice1 
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
module practice1(
    );
	reg a;
	reg b;
	reg c;

	initial begin
		a=0;
		b=1;
		c=0;
		
		#5;
		a<= b;
		b=c;
		c<=b;
	end


endmodule
