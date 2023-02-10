`timescale 1ns/1ps

module RF (
    input  wire clk,
    input  wire reset,
    input  wire [4:0] a1,
    input  wire [4:0] a2,
    input  wire [4:0] a3,
    input  wire rfwe,
    input  wire [31:0] pc,
    input  wire [31:0] wd,
    output wire [31:0] rd1,
    output wire [31:0] rd2
);

    reg [31:0] register [31:0];

    integer i;
    initial begin
        for(i = 0;i < 32;i = i + 1) begin
            register[i] <= 0;
        end
    end

    always @(posedge clk) begin
        if(reset == 1) begin
            for(i = 0;i < 32;i = i + 1) begin
                register[i] <= 0;
            end
        end
        else begin
            if(rfwe == 1) begin
                if(a3 != 5'd0) begin
                    register[a3] <= wd;
                    $display("@%h: $%d <= %h", pc, a3, wd);
                end
            end
        end
    end

    assign rd1 = register[a1];
    assign rd2 = register[a2];

endmodule //RF