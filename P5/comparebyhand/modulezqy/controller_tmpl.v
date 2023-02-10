`include "mod_PC.v"
`include "mod_MemInst.v"
`include "mod_MemData.v"
`include "mod_Splitter.v"
`include "mod_ALU.v"
`include "mod_CMP.v"
`include "mod_EXT.v"
`include "mod_GRF.v"
`include "mod_Branch.v"
`include "mod_Replacer.v"

`include "mod_regIFID.v"
`include "mod_regIDEX.v"
`include "mod_regEXMem.v"
`include "mod_regMemWB.v"

`include "control_values.v"

module match_32bit(
    input [31:0] inst,
    input [31:0] mask, input [31:0] patt,
    output o);
    assign o = (inst & mask) == patt;
endmodule

module mod_Controller(
    input [31:0] inst,
    output reg [2:0] cResultSince,
    output reg cUseRS,
    output reg cUseRT,
    output reg [2:0] cUseAtRS,
    output reg [2:0] cUseAtRT,

    output reg [1:0] cBranchMode,
    output reg [2:0] cCmpFlag,
    output reg       cCmpN2Zero,
    output reg [1:0] cEXTOp,
    output reg       cALUIn2Sel,
    output reg [3:0] cALUOp,
    output reg       cDMWriteEnable,
    output reg [1:0] cRFWEFlag,
    output reg [1:0] cRFWTSel,
    output reg [1:0] cRFWDSel
);

// MATCH REPLACE

    always @(*) begin
        if(is_addu.o) begin // addu rd, rs, rt
            //$display("addu");
            cResultSince    <= `M_levelNum;
            cUseRS          <= `YES;
            cUseRT          <= `YES;
            cUseAtRS        <= `E_levelNum;
            cUseAtRT        <= `E_levelNum;
            cBranchMode     <= `cBranchMode_nop;
            cCmpFlag        <= `XXX;
            cCmpN2Zero      <= `XXX;
            cEXTOp          <= `XXX;
            cALUIn2Sel      <= `cALUIn2Sel_rt;
            cALUOp          <= `cALUOp_add;
            cDMWriteEnable  <= `NO;
            cRFWEFlag       <= `cRFWEFlag_always;
            cRFWTSel        <= `cRFWTSel_rd;
            cRFWDSel        <= `cRFWDSel_alu;
        end else
        if(is_subu.o) begin // subu rd, rs, rt
            //$display("subu");
            cResultSince    <= `M_levelNum;
            cUseRS          <= `YES;
            cUseRT          <= `YES;
            cUseAtRS        <= `E_levelNum;
            cUseAtRT        <= `E_levelNum;
            cBranchMode     <= `cBranchMode_nop;
            cCmpFlag        <= `XXX;
            cCmpN2Zero      <= `XXX;
            cEXTOp          <= `XXX;
            cALUIn2Sel      <= `cALUIn2Sel_rt;
            cALUOp          <= `cALUOp_sub;
            cDMWriteEnable  <= `NO;
            cRFWEFlag       <= `cRFWEFlag_always;
            cRFWTSel        <= `cRFWTSel_rd;
            cRFWDSel        <= `cRFWDSel_alu;
        end else
        if(is_ori.o) begin // ori rt, rs, imm16
            //$display("addu");
            cResultSince    <= `M_levelNum;
            cUseRS          <= `YES;
            cUseRT          <= `NO;
            cUseAtRS        <= `E_levelNum;
            cUseAtRT        <= `XXX;
            cBranchMode     <= `cBranchMode_nop;
            cCmpFlag        <= `XXX;
            cCmpN2Zero      <= `XXX;
            cEXTOp          <= `cEXTOp_zero;
            cALUIn2Sel      <= `cALUIn2Sel_imm;
            cALUOp          <= `cALUOp_or;
            cDMWriteEnable  <= `NO;
            cRFWEFlag       <= `cRFWEFlag_always;
            cRFWTSel        <= `cRFWTSel_rt;
            cRFWDSel        <= `cRFWDSel_alu;
        end else
        if(is_lw.o) begin // lw rt, rs, imm16
            //$display("lw");
            cResultSince    <= `W_levelNum;
            cUseRS          <= `YES;
            cUseRT          <= `NO;
            cUseAtRS        <= `E_levelNum;
            cUseAtRT        <= `XXX;
            cBranchMode     <= `cBranchMode_nop;
            cCmpFlag        <= `XXX;
            cCmpN2Zero      <= `XXX;
            cEXTOp          <= `cEXTOp_sign;
            cALUIn2Sel      <= `cALUIn2Sel_imm;
            cALUOp          <= `cALUOp_add;
            cDMWriteEnable  <= `NO;
            cRFWEFlag       <= `cRFWEFlag_always;
            cRFWTSel        <= `cRFWTSel_rt;
            cRFWDSel        <= `cRFWDSel_mem;
        end else
        if(is_sw.o) begin // sw rt, rs, imm16
            //$display("sw");
            cResultSince    <= `XXX;
            cUseRS          <= `YES;
            cUseRT          <= `YES;
            cUseAtRS        <= `E_levelNum;
            cUseAtRT        <= `M_levelNum;
            cBranchMode     <= `cBranchMode_nop;
            cCmpFlag        <= `XXX;
            cCmpN2Zero      <= `XXX;
            cEXTOp          <= `cEXTOp_sign;
            cALUIn2Sel      <= `cALUIn2Sel_imm;
            cALUOp          <= `cALUOp_add;
            cDMWriteEnable  <= `YES;
            cRFWEFlag       <= `cRFWEFlag_never;
            cRFWTSel        <= `XXX;
            cRFWDSel        <= `XXX;
        end else
        if(is_beq.o) begin // beq rs, rt, imm16
            //$display("beq");
            cResultSince    <= `XXX;
            cUseRS          <= `YES;
            cUseRT          <= `YES;
            cUseAtRS        <= `D_levelNum;
            cUseAtRT        <= `D_levelNum;
            cBranchMode     <= `cBranchMode_cnd;
            cCmpFlag        <= `cCmpFlag_eq;
            cCmpN2Zero      <= `NO;
            cEXTOp          <= `XXX;
            cALUIn2Sel      <= `XXX;
            cALUOp          <= `XXX;
            cDMWriteEnable  <= `NO;
            cRFWEFlag       <= `cRFWEFlag_never;
            cRFWTSel        <= `XXX;
            cRFWDSel        <= `XXX;
        end else
        if(is_lui.o) begin // lui rt, imm16
            cResultSince    <= `M_levelNum;
            cUseRS          <= `NO;
            cUseRT          <= `NO;
            cUseAtRS        <= `XXX;
            cUseAtRT        <= `XXX;
            cBranchMode     <= `cBranchMode_nop;
            cCmpFlag        <= `XXX;
            cCmpN2Zero      <= `XXX;
            cEXTOp          <= `cEXTOp_high;
            cALUIn2Sel      <= `cALUIn2Sel_imm;
            cALUOp          <= `cALUOp_n2;
            cDMWriteEnable  <= `NO;
            cRFWEFlag       <= `cRFWEFlag_always;
            cRFWTSel        <= `cRFWTSel_rt;
            cRFWDSel        <= `cRFWDSel_alu;
        end else
        if(is_jal.o) begin // jal imm26
            cResultSince    <= `M_levelNum;
            cUseRS          <= `NO;
            cUseRT          <= `NO;
            cUseAtRS        <= `XXX;
            cUseAtRT        <= `XXX;
            cBranchMode     <= `cBranchMode_jmp;
            cCmpFlag        <= `XXX;
            cCmpN2Zero      <= `XXX;
            cEXTOp          <= `XXX;
            cALUIn2Sel      <= `XXX;
            cALUOp          <= `XXX;
            cDMWriteEnable  <= `NO;
            cRFWEFlag       <= `cRFWEFlag_always;
            cRFWTSel        <= `cRFWTSel_ra;
            cRFWDSel        <= `cRFWDSel_pc8;
        end else
        if(is_jalr.o) begin // jalr rd, rs - write rd, read rs
            cResultSince    <= `M_levelNum;
            cUseRS          <= `YES;
            cUseRT          <= `NO;
            cUseAtRS        <= `D_levelNum;
            cUseAtRT        <= `XXX;
            cBranchMode     <= `cBranchMode_reg;
            cCmpFlag        <= `XXX;
            cCmpN2Zero      <= `XXX;
            cEXTOp          <= `XXX;
            cALUIn2Sel      <= `XXX;
            cALUOp          <= `XXX;
            cDMWriteEnable  <= `NO;
            cRFWEFlag       <= `cRFWEFlag_always;
            cRFWTSel        <= `cRFWTSel_rd;
            cRFWDSel        <= `cRFWDSel_pc8;
        end else
        if(is_j.o) begin // j imm26
            cResultSince    <= `XXX;
            cUseRS          <= `NO;
            cUseRT          <= `NO;
            cUseAtRS        <= `XXX;
            cUseAtRT        <= `XXX;
            cBranchMode     <= `cBranchMode_jmp;
            cCmpFlag        <= `XXX;
            cCmpN2Zero      <= `XXX;
            cEXTOp          <= `XXX;
            cALUIn2Sel      <= `XXX;
            cALUOp          <= `XXX;
            cDMWriteEnable  <= `NO;
            cRFWEFlag       <= `cRFWEFlag_never;
            cRFWTSel        <= `XXX;
            cRFWDSel        <= `XXX;
        end else
        if(is_jr.o) begin // jr rs
            cResultSince    <= `XXX;
            cUseRS          <= `YES;
            cUseRT          <= `NO;
            cUseAtRS        <= `D_levelNum;
            cUseAtRT        <= `XXX;
            cBranchMode     <= `cBranchMode_reg;
            cCmpFlag        <= `XXX;
            cCmpN2Zero      <= `XXX;
            cEXTOp          <= `XXX;
            cALUIn2Sel      <= `XXX;
            cALUOp          <= `XXX;
            cDMWriteEnable  <= `NO;
            cRFWEFlag       <= `cRFWEFlag_never;
            cRFWTSel        <= `XXX;
            cRFWDSel        <= `XXX;
        end else
        begin // nop
            //$display("nop");
            cResultSince    <= `XXX;
            cUseRS          <= `NO;
            cUseRT          <= `NO;
            cUseAtRS        <= `XXX;
            cUseAtRT        <= `XXX;
            cBranchMode     <= `cBranchMode_nop;
            cCmpFlag        <= `XXX;
            cCmpN2Zero      <= `XXX;
            cEXTOp          <= `XXX;
            cALUIn2Sel      <= `XXX;
            cALUOp          <= `XXX;
            cDMWriteEnable  <= `NO;
            cRFWEFlag       <= `cRFWEFlag_never;
            cRFWTSel        <= `XXX;
            cRFWDSel        <= `XXX;
        end
    end
endmodule
