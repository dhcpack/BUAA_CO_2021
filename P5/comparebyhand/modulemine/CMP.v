`include "constant.v"

module CMP (
    input  wire [31:0] cmpa,
    input  wire [31:0] cmpb,
    input  wire [3:0]  cmpop,
    output reg branch_true
);

    initial begin
        branch_true = 0;
    end
    
    always @( * ) begin
        case(cmpop)
            `aequb : begin
                if(cmpa == cmpb)begin
                    branch_true = 1;
                end
                else begin
                    branch_true = 0;
                end
            end
            default : begin
                branch_true = 0;
            end
        endcase
    end

endmodule //CMP