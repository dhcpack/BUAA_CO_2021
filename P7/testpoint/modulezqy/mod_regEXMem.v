// Pipeline Register between EX/Mem

`define M_levelNum 3'd2

module mod_regEM(input clk, input reset, input clearMcp0, input [31:0] iCP0JumpAddr,
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
    input [31:0] iCPOutput,

    output reg [31:0] oPC,       // pc
    output reg [31:0] oALUOut,   // aluout
    output reg  [4:0] oRTNum,    // rt
    output reg [31:0] oRTData,
    output reg       oDMWriteEnable,    // dmwe
    output reg [2:0] oDMDataType,
    output reg       oRFWriteEnable,    // rfwe
    output reg [4:0] oRFWriteTarget,    // rfwn
    output reg [2:0] oRFWDSel,          // rfwds
    output reg [31:0] oCPOutput,

    input      [31:0] iInst,
    output reg [31:0] oInst,

    input      [7:0] iException,
    output reg [7:0] oException,

    input iBDS, output reg oBDS
);
    assign oHaveResult = oResultSince >= `M_levelNum;
    always @(posedge clk) begin
        //$display("M: iResultSince = %d", iResultSince);
        if (reset || clearMcp0)
            oResultSince <= 0;
        else
            oResultSince <= iResultSince;
    end

    always @(negedge clk) begin
        // $display("M: oPC <= %h", oPC);
    end

    always @(posedge clk) begin
        if (reset || clearMcp0) begin
            oPC <= 
                reset ? 0 :
                clearMcp0 ? iCP0JumpAddr : 0;
            oALUOut <= 0;
            oRTNum <= 0;
            oRTData <= 0;
            oDMWriteEnable <= 0;
            oDMDataType <= 0;
            oRFWriteEnable <= 0;
            oRFWriteTarget <= 0;
            oRFWDSel <= 0;

            oCPOutput <= 0;

            oInst <= 0;

            oException <= 0;
            oBDS <= 0;
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

            oCPOutput <= iCPOutput;

            oInst <= iInst;

            oException <= iException;
            oBDS <= iBDS;
        end
    end
endmodule
