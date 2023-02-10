`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:20:26 11/20/2021 
// Design Name: 
// Module Name:    CU 
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
module CU(
	 input clk,
	 input reset,
	 input en,
    input [31:0] TnewI,
    output reg [31:0] TnewO,
    input [4:0] A1I,
    output reg [4:0] A1O,
    input [31:0] instrI,
    output reg [31:0] instrO,
    input [31:0] RD1I,
    output reg [31:0] RD1O,
    input [31:0] RD2I,
    output reg [31:0] RD2O,
    input [31:0] E32I,
    output reg [31:0] E32O,
    input [31:0] PC4I,
    output reg [31:0] PC4O,
    input [31:0] PC8I,
    output reg [31:0] PC8O,
    input [4:0] A2I,
    output reg [4:0] A2O,
    input [4:0] A3I,
    output reg [4:0] A3O,
    input [15:0] ImmI,
    output reg [15:0] ImmO,
    input [31:0] AOI,
    output reg [31:0] AOO,
    input [31:0] DRI,
    output reg [31:0] DRO,
	 input clr,
	 input [31:0] PCI,
	 output reg [31:0] PCO,
	 input [31:0] MDOI,
	 output reg [31:0] MDOO,
	 input bit1I,
	 output reg bit1O,
	 input [31:0] bit32I,
	 output reg [31:0] bit32O,
	 input stall,
	 input BDI,
	 output reg BDO,
	 input [6:2] ExcCodeI,
	 output reg [6:2] ExcCodeO,
	 input [31:0] CP0I,
	 output reg [31:0] CP0O,
	 input Req
    );
	
	initial 
	begin
		TnewO <= 31'b0;
			A1O <= 5'b0;
			instrO <= 31'b0;
			RD1O <= 31'b0;
			RD2O <= 31'b0;
			E32O <= 31'b0;
			PC4O <= 31'b0;
			PC8O <= 31'b0;
			A2O <= 5'b0;
			A3O <= 5'b0;
			ImmO <= 16'b0;
			AOO <= 32'b0;
			DRO <= 32'b0;
			PCO<= 32'b0;
			MDOO <= 32'b0;
			bit1O <= 1'b0;
			bit32O <= 32'b0;
			BDO<= 1'b0;
			ExcCodeO<= 5'b0;
			CP0O<=32'b0;
	end
	
	always @(posedge clk)
	begin
		if(reset==1||clr==1||Req)
		begin
			TnewO <= 31'b0;
			A1O <= 5'b0;
			instrO <= 31'b0;
			RD1O <= 31'b0;
			RD2O <= 31'b0;
			E32O <= 31'b0;
			PC4O <= 31'b0;
			PC8O <= 31'b0;
			A2O <= 5'b0;
			A3O <= 5'b0;
			ImmO <= 16'b0;
			AOO <= 32'b0;
			DRO <= 32'b0;
			PCO<= (Req) ? 32'h0000_4180 : 0;
			MDOO <= 32'b0;
			bit1O <= 1'b0;
			bit32O <= 32'b0;
			BDO<=1'b0;
			ExcCodeO<=5'b0;
			CP0O<=32'b0;
		end
		else if(stall==1)
		begin
			TnewO <= 31'b0;
			A1O <= 5'b0;
			instrO <= 31'b0;
			RD1O <= 31'b0;
			RD2O <= 31'b0;
			E32O <= 31'b0;
			PC4O <= 31'b0;
			PC8O <= 31'b0;
			A2O <= 5'b0;
			A3O <= 5'b0;
			ImmO <= 16'b0;
			AOO <= 32'b0;
			DRO <= 32'b0;
			PCO<= PCI;
			MDOO <= 32'b0;
			bit1O <= 1'b0;
			bit32O <= 32'b0;
			BDO<=BDI;
			ExcCodeO<=5'b0;
			CP0O<=32'b0;
		end
		else if (en!=1)
		begin
			TnewO <= (TnewI>0)?  (TnewI-1): 0 ;
			A1O <= A1I;
			instrO <= instrI;
			RD1O <= RD1I;
			RD2O <= RD2I;
			E32O <= E32I;
			PC4O <= PC4I;
			PC8O <= PC8I;
			A2O <= A2I;
			A3O <= A3I;
			ImmO <= ImmI;
			AOO <= AOI;
			DRO <= DRI;
			PCO<= PCI;
			MDOO<=MDOI;
			bit1O <= bit1I;
			bit32O <= bit32I;
			BDO<=BDI;
			ExcCodeO<=ExcCodeI;
			CP0O<=CP0I;
		end
	end

endmodule
