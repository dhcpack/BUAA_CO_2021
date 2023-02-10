`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:15 09/08/2021 
// Design Name: 
// Module Name:    ciunt 
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
module ciunt(
    input clk,
    input rst_n,
    output [3:0] cnt
    );
	reg[3:0]cnt;
	always@(posedge clk,negedge res_n)
	begin
	if (!res_n)
	cnt<=0;
	else
	cnt<=cnt+1'b1;
	end


endmodule
