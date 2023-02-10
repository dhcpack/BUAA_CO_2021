// Data Memory

`define pmDMAddrWidth 12

module mod_MemData( input clk, input reset, input [31:0] pc,
    input  [31:0] iAddr,
    input  [31:0] iWData,
    input         iWE,
    output [31:0] oRData
);
    reg [31:0] data [0 : (1<<`pmDMAddrWidth)-1];

    integer i, MaskAndLength = (1<<`pmDMAddrWidth)-1;
    wire [`pmDMAddrWidth-1:0] MaskedAddress = iAddr[31:2] & MaskAndLength;
    assign oRData = data[MaskedAddress];
    always @(posedge clk) begin
        if (reset)
            for(i=0; i<=MaskAndLength; i=i+1)
                data[i] <= 0;
        else
        if (iWE) begin
            data[MaskedAddress] <= iWData;
        //  $display  ("@%h: *%h <= %h", pc, {iAddr[31:2], 2'b00}, iWData);
            $display("%d@%h: *%h <= %h", $time, pc, {iAddr[31:2], 2'b00}, iWData);
        end
    end
endmodule
