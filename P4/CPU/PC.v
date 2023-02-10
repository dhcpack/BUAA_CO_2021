`timescale 1ns/1ps

module PC (
    input  wire clk,
    input  wire reset,
    input  wire [31:0] address_in,
    output wire [31:0] address_out
);

    reg [31:0] address;

    initial begin
        address = 32'h3000;
    end
	 
    always @(posedge clk) begin
        if(reset == 1) begin
            address <= 32'h0000_3000;
        end
        else begin
            address <= address_in;
        end
    end

    assign address_out = address;

endmodule //PC