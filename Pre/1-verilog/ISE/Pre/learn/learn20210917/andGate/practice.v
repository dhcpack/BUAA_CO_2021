module sample(
    input clk,
    input reset
);
    reg mem;
    initial begin
        mem=1;
    end

    always @(*) begin
        mem<=0;
    end

endmodule //practice
s1l