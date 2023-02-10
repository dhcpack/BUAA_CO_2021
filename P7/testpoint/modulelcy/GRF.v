`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:28 11/20/2021 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input RegWr,
    input [4:0] A1,
    input [4:0] A2,
    output [31:0] RD1,
    output [31:0] RD2,
    input [4:0] A3,
    input [31:0] WD,
    input clk,
    input reset,
	 input [31:0] PC
    );
	integer i;
	reg [31:0] mem [0:31];
	
	initial 
	begin
		for ( i=0;i<32;i=i+1)
			mem[i] <= 32'b0;
	end
	
	assign RD1 = mem[A1];
	assign RD2 = mem[A2];
	
	always @(posedge clk)
	begin 
		if(reset==1)
			for ( i=0;i<32;i=i+1)
				mem[i] <= 32'b0;
				
		else if(RegWr==1&&(A3!=0))
		begin
			mem[A3] <= WD;
			//$display("@%h: $%d <= %h", PC, A3, WD);
		end 
	end

endmodule
