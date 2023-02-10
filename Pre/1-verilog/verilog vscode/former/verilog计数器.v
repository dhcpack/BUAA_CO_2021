`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:51:23 09/18/2021 
// Design Name: 
// Module Name:    work1 
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
module code(
    input Clk,
    input Reset,
    input Slt,
    input En,
    output reg [63:0] Output0,
    output reg [63:0] Output1
    );
	reg [1:0] counter = 2'b00;
    always @(posedge Clk) begin
        if (Reset == 1'b1)begin
            Output0 <= 64'h0000_0000_0000_0000;
            Output1 <= 64'h0000_0000_0000_0000;
        end
        else if (En == 1'b1)begin
            if (Slt == 1'b0)begin
                Output0 <= Output0 + 64'h0000_0000_0000_0001;
					Output1 <= Output1;
            end
            else if(Slt == 1) begin
					counter <= counter + 2'b01;
					if (counter == 2'b11)begin
						Output0 <= Output0;
					    Output1 <= Output1 + 64'h0000_0000_0000_0001;
					end
					else begin
					    Output0 <= Output0;
						Output1 <= Output1;
					end		 
            end
        end
		else begin
				Output0 <= Output0;
				Output1 <= Output1;
		end
    end
endmodule