`timescale 1ns/1ps
`include "mips.v"
module mips_txt_int;

	reg clk;
	reg reset;
	reg interrupt;

	wire [31:0] macroscopic_pc;

	wire [31:0] i_inst_addr;
	wire [31:0] i_inst_rdata;

	wire [31:0] m_data_addr;
	wire [31:0] m_data_rdata;
	wire [31:0] m_data_wdata;
	wire [3 :0] m_data_byteen;

	wire [31:0] m_inst_addr;

	wire		w_grf_we;
	wire [4 :0] w_grf_addr;
	wire [31:0] w_grf_wdata;

	wire [31:0] w_inst_addr;

	mips uut(
		.clk(clk),
		.reset(reset),
		.interrupt(interrupt),
		.macroscopic_pc(macroscopic_pc),

		.i_inst_addr(i_inst_addr),
		.i_inst_rdata(i_inst_rdata),

		.m_data_addr(m_data_addr),
		.m_data_rdata(m_data_rdata),
		.m_data_wdata(m_data_wdata),
		.m_data_byteen(m_data_byteen),

		.m_inst_addr(m_inst_addr),

		.w_grf_we(w_grf_we),
		.w_grf_addr(w_grf_addr),
		.w_grf_wdata(w_grf_wdata),

		.w_inst_addr(w_inst_addr)
	);

	initial begin
		clk <= 0;
		reset <= 1;
		interrupt <= 0;
		#20 reset <= 0;
	end

	integer i;
	reg [31:0] fixed_addr;
	reg [31:0] fixed_wdata;
	reg [31:0] data[0:4095];
	reg [31:0] inst[0:5119];

	// ----------- For Instructions -----------

	assign m_data_rdata = data[(m_data_addr >> 2) % 5120];
	assign i_inst_rdata = inst[((i_inst_addr - 32'h3000) >> 2) % 5120];

	initial begin
		$readmemh("code.txt", inst);
		for (i = 0; i < 5120; i = i + 1) data[i] <= 0;
	end

	// ----------- For Data Memory -----------

	always @(*) begin
		fixed_wdata = data[(m_data_addr >> 2) & 4095];
		fixed_addr = m_data_addr & 32'hfffffffc;
		if (m_data_byteen[3]) fixed_wdata[31:24] = m_data_wdata[31:24];
		if (m_data_byteen[2]) fixed_wdata[23:16] = m_data_wdata[23:16];
		if (m_data_byteen[1]) fixed_wdata[15: 8] = m_data_wdata[15: 8];
		if (m_data_byteen[0]) fixed_wdata[7 : 0] = m_data_wdata[7 : 0];
	end

	always @(posedge clk) begin
		if (reset) for (i = 0; i < 4096; i = i + 1) data[i] <= 0;
		else if (|m_data_byteen && fixed_addr >> 2 < 4096) begin
			data[fixed_addr >> 2] <= fixed_wdata;
			$display("%d@%h: *%h <= %h", $time, m_inst_addr, fixed_addr, fixed_wdata);
		end
	end

	// ----------- For Registers -----------

	always @(posedge clk) begin
		if (~reset) begin
			if (w_grf_we && (w_grf_addr != 0)) begin
				$display("%d@%h: $%d <= %h", $time, w_inst_addr, w_grf_addr, w_grf_wdata);
			end
		end
	end

	// ----------- For Interrupt -----------

	wire [31:0] fixed_macroscopic_pc;

	assign fixed_macroscopic_pc = macroscopic_pc & 32'hfffffffc;

	always @(posedge clk) begin
		if (reset) interrupt <= 0;
	end

	always @(negedge clk) begin
		if (~reset && interrupt && |m_data_byteen) begin
			if (fixed_addr == 32'h7F20) begin
				interrupt <= 0;
			end
		end
	end

	reg [31:0] need_interrupt = 100;

	always @(negedge clk) begin
		if (~reset) begin
			if (need_interrupt == 32'd100 && fixed_macroscopic_pc == 32'h3010) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd99 && fixed_macroscopic_pc == 32'h3014) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd98 && fixed_macroscopic_pc == 32'h3018) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd97 && fixed_macroscopic_pc == 32'h301c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd96 && fixed_macroscopic_pc == 32'h3020) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd95 && fixed_macroscopic_pc == 32'h3024) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd94 && fixed_macroscopic_pc == 32'h3028) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd93 && fixed_macroscopic_pc == 32'h302c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd92 && fixed_macroscopic_pc == 32'h3030) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd91 && fixed_macroscopic_pc == 32'h3034) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd90 && fixed_macroscopic_pc == 32'h3038) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd89 && fixed_macroscopic_pc == 32'h303c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 2;
			end
			if (need_interrupt == 32'd87 && fixed_macroscopic_pc == 32'h3044) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd86 && fixed_macroscopic_pc == 32'h3048) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd85 && fixed_macroscopic_pc == 32'h304c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd84 && fixed_macroscopic_pc == 32'h3050) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd83 && fixed_macroscopic_pc == 32'h3054) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 2;
			end
			if (need_interrupt == 32'd81 && fixed_macroscopic_pc == 32'h305c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd80 && fixed_macroscopic_pc == 32'h3060) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd79 && fixed_macroscopic_pc == 32'h3064) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd78 && fixed_macroscopic_pc == 32'h3068) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd77 && fixed_macroscopic_pc == 32'h306c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd76 && fixed_macroscopic_pc == 32'h3070) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd75 && fixed_macroscopic_pc == 32'h3074) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd74 && fixed_macroscopic_pc == 32'h3078) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd73 && fixed_macroscopic_pc == 32'h307c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd72 && fixed_macroscopic_pc == 32'h3080) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd71 && fixed_macroscopic_pc == 32'h3084) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd70 && fixed_macroscopic_pc == 32'h3088) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd69 && fixed_macroscopic_pc == 32'h308c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd68 && fixed_macroscopic_pc == 32'h3090) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd67 && fixed_macroscopic_pc == 32'h3094) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd66 && fixed_macroscopic_pc == 32'h3098) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd65 && fixed_macroscopic_pc == 32'h309c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd64 && fixed_macroscopic_pc == 32'h30a0) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd63 && fixed_macroscopic_pc == 32'h30a4) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 3;
			end
			if (need_interrupt == 32'd60 && fixed_macroscopic_pc == 32'h30b0) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd59 && fixed_macroscopic_pc == 32'h30b4) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd58 && fixed_macroscopic_pc == 32'h30b8) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd57 && fixed_macroscopic_pc == 32'h30bc) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd56 && fixed_macroscopic_pc == 32'h30c0) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd55 && fixed_macroscopic_pc == 32'h30c4) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd54 && fixed_macroscopic_pc == 32'h30c8) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd53 && fixed_macroscopic_pc == 32'h30cc) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd52 && fixed_macroscopic_pc == 32'h30d0) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd51 && fixed_macroscopic_pc == 32'h30d4) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd50 && fixed_macroscopic_pc == 32'h30d8) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd49 && fixed_macroscopic_pc == 32'h30dc) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd48 && fixed_macroscopic_pc == 32'h30e0) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd47 && fixed_macroscopic_pc == 32'h30e4) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd46 && fixed_macroscopic_pc == 32'h30e8) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd45 && fixed_macroscopic_pc == 32'h30ec) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd44 && fixed_macroscopic_pc == 32'h30f0) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd43 && fixed_macroscopic_pc == 32'h30f4) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd42 && fixed_macroscopic_pc == 32'h30f8) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd41 && fixed_macroscopic_pc == 32'h30fc) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd40 && fixed_macroscopic_pc == 32'h3100) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd39 && fixed_macroscopic_pc == 32'h3104) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd38 && fixed_macroscopic_pc == 32'h3108) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 2;
			end
			if (need_interrupt == 32'd36 && fixed_macroscopic_pc == 32'h3110) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd35 && fixed_macroscopic_pc == 32'h3114) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd34 && fixed_macroscopic_pc == 32'h3118) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd33 && fixed_macroscopic_pc == 32'h311c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd32 && fixed_macroscopic_pc == 32'h3120) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd31 && fixed_macroscopic_pc == 32'h3124) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd30 && fixed_macroscopic_pc == 32'h3128) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd29 && fixed_macroscopic_pc == 32'h312c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd28 && fixed_macroscopic_pc == 32'h3130) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd27 && fixed_macroscopic_pc == 32'h3134) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd26 && fixed_macroscopic_pc == 32'h3138) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd25 && fixed_macroscopic_pc == 32'h313c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd24 && fixed_macroscopic_pc == 32'h3140) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd23 && fixed_macroscopic_pc == 32'h3144) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 2;
			end
			if (need_interrupt == 32'd21 && fixed_macroscopic_pc == 32'h314c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd20 && fixed_macroscopic_pc == 32'h3150) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd19 && fixed_macroscopic_pc == 32'h3154) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd18 && fixed_macroscopic_pc == 32'h3158) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd17 && fixed_macroscopic_pc == 32'h315c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd16 && fixed_macroscopic_pc == 32'h3160) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd15 && fixed_macroscopic_pc == 32'h3164) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd14 && fixed_macroscopic_pc == 32'h3168) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd13 && fixed_macroscopic_pc == 32'h316c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 2;
			end
			if (need_interrupt == 32'd11 && fixed_macroscopic_pc == 32'h3174) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd10 && fixed_macroscopic_pc == 32'h3178) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd9 && fixed_macroscopic_pc == 32'h317c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd8 && fixed_macroscopic_pc == 32'h3180) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd7 && fixed_macroscopic_pc == 32'h3184) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 4;
			end
			if (need_interrupt == 32'd3 && fixed_macroscopic_pc == 32'h3194) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd2 && fixed_macroscopic_pc == 32'h3198) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
			if (need_interrupt == 32'd1 && fixed_macroscopic_pc == 32'h319c) begin
					interrupt <= 1;
					need_interrupt <= need_interrupt - 1;
			end
		end
	end

	always #2 clk <= ~clk;

endmodule
