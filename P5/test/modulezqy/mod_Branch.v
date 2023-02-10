// Branch Facility
`define cBranchMode_nop 0
`define cBranchMode_cnd 1
`define cBranchMode_jmp 2
`define cBranchMode_reg 3

module mod_Branch(
    input [1:0] iBranchMode,
    input       iCmpResult,
    input [31:0] pc, input [25:0] iImm26, input [31:0] iReg,
    output reg oWillBranch, output reg [31:0] oBranchTarget
);
    wire [31:0] offset16 = { {14{iImm26[15]}}, iImm26[15:0], 2'b00 };
    wire [31:0] segabs26 = {       pc[31:28] , iImm26,       2'b00 };
    always @(*) begin
        case (iBranchMode)
        `cBranchMode_cnd: // B-series : branch conditional, imm16
            begin
                oWillBranch   <= iCmpResult;
                oBranchTarget <= pc + 4 + offset16;
            end
        `cBranchMode_jmp: // J : j, jal
            begin
                oWillBranch   <= 1;
                oBranchTarget <= segabs26;
            end
        `cBranchMode_reg:
            begin
                oWillBranch   <= 1;
                oBranchTarget <= iReg;
            end
        default:
            begin
                oWillBranch   <= 0;
                oBranchTarget <= 0;
            end
        endcase
    end
endmodule
