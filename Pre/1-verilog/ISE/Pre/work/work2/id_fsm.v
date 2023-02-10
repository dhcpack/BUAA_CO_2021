`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:59 09/19/2021 
// Design Name: 
// Module Name:    id_fsm 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`define S0 2'b00
`define S1 2'b01
`define S2 2'b10
module id_fsm(
    input [7:0] char,
    input clk,
    output out
    );

    reg [1:0] status;  // ¼Ä´æÆ÷£º¼ÇÂ¼µ±Ç°×´Ì¬£¨Ê±ÐòÂß¼­£©
    initial begin
        status <= `S2;  // ¼Ä´æÆ÷³õÊ¼»¯
    end

    always @(posedge clk) begin
        case (status)
            `S0 : begin
                if ((char >= 8'd65 && char <= 8'd90)||(char >= 8'd97 && char <= 8'd122)) begin
                    status <= `S0;
                end
                else if (char >= 8'd48 && char <=8'd57) begin
                    status <= `S1;
                end
                else begin
                    status <= `S2;
                end
            end
            `S1 : begin
                if ((char >= 8'd65 && char <= 8'd90)||(char >= 8'd97 && char <= 8'd122)) begin
                    status <= `S0;
                end
                else if (char >= 8'd48 && char <=8'd57) begin
                    status <= `S1;
                end
                else begin
                    status <= `S2;
                end
            end
            `S2 : begin
                if ((char >= 8'd65 && char <= 8'd90)||(char >= 8'd97 && char <= 8'd122)) begin
                    status <= `S0;
                end
                else if (char >= 8'd48 && char <=8'd57) begin
                    status <= `S2;
                end
                else begin
                    status <= `S2;
                end
            end
        endcase
    end

    assign out = (status == `S1) ? 1'b1 : 1'b0;

endmodule