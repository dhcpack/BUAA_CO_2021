`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:39 10/07/2021 
// Design Name: 
// Module Name:    practice1 
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
module top_module(
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss); 



    always @(posedge clk) begin
        if (reset) begin
            pm <= 0;
            hh <= 8'h12;
            mm <= 8'h00;
            ss <= 8'h00;
        end
        else begin
            if (ena) begin
                if(ss == 8'h59) begin
                    if(mm == 8'h59)begin
                        if(hh == 8'h11)begin
                            hh <= 8'h12;
                            pm <= ~pm;
                        end
                        mm <= 8'h00;
                    end
                    ss <= 8'h00;
                end
                else begin
                    ss <= ss + 1;
                end
            end
        end
    end