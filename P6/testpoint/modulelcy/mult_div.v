`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:47 11/28/2021 
// Design Name: 
// Module Name:    mult_div 
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
module mult_div(
    input clk,
    input reset,
    input [31:0] A,
    input [31:0] B,
    input [31:0]MDOp,
    input mthi,
    input mfhi,
    input mtlo,
    input mflo,
    output reg busy,
    output [31:0] MDO,
    input start
    );
		reg [63:0] ans;
		reg [31:0] high;
		reg [31:0] low;
		reg [31:0] cycle;
		
		assign MDO = (mfhi==1)? high:
						 (mflo==1)? low: 0;
						 
		initial
		begin
			ans <= 0;
			high <= 0;
			low <= 0;
			cycle <= 0;
			busy <=0;
		end
		
		always @(posedge clk)
		begin 
		
			if(reset==1)
			begin
				ans <= 0;
				high <= 0;
				low <= 0;
				cycle <= 0;
				busy <=0;
			end

			else if(busy ==0 )
			begin
				
				if(mthi==1) high<=A;
				if(mtlo==1) low <=A;
					
				if(start==1) 
				begin
					case(MDOp)
						0:begin
							cycle<=5;
							ans<= $signed(A) * $signed(B);
						end
						1:begin
							cycle<=5;
							ans <= A*B;
						end
						2:begin
							cycle<=10;
							ans<= {$signed(A)%$signed(B),$signed(A)/$signed(B)};
						end
						3:begin
							cycle<=10;
							ans <= {A%B,A/B};
						end
						default: begin end
					endcase
					busy<=1;
				end
				
			end
			
			else 
			begin
				
				if(cycle>1) cycle<=cycle-1;
				
				else begin {high,low}<=ans; busy<=0; end 
				
			end	
		
		end
		

endmodule
