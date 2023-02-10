// MIPS System
`include "mips_cpu.v"
`include "mips_timer.v"
`include "mips_bridge.v"

module mips(
    input clk,                       // 时钟信号
    input reset,                     // 同步复位信号
    input interrupt,                 // 外部中断信号
    output [31:0] macroscopic_pc,    // 宏观 PC（见下文）

    output [31:0] i_inst_addr,       // 取指 PC
    input  [31:0] i_inst_rdata,      // i_inst_addr 对应的 32 位指令

    output [31:0] m_data_addr,       // 数据存储器待写入地址
    input  [31:0] m_data_rdata,      // m_data_addr 对应的 32 位数据
    output [31:0] m_data_wdata,      // 数据存储器待写入数据
    output [3 :0] m_data_byteen,     // 字节使能信号

    output [31:0] m_inst_addr,       // M 级PC

    output w_grf_we,                 // grf 写使能信号
    output [4 :0] w_grf_addr,        // grf 待写入寄存器编号
    output [31:0] w_grf_wdata,       // grf 待写入数据

    output [31:0] w_inst_addr        // W 级 PC
);

    wire [31:0] w_CPUMRData;
    wire        w_CPUMException;
    wire  [7:0] w_ExternalInterrupt;
    
    wire w_CPUResponseToExtInterrupt;

    mips_cpu    m_cpu(
        .clk(clk), .reset(reset),

        .i_inst_addr (i_inst_addr),
        .i_inst_rdata(i_inst_rdata),

        .w_grf_we   (w_grf_we),
        .w_grf_addr (w_grf_addr),
        .w_grf_wdata(w_grf_wdata),
        .w_inst_addr(w_inst_addr),

        .m_inst_addr        (m_inst_addr),
        .m_data_rdata       (w_CPUMRData),
        .iMemoryException(w_CPUMException), .iExternalInterrupt(w_ExternalInterrupt),

        .oResponseToExtInterrupt(w_CPUResponseToExtInterrupt)
    );
    assign macroscopic_pc = m_cpu.m_inst_addr;

    wire [31:0] w_T0RData;
    wire [31:0] w_T1RData;

    mips_bridge m_bridge(.clk(clk),
        .iCPUMAddr  (m_cpu.m_data_addr),    .oDMAddr  (m_data_addr),
        .oCPUMRData (w_CPUMRData),          .iDMRData (m_data_rdata),
        .iCPUMWData (m_cpu.m_data_wdata),   .oDMWData (m_data_wdata),
        .iCPUMByteEn(m_cpu.m_data_byteen),
        .iCPURByteEn(m_cpu.oDataRByteEn),
        .oCPUMemException(w_CPUMException),

        .iT0RData(w_T0RData),
        .iT1RData(w_T1RData),
        .iResponseToExtInterrupt(w_CPUResponseToExtInterrupt)
    );

    assign m_data_byteen = m_cpu.oForceDisableDMWE ? 0 : m_bridge.oDMByteEn;
    
    TC m_timer0(
        .clk(clk), .reset(reset),
        .Addr(m_bridge.oT0Addr  ),
        .WE  (m_bridge.oT0WE    && !m_cpu.oForceDisableDMWE),
        .Din (m_bridge.oT0WData ),
        .Dout(w_T0RData)
    );

    TC m_timer1(
        .clk(clk), .reset(reset),
        .Addr(m_bridge.oT1Addr  ),
        .WE  (m_bridge.oT1WE    && !m_cpu.oForceDisableDMWE),
        .Din (m_bridge.oT1WData ),
        .Dout(w_T1RData)
    );

    assign w_ExternalInterrupt = {
        3'b000,
        interrupt,
        m_timer1.IRQ,
        m_timer0.IRQ,
        2'b00
    };
endmodule
