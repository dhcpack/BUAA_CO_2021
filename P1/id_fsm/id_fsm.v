`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:57:50 10/27/2021 
// Design Name: 
// Module Name:    id_fsm 
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
module id_fsm(
    input [7:0] char,
    input clk,
    output out
    );
	 
	 reg [1:0] state;
	 
	 localparam s0 = 2'd0;
	 localparam s1 = 2'd1;
	 localparam s2 = 2'd2;
	 localparam s3 = 2'd3;
	 
	 wire [1:0] chr;
	 assign chr = ((char >= "a" && char <= "z")||(char >= "A" && char <= "Z")) ? 2'd0 :
						(char >= "0" && char <= "9") ? 2'd1 : 2'd2;
	 
	 initial begin
			state <= 2'd0;
	end
	
	always @(posedge clk) begin
			case (state)
				s0  : begin
								if(chr == 2'd0) state <= s1;
								else state <= s0;
							end
				s1  : begin
								if(chr == 2'd0) state <= s1;
								else if (chr == 2'd1) state <= s2;
								else state <= s0;
							end
				s2  : begin
								if(chr == 2'd0) state <= s1;
								else if (chr == 2'd1) state <= s2;
								else state <= s0;
							end
				default: begin
								state <= s0;
							end
			endcase
	end
	
	assign out = (state == s2) ? 1 : 0;
	
				

endmodule
