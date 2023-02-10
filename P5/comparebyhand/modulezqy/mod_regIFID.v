// Pipeline Register between IF/ID

`define D_levelNum 3'd0

module mod_regFD(input clk, input reset,
    input stallD,
    input [31:0] iPC  , output reg [31:0] oPC,
    input [31:0] iInst, output reg [31:0] oInst
);
    always @(posedge clk) begin
        if (reset) begin
            oPC   <= 0;
            oInst <= 0;
        end else
        if (!stallD) begin
            oPC   <= iPC;
            oInst <= iInst;
        end
    end
endmodule
