`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:17:21 09/16/2021 
// Design Name: 
// Module Name:    muxtwo1 
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
module count1s(
	input clk,
	input[7:0] rega,
	output reg [3:0] count
);
	always @(posedge clk)begin:count1
		reg[7:0] tempreg;
		count=0;
		tempreg=rega;
		while (tempreg)
			begin
				if (tempreg[0])
					count=count+1;
					tempreg=tempreg>>1;
			end
	end

endmodule
