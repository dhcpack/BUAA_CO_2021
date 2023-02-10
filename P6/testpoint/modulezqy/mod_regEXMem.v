// Pipeline Register between EX/Mem

`define M_levelNum 3'd2

module mod_regEM(input clk, input reset,
    input [2:0] iResultSince, output reg [2:0] oResultSince, output oHaveResult,

    input [31:0] iPC,       // pc
    input [31:0] iALUOut,   // aluout
    input  [4:0] iRTNum,    // rt
    input [31:0] iRTData,
    input       iDMWriteEnable, // dmwe
    input [2:0] iDMDataType,
    input       iRFWriteEnable, // rfwe
    input [4:0] iRFWriteTarget, // rfwn
    input [2:0] iRFWDSel      , // rfwds
    input [31:0] iMDOutput,

    output reg [31:0] oPC,       // pc
    output reg [31:0] oALUOut,   // aluout
    output reg  [4:0] oRTNum,    // rt
    output reg [31:0] oRTData,
    output reg       oDMWriteEnable,    // dmwe
    output reg [2:0] oDMDataType,
    output reg       oRFWriteEnable,    // rfwe
    output reg [4:0] oRFWriteTarget,    // rfwn
    output reg [2:0] oRFWDSel,          // rfwds
    output reg [31:0] oMDOutput,

    input      [31:0] iInst,
    output reg [31:0] oInst
);
    assign oHaveResult = oResultSince >= `M_levelNum;
    always @(posedge clk) begin
        //$display("M: iResultSince = %d", iResultSince);
        if (reset)
            oResultSince <= 0;
        else
            oResultSince <= iResultSince;
    end

    always @(posedge clk) begin
        if (reset) begin
            oPC <= 0;
            oALUOut <= 0;
            oRTNum <= 0;
            oRTData <= 0;
            oDMWriteEnable <= 0;
            oDMDataType <= 0;
            oRFWriteEnable <= 0;
            oRFWriteTarget <= 0;
            oRFWDSel <= 0;

            oMDOutput <= 0;

            oInst <= 0;
        end else begin
            oPC <= iPC;
            oALUOut <= iALUOut;
            oRTNum <= iRTNum;
            oRTData <= iRTData;
            oDMWriteEnable <= iDMWriteEnable;
            oDMDataType <= iDMDataType;
            oRFWriteEnable <= iRFWriteEnable;
            oRFWriteTarget <= iRFWriteTarget;
            oRFWDSel <= iRFWDSel;

            oMDOutput <= iMDOutput;

            oInst <= iInst;
        end
    end
endmodule
