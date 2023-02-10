// Global Register File

module mod_RF(input clk, input reset, input [31:0] pc,
    input [4:0] iRSNum, output [31:0] oRSData,
    input [4:0] iRTNum, output [31:0] oRTData,

    input iWrEnable, input [4:0] iWrNum, input [31:0] iWrData
);
    reg [31:0] regs [0:31];
    assign oRSData = regs[iRSNum];
    assign oRTData = regs[iRTNum];

    integer i;
    always @(posedge clk) begin
        //$display("GRF: we = %b, wn = %d", iWrEnable, iWrNum);
        if (reset)
            for (i=0; i<32; i=i+1)
                regs[i] <= 0;
        else
        if (iWrEnable && iWrNum != 0) begin
            regs[iWrNum] <= iWrData;
        //  $display  ("@%h: $%d <= %h", pc, iWrNum, iWrData);
        //  $display("%d@%h: $%d <= %h", $time, pc, iWrNum, iWrData);
        end
    end
endmodule
