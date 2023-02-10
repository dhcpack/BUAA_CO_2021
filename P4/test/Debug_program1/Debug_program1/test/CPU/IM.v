`timescale 1ns/1ps

module IM (
    input  wire[31:0] address,
    output wire[31:0] command
);

    reg [31:0] command_momery [1023:0];

    initial begin
        $readmemh("code.txt",command_momery);
    end

    assign command = command_momery[address[11:2]];

endmodule //IM