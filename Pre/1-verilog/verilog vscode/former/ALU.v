`timescale 1ns / 1ps

module alu(
    input [31:0] input_a,
    input [31:0] input_b,
    input [1:0] op,
    input clk,
    input en,
    output reg [31:0] result
);

    wire [31:0] temp_result;

    assign temp_result = (op == 2'd0) ? (input_a + input_b) :
                        (op == 2'd1) ? (input_a - input_b) :
                        (op == 2'd2) ? (input_a & input_b) :
                                        (input_a | input_b);

    always @(posedge clk) begin
        if (en == 1'b1) begin
            result <= temp_result;
        end
        else begin
            result <= result;
        end
    end

endmodule