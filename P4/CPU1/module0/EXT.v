`timescale 1ns/1ps

module EXT (
    input  wire [15:0] immoffset,
    input  wire [1:0] extop,
    output wire [31:0] out
);

    assign out = (extop == 2'd0) ? {16'b0,immoffset} :  //  extop=0 0扩展
            (extop == 2'd1) ? {{16{immoffset[15]}},immoffset} :  // extop=1 符号扩展
            (extop == 2'd2) ? {{14{immoffset[15]}},immoffset,2'b0} :  //extop=2  beq指令，符号扩展后接00
            32'hffff_ffff;  //else 

endmodule //EXT
