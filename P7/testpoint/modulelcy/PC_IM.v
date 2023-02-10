`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:52 11/20/2021 
// Design Name: 
// Module Name:    PC_IM 
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
module PC_IM(
	 input reset,
	 input clk,
	 input en,
	 input ERET_D,
    output [31:0] PC_,
    input [31:0] NPC,
	 input [31:0] EPC,
	 input Req
    //output [31:0] instr
    );
	
	
	reg [31:0] im [0:4095];
	reg [31:0] PC;
	assign PC_ = (ERET_D==1)? EPC :PC;
	
	initial 
	begin
		PC<=  32'h0000_3000;
		//$readmemh("code.txt",im);
	end
	
	always @(posedge clk)
	begin 
		if(reset==1)
			PC<=  32'h0000_3000;
		else if( en !=1 ||Req==1)
		begin 
			PC<=NPC;
			
		end
	end
	

endmodule
