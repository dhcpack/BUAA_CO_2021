// Pipeline Register between Mem/WB

`define W_levelNum 3'd3

module mod_regMW(input clk, input reset,
    input [31:0] iPC,   // pc
    input [31:0] iRFWriteData,  // rfwd
    input        iRFWriteEnable,// rfwe
    input  [4:0] iRFWriteTarget,// rfwn

    output reg [31:0] oPC,   // pc
    output reg [31:0] oRFWriteData,  // rfwd
    output reg        oRFWriteEnable,// rfwe
    output reg  [4:0] oRFWriteTarget,// rfwn

    input      [31:0] iInst,
    output reg [31:0] oInst
);
    always @(posedge clk) begin
        if (reset) begin
            oPC <= 0;
            oRFWriteData <= 0;
            oRFWriteEnable <= 0;
            oRFWriteTarget <= 0;
            oInst <= 0;
        end else begin
            oPC <= iPC;
            oRFWriteData <= iRFWriteData;
            oRFWriteEnable <= iRFWriteEnable;
            oRFWriteTarget <= iRFWriteTarget;
            oInst <= iInst;
        end
    end
endmodule
