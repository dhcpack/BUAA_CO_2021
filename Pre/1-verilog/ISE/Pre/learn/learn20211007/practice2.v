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

    reg [7:0] second;
    reg [7:0] minute;
    reg [7:0] hour;
    reg pmm;

    initial begin
        second <= 0;
        minute <= 0;
        hour <= 0;
        pmm <= 0;
    end


    always @(posedge clk) begin
        if (reset) begin
            pmm <= 0;
            hour <= 8'd12;
            minute <= 8'd00;
            second <= 8'd00;
        end
        else begin
            if (ena) begin
                if(second == 8'd59) begin
                    if(minute == 8'd59)begin
                        if(hour == 8'd12)begin
                            hour <= 8'd1;
                            pmm <= ~pmm;
                        end
                        else begin
                            hour <= hour + 8'd1;
                        end
                        minute <= 8'd00;
                    end
						  else begin
								minute <= minute + 8'd1;
						  end
                    second <= 8'd00;
                end
                else begin
                    second <= second + 1;
                end
            end
        end
    end

    assign pm = pmm;
    assign hh = hour;
    assign mm = minute;
    assign ss = second;

endmodule