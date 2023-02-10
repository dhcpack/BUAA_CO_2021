// Pipeline Register between ID/EX

`define self_levelNum 3'd1
`define E_levelNum 3'd1

module mod_regDE(input clk, input reset, input clearE,
    input [2:0] iResultSince, output reg [2:0] oResultSince, output oHaveResult,

    input [31:0] iPC,       // pc
    input  [4:0] iRSNum,    // rs
    input [31:0] iRSData,
    input  [4:0] iRTNum,    // rt
    input [31:0] iRTData,
    input [31:0] iImm32,    // imm
    input  [4:0] iShamt,    // shamt
    input        iALUIn2Sel,// aluIn2Sel
    input  [3:0] iALUOp,    // aluop
    input       iDMWriteEnable,   // dmwe
    input       iRFWriteEnable,   // rfwe
    input [4:0] iRFWriteTarget,   // rfwn
    input [1:0] iRFWDSel,         // rfwds

    output reg [31:0] oPC,       // pc
    output reg  [4:0] oRSNum,    // rs
    output reg [31:0] oRSData,
    output reg  [4:0] oRTNum,    // rt
    output reg [31:0] oRTData,
    output reg [31:0] oImm32,    // omm
    output reg  [4:0] oShamt,    // shamt
    output reg        oALUIn2Sel,// aluIn2Sel
    output reg  [3:0] oALUOp,    // aluop
    output reg       oDMWriteEnable,    // dmwe
    output reg       oRFWriteEnable,    // rfwe
    output reg [4:0] oRFWriteTarget,    // rfwn
    output reg [1:0] oRFWDSel           // rfwds
);
    assign oHaveResult = oResultSince >= `E_levelNum;
    always @(posedge clk) begin
        //$display("E: iResultSince = %d", iResultSince);
        if (reset)
            oResultSince <= 0;
        else
            oResultSince <= iResultSince;
    end

    always @(posedge clk) begin
        if ( reset || clearE ) begin
            oPC <= 0;
            oRSNum <= 0;
            oRSData <= 0;
            oRTNum <= 0;
            oRTData <= 0;
            oImm32 <= 0;
            oShamt <= 0;
            oALUIn2Sel <= 0;
            oALUOp <= 0;
            oDMWriteEnable <= 0;
            oRFWriteEnable <= 0;
            oRFWriteTarget <= 0;
            oRFWDSel <= 0;
        end else begin
            oPC <= iPC;
            oRSNum <= iRSNum;
            oRSData <= iRSData;
            oRTNum <= iRTNum;
            oRTData <= iRTData;
            oImm32 <= iImm32;
            oShamt <= iShamt;
            oALUIn2Sel <= iALUIn2Sel;
            oALUOp <= iALUOp;
            oDMWriteEnable <= iDMWriteEnable;
            oRFWriteEnable <= iRFWriteEnable;
            oRFWriteTarget <= iRFWriteTarget;
            oRFWDSel <= iRFWDSel;
        end
    end
endmodule

`undef self_levelNum
