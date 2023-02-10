`timescale 1ns/1ps

`define mdmthi		4'b0001
`define mdmtlo		4'b0010
`define mddiv		4'b0011
`define mddivu		4'b0100
`define mdmult		4'b0101
`define mdmultu		4'b0110
`define mdmadd		4'b0111
`define mdmaddu		4'b1000
`define mdmsub		4'b1001
`define mdmsubu		4'b1010

module MulDivSolver(
		input clk,input reset,
		input [3:0] mulDivOperation,
		input [31:0] mulDivInputA,
		input [31:0] mulDivInputB,
		output busySignal,
		output startSignal,
		output reg [31:0] registerHI,
		output reg [31:0] registerLO
	);

	integer delayNum; reg [31:0] tmpHI,tmpLO;

	assign busySignal=(delayNum!=0) && ~startSignal;
	assign startSignal=(mulDivOperation==`mdmult) || (mulDivOperation==`mdmultu) || (mulDivOperation==`mddiv) || (mulDivOperation==`mddivu)
		|| (mulDivOperation==`mdmadd) || (mulDivOperation==`mdmaddu) || (mulDivOperation==`mdmsub) || (mulDivOperation==`mdmsubu);

	initial begin registerHI<=0; registerLO<=0; tmpHI<=0; tmpLO<=0; delayNum<=0; end

	always @(posedge clk) begin
		if (reset) begin registerHI<=0; registerLO<=0; tmpHI<=0; tmpLO<=0; delayNum<=0; end
		else if (delayNum) begin
			delayNum<=delayNum-1;
			if (delayNum==1) begin registerHI<=tmpHI; registerLO<=tmpLO; end
		end
		else if (mulDivOperation==`mdmtlo) registerLO<=mulDivInputA;
		else if (mulDivOperation==`mdmthi) registerHI<=mulDivInputA;
		else if (mulDivOperation==`mdmult) begin
			delayNum<=5; {tmpHI,tmpLO}<=$signed(mulDivInputA)*$signed(mulDivInputB);
		end
		else if (mulDivOperation==`mdmultu) begin
			delayNum<=5; {tmpHI,tmpLO}<=mulDivInputA*mulDivInputB;
		end
		else if (mulDivOperation==`mddiv) begin
			delayNum<=10; if (mulDivInputB==0) {tmpHI,tmpLO}<={registerHI,registerLO};
			else begin tmpHI<=$signed(mulDivInputA)%$signed(mulDivInputB); tmpLO<=$signed(mulDivInputA)/$signed(mulDivInputB); end
		end
		else if (mulDivOperation==`mddivu) begin
			delayNum<=10; if (mulDivInputB==0) {tmpHI,tmpLO}<={registerHI,registerLO};
			else begin tmpHI<=mulDivInputA%mulDivInputB; tmpLO<=mulDivInputA/mulDivInputB; end
		end
		else if (mulDivOperation==`mdmadd) begin
			delayNum<=5; {tmpHI,tmpLO}<=$signed({registerHI,registerLO})+$signed(mulDivInputA)*$signed(mulDivInputB);
		end
		else if (mulDivOperation==`mdmaddu) begin
			delayNum<=5; {tmpHI,tmpLO}<={registerHI,registerLO}+mulDivInputA*mulDivInputB;
		end
		else if (mulDivOperation==`mdmsub) begin
			delayNum<=5; {tmpHI,tmpLO}<=$signed({registerHI,registerLO})-$signed(mulDivInputA)*$signed(mulDivInputB);
		end
		else if (mulDivOperation==`mdmsubu) begin
			delayNum<=5; {tmpHI,tmpLO}<={registerHI,registerLO}-mulDivInputA*mulDivInputB;
		end
		else begin end
	end

endmodule