// Pipeline MIPS CPU
`include "mod_Controller.v"

module mips(input clk, input reset);
        // BEGIN Control Values
    wire w_StallClear;
    wire [2:0] w_ResultSince;
    wire [1:0] cBranchMode;
    wire [2:0] cCmpFlag;
    wire       cCmpN2Zero;
    wire [1:0] cEXTOp;
    wire       cALUIn2Sel;
    wire [3:0] cALUOp;
    wire       cDMWriteEnable;
    wire [1:0] cRFWEFlag;
    wire [1:0] cRFWTSel;
    wire [1:0] cRFWDSel;
        //   END Control Values

    // wire definitions for replace
    wire        w_MrepEn;
    wire  [4:0] w_MrepNum;
    wire [31:0] w_MrepData;

    wire        w_WrepEn;
    wire  [4:0] w_WrepNum;
    wire [31:0] w_WrepData;

    wire        Ww_repEn;
    wire  [4:0] Ww_repNum;
    wire [31:0] Ww_repData;
    // --- IF/ID common wires
    wire        w_WillBranch;
    wire [31:0] w_BranchTarget;
    // --- BEGIN IF (Fetch Instruction) --- F
    wire [31:0] Fw_CurrPC;
    wire [31:0] Fw_NextPC = w_WillBranch ? w_BranchTarget : (Fw_CurrPC + 4);
    mod_PC Fm_PC(.clk(clk), .reset(reset),
        .stallPC(w_StallClear),
        .iNextPC(Fw_NextPC), .oPC(Fw_CurrPC)
    );
    mod_MemInst Fm_IM(.iAddr( Fw_CurrPC ));
    wire [31:0] Fw_CurrInst = Fm_IM.oInst;

//    always @(Fw_CurrInst)
//        $display("IF: [%h] %h", Fw_CurrPC, Fw_CurrInst);

    // ---   END IF ---
    mod_regFD m_regFD(.clk(clk), .reset(reset),
        .stallD(w_StallClear),
        .iPC  (Fw_CurrPC),   // oPC
        .iInst(Fw_CurrInst)  // oInst
    );
    // --- BEGIN ID (Decode Instruction) --- D
    wire [31:0] Dw_CurrPC   = m_regFD.oPC;
    wire [31:0] Dw_CurrInst = m_regFD.oInst;

    mod_Splitter Dm_Splitter(.instruction(Dw_CurrInst));
    wire [4:0] Dw_RSNum = Dm_Splitter.rs;
    wire [4:0] Dw_RTNum = Dm_Splitter.rt;
    wire [4:0] Dw_RDNum = Dm_Splitter.rd;
    wire [31:0] Dw_ReadRS; // connected to grf below
    wire [31:0] Dw_ReadRT; // connected to grf below
        // First Replace
    mod_Replacer Dm_repRS_1(
        .iLoEn(1'b1), .iLoNum(Dw_RSNum), .iLoData(Dw_ReadRS),
        .iHiEn(w_WrepEn), .iHiNum(w_WrepNum), .iHiData(w_WrepData)
    );
    mod_Replacer Dm_repRT_1(
        .iLoEn(1'b1), .iLoNum(Dw_RTNum), .iLoData(Dw_ReadRT),
        .iHiEn(w_WrepEn), .iHiNum(w_WrepNum), .iHiData(w_WrepData)
    );
        // Second Replace
    mod_Replacer Dm_repRS_2(
        .iLoEn(1'b1), .iLoNum(Dw_RSNum), .iLoData(Dm_repRS_1.oData),
        .iHiEn(w_MrepEn), .iHiNum(w_MrepNum), .iHiData(w_MrepData)
    );
    mod_Replacer Dm_repRT_2(
        .iLoEn(1'b1), .iLoNum(Dw_RTNum), .iLoData(Dm_repRT_1.oData),
        .iHiEn(w_MrepEn), .iHiNum(w_MrepNum), .iHiData(w_MrepData)
    );
    wire [31:0] Dw_FinalRSData = Dm_repRS_2.oData;
    wire [31:0] Dw_FinalRTData = Dm_repRT_2.oData;
    mod_CMP Dm_CMP(
        .iCmpFlag(cCmpFlag), .iCmpN2Zero(cCmpN2Zero),
        .iNumber1(Dw_FinalRSData), .iNumber2(Dw_FinalRTData)
    );
    mod_Branch Dm_Branch(
        .iBranchMode(cBranchMode),
        .iCmpResult(Dm_CMP.oResult),
        .pc(Dw_CurrPC), .iImm26(Dm_Splitter.imm26), .iReg(Dw_FinalRSData),
        .oWillBranch(w_WillBranch), .oBranchTarget(w_BranchTarget)
    );
    mod_EXT Dm_EXT(
        .iOp(cEXTOp),
        .i16(Dm_Splitter.imm16)
    );
    wire Dw_RFWriteEnable = (cRFWEFlag & `cRFWEFlag_always)
        || ((cRFWEFlag & `cRFWEFlag_branch) && w_WillBranch);
    wire [4:0] Dw_RFWriteTarget =
        cRFWTSel == `cRFWTSel_rt ? Dw_RTNum :
        cRFWTSel == `cRFWTSel_rd ? Dw_RDNum :
        cRFWTSel == `cRFWTSel_ra ? 31
            : 0;
        // ID to IE values
    wire [31:0] Dw_pPC     = Dw_CurrPC;   // pc
    wire  [4:0] Dw_pRSNum  = Dw_RSNum;    // rs
    wire [31:0] Dw_pRSData = Dw_FinalRSData;
    wire  [4:0] Dw_pRTNum  = Dw_RTNum;    // rt
    wire [31:0] Dw_pRTData = Dw_FinalRTData;
    wire [31:0] Dw_pImm32  = Dm_EXT.o32;        // imm
    wire  [4:0] Dw_pShamt  = Dm_Splitter.shamt; // shamt
    wire    Dw_pALUIn2Sel  = cALUIn2Sel;        // aluIn2Sel
    wire  [3:0] Dw_pALUOp  = cALUOp;            // aluOp
    wire Dw_pDMWriteEnable = cDMWriteEnable;    // dmwe
    wire       Dw_pRFWriteEnable = Dw_RFWriteEnable;  // rfwe
    wire [4:0] Dw_pRFWriteTarget = Dw_RFWriteTarget;  // rfwn
    wire [1:0] Dw_pRFWDSel = cRFWDSel; // rfwds
    // ---   END ID ---
    mod_regDE m_regDE(.clk(clk), .reset(reset), .clearE(w_StallClear),
        .iResultSince(w_ResultSince),

        .iPC(Dw_pPC),
        .iRSNum(Dw_pRSNum),
        .iRSData(Dw_pRSData),
        .iRTNum(Dw_pRTNum),
        .iRTData(Dw_pRTData),
        .iImm32(Dw_pImm32),
        .iShamt(Dw_pShamt),
        .iALUIn2Sel(Dw_pALUIn2Sel),
        .iALUOp(Dw_pALUOp),
        .iDMWriteEnable(Dw_pDMWriteEnable),
        .iRFWriteEnable(Dw_pRFWriteEnable),
        .iRFWriteTarget(Dw_pRFWriteTarget),
        .iRFWDSel(Dw_pRFWDSel)
    );
    // --- BEGIN EX (Execute) --- E
    wire [4:0] Ew_RSNum = m_regDE.oRSNum;
    wire [4:0] Ew_RTNum = m_regDE.oRTNum;
        // First Replace
    mod_Replacer Em_repRS_1(
        .iLoEn(1'b1), .iLoNum(Ew_RSNum), .iLoData( m_regDE.oRSData ),
        .iHiEn(w_WrepEn), .iHiNum(w_WrepNum), .iHiData(w_WrepData)
    );
    mod_Replacer Em_repRT_1(
        .iLoEn(1'b1), .iLoNum(Ew_RTNum), .iLoData( m_regDE.oRTData ),
        .iHiEn(w_WrepEn), .iHiNum(w_WrepNum), .iHiData(w_WrepData)
    );
        // Second Replace
    mod_Replacer Em_repRS_2(
        .iLoEn(1'b1), .iLoNum(Ew_RSNum), .iLoData(Em_repRS_1.oData),
        .iHiEn(w_MrepEn), .iHiNum(w_MrepNum), .iHiData(w_MrepData)
    );
    mod_Replacer Em_repRT_2(
        .iLoEn(1'b1), .iLoNum(Ew_RTNum), .iLoData(Em_repRT_1.oData),
        .iHiEn(w_MrepEn), .iHiNum(w_MrepNum), .iHiData(w_MrepData)
    );
    wire [31:0] Ew_FinalRSData = Em_repRS_2.oData;
    wire [31:0] Ew_FinalRTData = Em_repRT_2.oData;
    wire [31:0] Ew_ALUInput2 =
        m_regDE.oALUIn2Sel == `cALUIn2Sel_rt  ? Ew_FinalRTData :
        m_regDE.oALUIn2Sel == `cALUIn2Sel_imm ? m_regDE.oImm32 : 0;
    mod_ALU Em_ALU(
        .iNumber1(Ew_FinalRSData), .iNumber2(Ew_ALUInput2),
        .iShamt(m_regDE.oShamt),
        .iALUOp(m_regDE.oALUOp)
    );

    wire [31:0] Ew_pPC     = m_regDE.oPC;    // pc
    wire [31:0] Ew_pALUOut = Em_ALU.oResult; // aluout
    wire  [4:0] Ew_pRTNum  = Ew_RTNum;       // rt
    wire [31:0] Ew_pRTData = Ew_FinalRTData;
    wire        Ew_pDMWriteEnable = m_regDE.oDMWriteEnable; // dmwe
    wire        Ew_pRFWriteEnable = m_regDE.oRFWriteEnable; // rfwe
    wire [4:0]  Ew_pRFWriteTarget = m_regDE.oRFWriteTarget; // rfwn
    wire [1:0]  Ew_pRFWDSel       = m_regDE.oRFWDSel;       // rfwds
    // ---   END EX --- 
    mod_regEM m_regEM(.clk(clk), .reset(reset),
        .iResultSince(m_regDE.oResultSince),

        .iPC(Ew_pPC),
        .iALUOut(Ew_pALUOut),
        .iRTNum(Ew_pRTNum),
        .iRTData(Ew_pRTData),
        .iDMWriteEnable(Ew_pDMWriteEnable),
        .iRFWriteEnable(Ew_pRFWriteEnable),
        .iRFWriteTarget(Ew_pRFWriteTarget),
        .iRFWDSel      (Ew_pRFWDSel)
    );
    // --- BEGIN Mem (Access Memory) --- M
    wire [31:0] Mw_PC  = m_regEM.oPC;
    wire [31:0] Mw_PC8 = m_regEM.oPC + 8;

    wire [31:0] Mw_ALUOut = m_regEM.oALUOut;
    wire  [4:0] Mw_RTNum  = m_regEM.oRTNum;
    wire [31:0] Mw_RTData = m_regEM.oRTData;
    wire  [1:0] Mw_RFWDSel = m_regEM.oRFWDSel;

    wire [31:0] Mw_RFWriteData;
        // BEGIN For Replace - M
    assign w_MrepEn = m_regEM.oHaveResult && m_regEM.oRFWriteEnable;
    assign w_MrepNum  = m_regEM.oRFWriteTarget;
    assign w_MrepData =
        Mw_RFWDSel == `cRFWDSel_alu ? Mw_ALUOut :
        Mw_RFWDSel == `cRFWDSel_pc8 ? Mw_PC8    :
            0;
    assign w_WrepNum  = Ww_repNum;
    mod_Replacer Mm_repWB(
        .iLoEn(Ww_repEn), .iLoNum(Ww_repNum), .iLoData(Ww_repData),
        .iHiEn(w_MrepEn), .iHiNum(w_MrepNum), .iHiData(w_MrepData),
          .oEn(w_WrepEn), .oData(w_WrepData)
    );
        //   END For Replace - M

    mod_Replacer Mm_repRT(
        .iLoEn(1'b1), .iLoNum(Mw_RTNum), .iLoData(Mw_RTData),
        .iHiEn  ( Ww_repEn   ),
        .iHiNum ( Ww_repNum  ),
        .iHiData( Ww_repData )
    );

    wire [31:0] Mw_FinalRTData = Mm_repRT.oData;
    mod_MemData Mm_DM(.clk(clk), .reset(reset), .pc(Mw_PC),
        .iAddr(Mw_ALUOut), .iWData(Mw_FinalRTData),
        .iWE(m_regEM.oDMWriteEnable)
    );
    assign Mw_RFWriteData =
        Mw_RFWDSel == `cRFWDSel_alu ? Mw_ALUOut     :
        Mw_RFWDSel == `cRFWDSel_mem ? Mm_DM.oRData  :
        Mw_RFWDSel == `cRFWDSel_pc8 ? Mw_PC8 :
            0;

    wire [31:0] Mw_pPC = Mw_PC; // pc
    wire [31:0] Mw_pRFWriteData   = Mw_RFWriteData; // rfwd
    wire        Mw_pRFWriteEnable = m_regEM.oRFWriteEnable; // rfwe
    wire  [4:0] Mw_pRFWriteTarget = m_regEM.oRFWriteTarget; // rfwn
    // ---   END Mem ---
    mod_regMW m_regMW(.clk(clk), .reset(reset),
        .iPC(Mw_pPC),
        .iRFWriteData(Mw_pRFWriteData),
        .iRFWriteEnable(Mw_pRFWriteEnable),
        .iRFWriteTarget(Mw_pRFWriteTarget)
    );
    // --- BEGIN WB (Writeback Register) --- W
    wire [31:0] Ww_PC = m_regMW.oPC;
    wire        Ww_RFWriteEnable = m_regMW.oRFWriteEnable;
    wire  [4:0] Ww_RFWriteNum    = m_regMW.oRFWriteTarget;
    wire [31:0] Ww_RFWriteData   = m_regMW.oRFWriteData;
        // BEGIN For Replace - W
    assign Ww_repEn   = Ww_RFWriteEnable;
    assign Ww_repNum  = Ww_RFWriteNum;
    assign Ww_repData = Ww_RFWriteData;
        //   END For Replace - W 
    mod_RF m_RF(.clk(clk), .reset(reset), .pc(Ww_PC),
        .iRSNum(Dw_RSNum), .oRSData(Dw_ReadRS),
        .iRTNum(Dw_RTNum), .oRTData(Dw_ReadRT),
        .iWrEnable(Ww_RFWriteEnable), .iWrNum(Ww_RFWriteNum), .iWrData(Ww_RFWriteData)
    );
    // ---   END WB ---

    // CONTROLLER and STALL here
    wire D_cUseRS;
    wire D_cUseRT;
    wire [2:0] D_cUseAtRS;
    wire [2:0] D_cUseAtRT;
    mod_Controller Dm_ctrl(
        Dw_CurrInst,
        w_ResultSince,
        D_cUseRS,
        D_cUseRT,
        D_cUseAtRS,
        D_cUseAtRT,
        cBranchMode,
        cCmpFlag,
        cCmpN2Zero,
        cEXTOp,
        cALUIn2Sel,
        cALUOp,
        cDMWriteEnable,
        cRFWEFlag,
        cRFWTSel,
        cRFWDSel
    );
    assign w_StallClear =
        ( // E
            ( (D_cUseRS && (Dw_RSNum != 0) && (m_regDE.oRFWriteTarget == Dw_RSNum) && (`E_levelNum < (m_regDE.oResultSince - D_cUseAtRS))) ||
              (D_cUseRT && (Dw_RTNum != 0) && (m_regDE.oRFWriteTarget == Dw_RTNum) && (`E_levelNum < (m_regDE.oResultSince - D_cUseAtRT)))  )
            &&  m_regDE.oRFWriteEnable
        ) ||
        ( // M
            ( (D_cUseRS && (Dw_RSNum != 0) && (m_regEM.oRFWriteTarget == Dw_RSNum) && (`M_levelNum < (m_regEM.oResultSince - D_cUseAtRS))) ||
              (D_cUseRT && (Dw_RTNum != 0) && (m_regEM.oRFWriteTarget == Dw_RTNum) && (`M_levelNum < (m_regEM.oResultSince - D_cUseAtRT)))  )
            &&  m_regEM.oRFWriteEnable
        );
endmodule
