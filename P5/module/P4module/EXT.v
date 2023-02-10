`timescale 1ns/1ps

module EXT (
    input  wire [15:0] immoffset,
    input  wire [1:0] extop,
    output wire [31:0] out
);

    assign out = (extop == 2'd0) ? {16'b0,immoffset} :  //  extop=0  zeroextend
            (extop == 2'd1) ? {{16{immoffset[15]}},immoffset} :  // extop=1  sign extend
            (extop == 2'd2) ? {{14{immoffset[15]}},immoffset,2'b0} :  //extop=2  signextend + 00
            32'hffff_ffff;  // signal3 is remaining

endmodule //EXT
