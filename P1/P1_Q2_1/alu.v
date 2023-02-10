`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:56 10/21/2021 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output [31:0] C
    );
	 
	 reg [31:0] c;
	 
	 always @(*) begin
		   case (ALUOp)
				3'b000 : begin
								c = A + B;
							end
				3'b001 : begin
								c = A - B;
							end
				3'b010 : begin
								c = A & B;
							end
				3'b011 : begin
								c = A | B;
							end
				3'b100 : begin
								c = A >> B;
							end
				3'b101 : begin
								c = $signed(A) >>> B;
							end
				default: begin
								c = 32'd0;
							end
			endcase
	 end
	 
	 assign C = c;
		
			


endmodule
