`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:29:13 11/20/2021 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset,
	 input interrupt,
	 output [31:0] macroscopic_pc,
	 
	 output [31:0] i_inst_addr,
	 input [31:0] i_inst_rdata,
	 
	 input [31:0] m_data_rdata,
	 output [31:0] m_data_addr,
	 output [31:0] m_data_wdata,
	 output [3:0] m_data_byteen,
	 output [31:0] m_inst_addr,
	 output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr
    );
	 
	 wire IRQ_TC2,IRQ_TC1;
	 wire [31:0] TCRD;
	 wire WE_TC1,WE_TC2;
	 wire [31:2] Addr_TC1;
	 wire [31:2] Addr_TC2;
	 wire [31:0] Dout_TC1;
	 wire [31:0] Dout_TC2;
	 wire [31:0] RD2_M_final;
	 wire [3:0] m_data_byteen_ori;
	 wire [31:0] m_data_addr_ori;
	 wire Req;
	 wire MemWr_M;
	 wire interrupt_out;
	 assign Addr_TC1 = m_data_addr[31:2];
	 assign Addr_TC2 = m_data_addr[31:2];
	 reg response_interrupt; 
	 
	 always@(posedge clk)
	 begin
		response_interrupt <= interrupt_out;
	 end
	 assign m_data_byteen = response_interrupt ? 1 : m_data_byteen_ori;
	 assign m_data_addr   = response_interrupt ? 32'h7f20 : m_data_addr_ori;
	   
	 CPU my_CPU(
    .clk(clk),
    .reset(reset),
	 .interrupt(interrupt),
	 .macroscopic_pc(macroscopic_pc),
	 .i_inst_addr(i_inst_addr), 
	 .i_inst_rdata(i_inst_rdata),
	 .m_data_rdata(m_data_rdata),
	 .m_data_addr(m_data_addr_ori),
	 .m_data_wdata(m_data_wdata),
	 .m_data_byteen(m_data_byteen_ori),
	 .m_inst_addr(m_inst_addr),
	 .w_grf_we(w_grf_we),
    .w_grf_addr(w_grf_addr),
    .w_grf_wdata(w_grf_wdata),
    .w_inst_addr(w_inst_addr),
	 .IRQ_TC2(IRQ_TC2), 
	 .IRQ_TC1(IRQ_TC1),
	 .TCRD(TCRD),
	 .RD2_M_final(RD2_M_final),
	 .Req(Req),
	 .interrupt_out(interrupt_out),
	 .MemWr_M(MemWr_M)
    );
	 
	 TC TC1(
	 .clk(clk),
	 .reset(reset),
	 .Addr(Addr_TC1),
    .WE(WE_TC1),
    .Din(RD2_M_final),
    .Dout(Dout_TC1),
    .IRQ(IRQ_TC1)
	 );

	TC TC2(
	 .clk(clk),
	 .reset(reset),
	 .Addr(Addr_TC2),
    .WE(WE_TC2),
    .Din(RD2_M_final),
    .Dout(Dout_TC2), 
    .IRQ(IRQ_TC2)
	 );
	 
	bridge my_bridge(
		.TCRD(TCRD),
		.WE_TC1(WE_TC1),
		.WE_TC2(WE_TC2), 
		.Dout_TC1(Dout_TC1),
		.Dout_TC2(Dout_TC2),
		.RD2_M_final(RD2_M_final),
		.addr(m_data_addr),
		.Req(Req),
		.MemWr_M(MemWr_M)
	);
	
endmodule
