`include "constant.v"

module mips(
    input clk,
    input reset,
    input interrupt,                
    input [31:0] i_inst_rdata,
    input [31:0] m_data_rdata,

    output [31:0] i_inst_addr,
    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3 :0] m_data_byteen,
    output [31:0] m_inst_addr,
    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr,
    output [31:0] macroscopic_pc   
);

	reg r_HandleHW4 = 0;
	always @(posedge clk)
		r_HandleHW4 <= interruptout /* will handle hw4 */; // will respond to the interrupt outside

	// output
	assign m_data_addr = r_HandleHW4 ? 32'h7f20 : addr_dm;
	assign m_data_wdata = data_cpu;
	assign macroscopic_pc = commandAddr_E;

	// ports for IM DM

	wire [5:0] interruptrequest;
	assign interruptrequest = {3'd0, interrupt, interrupt_timer1, interrupt_timer0};
	
	// output of CPU
	wire we_cpu;
	wire [3:0] m_data_byteen_before;
	wire [31:0] addr_cpu, data_cpu, commandAddr_E;

	assign m_data_byteen = r_HandleHW4 ? 4'b1111 : ((we_dm == 1'd1) ? m_data_byteen_before : 4'd0);  //prepare for the posedge clk after interrupt outside

	// output of systembridge
	wire we_dm, we_timer0, we_timer1;
	wire [31:0] addr_dm, addr_timer0, addr_timer1;
    wire [31:0] data_to_cpu;
	// output of timecounter
	wire interrupt_timer0, interrupt_timer1;
	wire [31:0] Dout0, Dout1;


	CPU maincpu(
		.clk(clk),
		.reset(reset),
		.interruptrequest(interruptrequest),  // input six inturrupt request
		.command_F(i_inst_rdata),
		.loadfromDM(data_to_cpu),
		.we_cpu(we_cpu),
		.w_grf_we(w_grf_we),
		.interruptout(interruptout),  // output response to instrrupt outside
		.m_data_byteen(m_data_byteen_before),
		.w_grf_addr(w_grf_addr),
		.w_grf_wdata(w_grf_wdata), 
		.w_inst_addr(w_inst_addr),
		.i_inst_addr(i_inst_addr),
		.m_inst_addr(m_inst_addr),
		.addr_cpu(addr_cpu),
		.data_cpu(data_cpu),
		.commandAddr_E(commandAddr_E)
	);

	systembridge mainsystembridge(
		.we_cpu(we_cpu),
		.addr_cpu(addr_cpu),
		.data_dm(m_data_rdata),
		.data_timer0(Dout0),
		.data_timer1(Dout1),
		.we_dm(we_dm),
		.we_timer0(we_timer0),
		.we_timer1(we_timer1),
		.addr_dm(addr_dm),
		.addr_timer0(addr_timer0),
		.addr_timer1(addr_timer1),
		.data_to_cpu(data_to_cpu)
	);

	timecounter timecounter0(
		.clk(clk),
		.reset(reset),
		.addr(addr_timer0[31:2]),
		.we(we_timer0),
		.Din(data_cpu),
		.Dout(Dout0),
		.IRQ(interrupt_timer0)
	);

	timecounter timecounter1(
		.clk(clk),
		.reset(reset),
		.addr(addr_timer1[31:2]),
		.we(we_timer1),
		.Din(data_cpu),
		.Dout(Dout1),
		.IRQ(interrupt_timer1)
	);

	
endmodule //mips
