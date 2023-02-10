// Program Counter of IF

module mod_PC(input clk, input reset, input stallPC,
    input [31:0] iNextPC, output reg [31:0] oPC
);
    always @(posedge clk) begin
        if (reset)
            oPC <= 32'h3000;
        else
        if (!stallPC)
            oPC <= iNextPC;
    end
endmodule
