`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:16:06 10/21/2021 
// Design Name: 
// Module Name:    BlockChecker 
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
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output result
    );
	
	reg [2:0] statea;
	reg [2:0] stateb;
	reg judge;
	reg first;
	reg [31:0] cnt;
	
	initial begin
			statea <= 3'd0;
			stateb <= 3'd0;
			cnt <= 32'b0;
			judge <= 0;
			first <= 0;
	end
	
	localparam s0 = 3'd0;
	localparam s1 = 3'd1;
	localparam s2 = 3'd2;
	localparam s3 = 3'd3;
	localparam s4 = 3'd4;
	localparam s5 = 3'd5;
	localparam s6 = 3'd6;
	localparam s7 = 3'd7;
	
	always @(posedge clk or posedge reset) begin
			if(reset) begin
					statea <= 3'd0;
					stateb <= 3'd0;
					cnt <= 32'd0;
					judge <= 0;
					first <= 0;
			end
			else begin
					   case (statea)
							s0 : begin
											if(in == "b"||in == "B") statea <= s1;
											else if(in == " ") statea <= s0;
											else statea <= s7;																		
										end
							s1 : begin
											if(in == "e"||in == "E") statea <= s2;
											else if(in == " ") statea <= s0;
											else statea <= s7;
										end
							s2 : begin
											if(in == "g"||in == "G") statea <= s3;
											else if(in == " ") statea <= s0;
											else statea <= s7;
										end
							s3 : begin
											if(in == "i"||in == "I") statea <= s4;
											else if(in == " ") statea <= s0;
											else statea <= s7;
										end
							s4 : begin
											if(in == "n"||in == "N")
											begin
												statea <= s5;
												cnt <= cnt + 32'd1;
											end
											else if(in == " ") statea <= s0;
											else statea <= s7;
										end
							s5 : begin
											if(in == " ")begin
												statea <= s6;
											end
											else begin
												cnt <= cnt - 32'd1;
												statea <= s7;
											end
										end
							s6 : begin
											if(in == " ") statea <= s0;
											else if(in == "b"||in == "B") statea <= s1;
											else statea <= s7;												
										end
							s7 : begin
											if(in == " ") statea <= s0;
											else statea <= s7;
										end
							default: begin
											statea <= s0;
										end
						endcase
						
						
						
					case (stateb)
						s0 : begin
										if(in == "e"||in == "E") stateb <= s1;
										else if(in == " ") stateb <= s0;
										else stateb <= s5;
									end
						s1 : begin
										if(in == "n"||in == "N") stateb <= s2;
										else if(in == " ") stateb <= s0;
										else stateb <= s5;
									end
						s2 : begin
										if(in == "d"||in == "D") begin
											if(cnt == 32'd0) begin
												judge <= 1'd1;
											end
											cnt <= cnt - 32'd1;
											stateb <= s3;
										end
										else if(in == " ") stateb <= s0;
										else stateb <= s5;
									end
						s3 : begin
										if(in == " ") begin
											stateb <= s4;
											if(judge == 1'd1) begin
												first <= 1'd1;
											end
										end
										else begin
											stateb <= s5;
											cnt <= cnt + 32'd1;
											if(cnt == 32'hffff_ffff && judge == 1'd1 && first == 1'd0) begin
												judge <= 1'd0;
											end
										end	
									end
						s4 : begin
										if(in == " ")begin
											stateb <= s0;
										end
										else if (in == "E"||in == "e") begin
											stateb <= s1;
										end
										else begin
											stateb <= s5;
										end								
									end
						s5 : begin
										if(in == " ") stateb <= s0;
										else stateb <= s5;
									end
						default: begin
										stateb <= s0;
									end
					endcase
					
			end
		end
			
			assign result = (cnt == 32'd0 && judge == 0) ? 1 : 0;
			
			
	

endmodule
