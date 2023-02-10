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

    reg [3:0] second1;
    reg [3:0] second2;
    reg [3:0] minute1;
    reg [3:0] minute2;
    reg [3:0] hour1;
    reg [3:0] hour2;
    reg pmm;

    initial begin
        second1 <= 0;
        minute1 <= 0;
        hour1 <= 4'd2;
        second2 <= 0;
        minute2 <= 0;
        hour2 <= 4'd1;
        pmm <= 0;
    end


    always @(posedge clk) begin
        if (reset) begin
            second1 <= 0;
            minute1 <= 0;
            hour1 <= 4'd2;
            second2 <= 0;
            minute2 <= 0;
            hour2 <= 4'd1;
            pmm <= 0;
        end
        else if(ena) begin
            if(second1==4'd9)begin
                if(second2==4'd5)begin
                    if(minute1==4'd9)begin
                        if(minute2==4'd5)begin
                            if(hour1==4'd1 && hour2== 4'd1)begin
                                hour1<=4'd2;
                                hour2<=4'd1;
                                pmm<=~pmm;
                            end
                            else if(hour2==4'd1 && hour1==4'd2) begin
                                hour1<=4'd1;
                                hour2<=4'd0;
                            end
                            else begin
                                if(hour1==4'd9)begin
                                    hour1<=4'd0;
                                    hour2<=4'd1;
                                end
                                else begin
                                    hour1<=hour1+4'd1;
                                end
                            end
                            minute2<=4'd0;
                        end
                        else begin
                            minute2<=minute2+4'd1;
                        end
                        minute1<=4'd0;
                    end
                    else begin
                        minute1<=minute1+4'd1;
                    end
                    second2<=4'd0;
                end
                else begin
                    second2<=second2+4'd1;
                end
                second1<=4'd0;
            end
            else begin
                second1 <= second1+4'd1;
            end
        end
    end

    assign pm = pmm;
    assign hh = {hour2,hour1};
    assign mm = {minute2,minute1};
    assign ss = {second2,second1};

endmodule