// Immediate 16-32 Extender

`define cEXTOp_nop  0
`define cEXTOp_sign 1
`define cEXTOp_zero 2
`define cEXTOp_high 3

module mod_EXT(
    input   [1:0] iOp,
    input  [15:0] i16,
    output [31:0] o32
);
    wire [15:0] sgnhi = {16{i16[15]}};
    assign o32 =
        (iOp == `cEXTOp_sign) ? { sgnhi, i16 } :
        (iOp == `cEXTOp_zero) ? { 16'b0, i16 } :
        (iOp == `cEXTOp_high) ? { i16, 16'b0 } :
            0;
endmodule
