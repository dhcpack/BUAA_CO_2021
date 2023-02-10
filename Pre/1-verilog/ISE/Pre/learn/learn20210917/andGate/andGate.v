`timescale 1ps/1ps

module Sample (
    input clk,
    input a,
    input b,
    output c
);
    reg mem;

    initial begin
        mem=0;
    end

    always @(posedge clk) begin
        mem=a&b
    end

    assign c=mem;
    
endmodule