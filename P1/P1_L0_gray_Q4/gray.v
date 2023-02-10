`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:16 10/21/2021 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input Clk,
    input Reset,
    input En,
    output [2:0] Output,
    output  Overflow
    );
	 
	 reg [2:0] out;
	 reg overflow;
	 
	 initial begin
			out <= 3'd0;
			overflow <= 1'b0;
	 end
	 
	 always @(posedge Clk) begin
			if(Reset == 1) begin
					out <= 3'd0;
					overflow <= 1'b0;
			end
			else begin
					if(En) begin
							
							case (out)
								3'b000 : begin
												out <= 3'b001;
											end
								3'b001 : begin
												out <= 3'b011;
											end
								3'b011 : begin
												out <= 3'b010;
											end
								3'b010 : begin
												out <= 3'b110;
											end
								3'b110 : begin
												out <= 3'b111;
											end
								3'b111 : begin
												out <= 3'b101;
											end
								3'b101 : begin
												out <= 3'b100;
											end
								3'b100 : begin
												out <= 3'b000;
												overflow <= 1;
											end
								default: begin
												out <= 3'b000;
											end
							endcase
		
					end
			end
	end
				
	assign Output = out;
   assign Overflow = overflow;
endmodule
