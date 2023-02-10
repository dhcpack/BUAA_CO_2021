// Instruction Memory

`define pmIMAddrWidth 12

`define IMBegin (32'h3000 >> 2)

module mod_MemInst(
    input  [31:0] iAddr,
    output [31:0] oInst
);
    reg [31:0] data [0 : (1<<`pmIMAddrWidth)-1];

    integer i, MaskAndLength = (1<<`pmIMAddrWidth)-1;
    wire [`pmIMAddrWidth-1:0] MaskedAddress = iAddr[31:2] & MaskAndLength;
    assign oInst =
        MaskedAddress < `IMBegin ? 32'b0 :
            data[MaskedAddress - `IMBegin];
    initial begin
        for(i=0; i<=MaskAndLength; i=i+1)
            data[i] = 0;
        $readmemh("code.txt", data);
    end
endmodule
