// Pipeline Register between IF/ID

`define D_levelNum 3'd0

module mod_regFD(input clk, input reset, input clearBDS, input clearDcp0, input [31:0] iCP0JumpAddr,
    input stallD,
    input [31:0] iPC  , output reg [31:0] oPC,
    input [31:0] iInst, output reg [31:0] oInst,

    input      [7:0] iException,
    output reg [7:0] oException,
    input iBDS, output reg oBDS
);
    always @(posedge clk) begin
        if (reset || clearDcp0 || (clearBDS && !stallD)) begin
            oPC   <=
                reset ? 0 :
                clearDcp0 ? iCP0JumpAddr : 0;
            oInst <= 0;
            oException <= 0;
            oBDS <= 0;
        end else
        if (!stallD) begin
            oPC   <= iPC;
            oInst <= iInst;
            oException <= iException;
            oBDS <= iBDS;
        end
    end
endmodule
