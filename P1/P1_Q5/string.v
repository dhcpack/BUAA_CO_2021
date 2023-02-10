`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:55 10/21/2021 
// Design Name: 
// Module Name:    string 
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
module string(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
	 
	 reg [1:0] state;
	 reg outt;
	 
	 wire char;
	 assign char = (in >= "0" && in <= "9") ? 0 : 1;
	 
	 parameter s0 = 2'b00;
	 parameter s1 = 2'd01;
	 parameter s2 = 2'd10;
	 parameter s3 = 2'd11;
	 
	 
	 initial begin
			state <= s0;
			outt <= 0;
	 end
	 
	 always @(posedge clk or posedge clr) begin
			if(clr == 1) begin
					state <= s0;
					outt <= 0;
			end
			else begin
					   case (state)
							2'b00  : begin
											if(char == 1) begin
												state <= s3;
											end
											else begin
												state <= s1;
												outt <= 1;
											end
										end
							2'b01  : begin
											outt <= 0;
											if (char) begin
												state <= s0;
											end
											else begin
												state <= s2;
											end
										end
							2'b10  : begin
											state <= s2;
										end
							2'b11  : begin
											state <= s3;
										end
							default: begin
											state <= s0;
										end
						endcase
			end
			
		end
	assign out = outt; 


endmodule
