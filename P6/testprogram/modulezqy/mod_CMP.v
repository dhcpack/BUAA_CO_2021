// 32-bit Signed Comparator

`define cCmpFlag_nop 3'b000
`define cCmpFlag_lt  3'b100
`define cCmpFlag_eq  3'b010
`define cCmpFlag_gt  3'b001

`define cCmpFlag_le (`cCmpFlag_lt | `cCmpFlag_eq)
`define cCmpFlag_ge (`cCmpFlag_gt | `cCmpFlag_eq)
`define cCmpFlag_ne (`cCmpFlag_lt | `cCmpFlag_gt)

module mod_CMP(
    input  [2:0] iCmpFlag, input iCmpN2Zero,
    input [31:0] iNumber1,
    input [31:0] iNumber2,
    output oResult
);
    wire [31:0] n1 = iNumber1;
    wire [31:0] n2 = iCmpN2Zero ? 0 : iNumber2;
    assign oResult =
        ((iCmpFlag & `cCmpFlag_lt) && ($signed(n1) < $signed(n2))) ||
        ((iCmpFlag & `cCmpFlag_eq) && (n1 == n2)) ||
        ((iCmpFlag & `cCmpFlag_gt) && ($signed(n1) > $signed(n2)));
endmodule
