// Register Data Replace

module mod_Replacer(
    input iLoEn, input [4:0] iLoNum, input [31:0] iLoData,
    input iHiEn, input [4:0] iHiNum, input [31:0] iHiData,
    output reg oEn, output reg [31:0] oData
);
    always @(*) begin
        if (iLoEn && iLoNum != 0)
            if (iHiEn && iHiNum == iLoNum) begin
                oEn <= 1'b1;
                oData <= iHiData;
            end else begin
                oEn <= 1'b1;
                oData <= iLoData;
            end
        else begin
            oEn <= 1'b0;
            oData <= 0;
        end
    end
endmodule
