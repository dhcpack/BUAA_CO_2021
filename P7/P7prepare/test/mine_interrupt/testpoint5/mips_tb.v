`timescale 1ns/1ps

module mips_tb;

	wire [31:0] addr;
	reg clk,reset,interrupt;
	reg [31:0] interruptAddress[0:63];
	integer interruptCounter,willInterrupt;

	mips uut(
		.clk(clk),.reset(reset),
		.interrupt(interrupt),
		.addr(addr)
	);

	initial begin
		clk<=0; reset<=1;
		interruptCounter<=0; willInterrupt<=0; interrupt<=0;
		interruptAddress[0]<=32'h00003090;	interruptAddress[1]<=32'h000030c0;	interruptAddress[2]<=32'h000030f8;
		interruptAddress[3]<=32'h00003130;	interruptAddress[4]<=32'h00003168;	interruptAddress[5]<=32'h0000319c;
		interruptAddress[6]<=32'h000031d0;	interruptAddress[7]<=32'h00003204;	interruptAddress[8]<=32'h00003238;
		interruptAddress[9]<=32'h0000326c;	interruptAddress[10]<=32'h000032a0;	interruptAddress[11]<=32'h000032d4;
		interruptAddress[12]<=32'h00003308;	interruptAddress[13]<=32'h0000333c;	interruptAddress[14]<=32'h00003370;
		interruptAddress[15]<=32'h000033a4;	interruptAddress[16]<=32'h000033d8;	interruptAddress[17]<=32'h0000340c;
		interruptAddress[18]<=32'h00003440;	interruptAddress[19]<=32'h00003474;	interruptAddress[20]<=32'h000041bc;
		#10; reset<=0;
	end
	always @(negedge clk) begin
		if (reset) interrupt<=0;
		else if (interrupt) begin
			if (interruptCounter==0) interrupt<=0;
			else interruptCounter<=interruptCounter-1;
		end
		else if (willInterrupt) begin
			if (willInterrupt==32'b1) begin interrupt<=1; willInterrupt<=0; end
			else willInterrupt<=willInterrupt-1;
		end
		else if (addr==interruptAddress[0]) begin interruptAddress[0]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=1; end
		else if (addr==interruptAddress[1]) begin interruptAddress[1]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=1; end
		else if (addr==interruptAddress[2]) begin interruptAddress[2]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=1; end
		else if (addr==interruptAddress[3]) begin interruptAddress[3]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=1; end
		else if (addr==interruptAddress[4]) begin interruptAddress[4]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[5]) begin interruptAddress[5]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[6]) begin interruptAddress[6]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[7]) begin interruptAddress[7]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[8]) begin interruptAddress[8]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[9]) begin interruptAddress[9]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[10]) begin interruptAddress[10]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[11]) begin interruptAddress[11]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[12]) begin interruptAddress[12]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[13]) begin interruptAddress[13]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[14]) begin interruptAddress[14]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[15]) begin interruptAddress[15]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[16]) begin interruptAddress[16]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[17]) begin interruptAddress[17]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[18]) begin interruptAddress[18]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[19]) begin interruptAddress[19]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=3; end
		else if (addr==interruptAddress[20]) begin interruptAddress[20]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=1; end
		else begin end
	end

	always #5 clk<=~clk;

endmodule