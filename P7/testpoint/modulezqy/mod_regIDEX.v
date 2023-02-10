// Pipeline Register between ID/EX

`define self_levelNum 3'd1
`define E_levelNum 3'd1

module mod_regDE(input clk, input reset, input clearEstall, input clearEcp0, input [31:0] iCP0JumpAddr,
    input [2:0] iResultSince, output reg [2:0] oResultSince, output oHaveResult,

    input [31:0] iPC,       // pc
    input  [4:0] iRSNum,    // rs
    input [31:0] iRSData,
    input  [4:0] iRTNum,    // rt
    input [31:0] iRTData,
    input  [4:0] iRDNum, // rd
    input [31:0] iImm32,    // imm
    input  [4:0] iShamt,    // shamt
    input        iALUIn2Sel,// aluIn2Sel
    input  [3:0] iALUOp,    // aluop
    input        iALUUnsigned,
    input       iDMWriteEnable,   // dmwe
    input [2:0] iDMDataType,
    input       iRFWriteEnable,   // rfwe
    input [4:0] iRFWriteTarget,   // rfwn
    input [2:0] iRFWDSel,         // rfwds

    input [3:0] iMDOp,            // mdop
    input   iMDReadSrc,

    input   iCP0RFWE,
    input [2:0] iCPSel,

    output reg [31:0] oPC,       // pc
    output reg  [4:0] oRSNum,    // rs
    output reg [31:0] oRSData,
    output reg  [4:0] oRTNum,    // rt
    output reg [31:0] oRTData,
    output reg  [4:0] oRDNum, // rd
    output reg [31:0] oImm32,    // omm
    output reg  [4:0] oShamt,    // shamt
    output reg        oALUIn2Sel,// aluIn2Sel
    output reg  [3:0] oALUOp,    // aluop
    output reg        oALUUnsigned,
    output reg        oDMWriteEnable,    // dmwe
    output reg  [2:0] oDMDataType,
    output reg        oRFWriteEnable,    // rfwe
    output reg  [4:0] oRFWriteTarget,    // rfwn
    output reg  [2:0] oRFWDSel,          // rfwds

    output reg  [3:0] oMDOp,
    output reg oMDReadSrc,

    output reg oCP0RFWE,
    output reg [2:0] oCPSel,

    input      [31:0] iInst,
    output reg [31:0] oInst,

    input      [7:0] iException,
    output reg [7:0] oException,

    input iBDS, output reg oBDS
);
    assign oHaveResult = oResultSince >= `E_levelNum;
    always @(posedge clk) begin
        //$display("E: iResultSince = %d", iResultSince);
        if ( reset || clearEstall || clearEcp0)
            oResultSince <= 0;
        else
            oResultSince <= iResultSince;
    end

    always @(posedge clk) begin
        if ( reset || clearEstall || clearEcp0 ) begin
            oPC <=
                reset       ? 0     :
                clearEcp0   ? iCP0JumpAddr :
                clearEstall ? iPC   : 0;
            oRSNum <= 0;
            oRSData <= 0;
            oRTNum <= 0;
            oRTData <= 0;
            oRDNum <= 0;
            oImm32 <= 0;
            oShamt <= 0;
            oALUIn2Sel <= 0;
            oALUOp <= 0;
            oALUUnsigned <= 0;
            oDMWriteEnable <= 0;
            oDMDataType <= 0;
            oRFWriteEnable <= 0;
            oRFWriteTarget <= 0;
            oRFWDSel <= 0;

            oMDOp <= 0;
            oMDReadSrc <= 0;

            oCP0RFWE <= 0;
            oCPSel <= 0;

            oInst <= 0;
            oException <= 0;
            oBDS <= clearEcp0 ? 0 : clearEstall ? iBDS : 0;
        end else begin
            oPC <= iPC;
            oRSNum <= iRSNum;
            oRSData <= iRSData;
            oRTNum <= iRTNum;
            oRTData <= iRTData;
            oRDNum <= iRDNum;
            oImm32 <= iImm32;
            oShamt <= iShamt;
            oALUIn2Sel <= iALUIn2Sel;
            oALUOp <= iALUOp;
            oALUUnsigned <= iALUUnsigned;
            oDMWriteEnable <= iDMWriteEnable;
            oDMDataType <= iDMDataType;
            oRFWriteEnable <= iRFWriteEnable;
            oRFWriteTarget <= iRFWriteTarget;
            oRFWDSel <= iRFWDSel;

            oMDOp <= iMDOp;
            oMDReadSrc <= iMDReadSrc;

            oCP0RFWE <= iCP0RFWE;
            oCPSel <= iCPSel;

            oInst <= iInst;
            oException <= iException;
            oBDS <= iBDS;
        end
    end
endmodule

`undef self_levelNum
