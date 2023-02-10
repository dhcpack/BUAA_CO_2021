`timescale 1ns/1ps

module StandardTimer(
		input clk,input reset,
		input debugMood,
		input [31:0] timerAddr,
		input timerWriteEnabled,
		input [31:0] dataToTimer,
		input [31:0] currentCommandAddr,
		output [31:0] dataFromTimer,
		output interruptRequest
	);

	reg tempInterrupt; reg [1:0] timerMood; integer i;
	reg [31:0] timerMemory [2:0]; wire [31:0] fixedDataToTimer;

	assign dataFromTimer=timerMemory[timerAddr[3:2]];
	assign interruptRequest=timerMemory[0][3]&tempInterrupt;
	assign fixedDataToTimer=(timerAddr[3:2]==0)?{28'b0,dataToTimer[3:0]}:dataToTimer;

	initial begin
		timerMood<=0; tempInterrupt<=0;
		for (i=0;i<3;i=i+1) timerMemory[i]<=0;
	end

	always @(posedge clk) begin
		if (reset) begin
			timerMood<=0; tempInterrupt<=0;
			for (i=0;i<3;i=i+1) timerMemory[i]<=0;
		end
		else if (timerWriteEnabled) begin
			timerMemory[timerAddr[3:2]]<=fixedDataToTimer;
			if (debugMood) $display("%d@%08h: *%08h <= %08h",$time,
				currentCommandAddr,(timerAddr>>2)<<2,fixedDataToTimer);
		end
		else if (timerMood==0 && !debugMood) begin
			if (timerMemory[0][0]) begin timerMood<=1; tempInterrupt<=1'b0; end
			else begin end
		end
		else if (timerMood==1 && !debugMood) begin timerMemory[2]<=timerMemory[1]; timerMood<=2; end
		else if (timerMood==2 && !debugMood) begin
			if (timerMemory[0][0]) begin
				if (timerMemory[2]>1) timerMemory[2]<=timerMemory[2]-1;
				else begin timerMemory[2]<=0; timerMood<=3; tempInterrupt<=1'b1; end
			end
			else timerMood<=0;
		end
		else if (timerMood==3 && !debugMood) begin
			if (timerMemory[0][2:1]==2'b00) timerMemory[0][0]<=1'b0;
			else tempInterrupt<=1'b0; timerMood<=0;
		end
		else begin end
	end

endmodule