`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:10 09/17/2021 
// Design Name: 
// Module Name:    qqq 
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


	begin
		reg[7:0] tempreg;
		count<=0;
		tempreg=rega;
		while (tempreg)
			begin
				if (tempreg[0])
					count<=count+1;
					tempreg=tempreg>>1;
			end
	end

endmodule
