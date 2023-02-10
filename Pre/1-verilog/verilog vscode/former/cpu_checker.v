`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:21 09/19/2021 
// Design Name: 
// Module Name:    cpu_checker 
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
module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
    output [1:0] format_type
    );
 // define input type
    wire [3:0] type;
    assign type = (char == "^") ? 4'd0 :
            ((char >= "0") && (char <= "9")) ? 4'd1:
            (char =="@") ? 4'd2:
            ((char >= "a") && (char <="f")) ? 4'd3 :
            (char == " ") ? 4'd4 :
            (char == 8'd42) ? 4'd5 :  //用8'd42代替*
            (char == "=") ? 4'd6 :
            (char == "<") ? 4'd7 :
            (char == "$") ? 4'd8 :
            (char == "#") ? 4'd9 :
            4'd10; // char == ":"

    reg [3:0] status;
    reg [3:0] cnt;
    reg out;
    reg [1:0] judge;
    initial begin
        status <= 4'd0;
        cnt <= 4'd0;
        judge <= 2'd0;
        out <= 1'b0;
    end

    always @(posedge clk) begin
        if (reset == 1'd1) begin
            status <= 4'd0;
            cnt <= 4'd0;
            judge <= 2'd0;
        end
        else begin
            case (status)
                4'd0 : begin
                    out <=4'd0;
                    if (type ==4'd0) begin
                        status <= 4'd1;
                    end
                    else begin
                        status <= 4'd0;
                    end
                end

                4'd1 : begin
                    if (type == 4'd0) begin
                        status <= 4'd1;
                    end
                    else if (type == 4'd1) begin
								cnt <= cnt + 4'd1;
                        status <= 4'd2;
                    end
                    else begin
                        status <= 4'd0;
                    end
                end

                4'd2 : begin
                    if (type == 4'd0) begin
                        status <= 4'd1;
                    end
                    else if (type == 4'd1) begin
                        if (cnt ==4'd4) begin
                            cnt <= 4'd0;
                            status <= 4'd0;
                        end
                        else begin
                            status <= 4'd2;
                            cnt <= cnt + 4'd1;
                        end
					end
                    else if (type == 4'd2) begin
                        cnt <= 4'd0;
                        status <= 4'd3;
                    end
                    else begin
                        cnt <= 4'd0;
                        status <= 4'd0;
                    end
                end

                4'd3 : begin
                    if (type == 4'd0) begin
                        status <= 4'd1;
                    end
                    else if((type == 4'd1)||(type == 4'd3)) begin
                        cnt <= cnt + 4'd1;
                        status <= 4'd4;
                    end
                    else begin
                        status <= 4'd0;
                    end
                end

                4'd4 : begin
                    if((type == 4'd1)||(type == 4'd3)) begin
                        if (cnt == 4'd8) begin
                            cnt <= 4'd0;
                            status <= 4'd0;
                        end
                        else begin
                            cnt <= cnt + 4'd1;
                        end
                    end
                    else if(type == 4'd10) begin
                        if (cnt == 4'd8) begin
                            status <= 4'd5;
                        end
                        else begin
                            status <= 4'd0;
                        end
                        cnt <= 4'd0;
                    end
                    else if (type == 4'd0) begin
                        status <= 4'd1;
                        cnt <= 4'd0;
                    end
                    else begin
                        status <= 4'd0;
                        cnt <= 4'd0;
                    end
                end
            
                4'd5 : begin
                    if (type == 4'd4) begin
                        status <= 4'd5;
                    end
                    else if(type == 4'd5) begin
                        status <= 4'd8;
                    end
                    else if(type == 4'd8) begin
                        status <= 4'd6;
                    end
                    else if(type == 4'd0) begin
                        status <= 4'd1;
                    end
                    else begin
                        status <= 4'd0;
                    end
                end

                4'd6 : begin
                    judge <= 2'b01;
                    if (type == 4'd1) begin
                        status <= 4'd7;
                        cnt <= 4'd1;
                    end
                    else if(type == 4'd0) begin
                        status <= 4'd1;
                    end
                    else begin
                        status <= 4'd0;
                    end
                end

                4'd7 : begin
                    if (type == 4'd1) begin
                        if (cnt == 4'd4) begin
                            cnt <= 4'd0;
                            status <= 4'd0;
                        end
                        else begin
                            cnt <= cnt + 4'd1;
                        end
                    end
                    else begin
                        if(type == 4'd4) begin
                            status <= 4'd10;
                        end
                        else if(type == 4'd7) begin
                            status <= 4'd11;
                        end
                        else if(type == 4'd0) begin
                            status <= 4'd1;
                        end
                        else begin
                            status <= 4'd0;
                        end
                        cnt <= 4'd0;
                    end
                end

                4'd8 : begin
                    judge <= 2'b10;
                    if ((type == 4'd3)||(type == 4'd1)) begin
                        status <= 4'd9;
                        cnt <= cnt + 4'd1;
                    end
                    else if(type == 4'd0) begin
                        status <= 4'd1;
                    end
                    else begin
                        status <= 4'd0;
                    end
                end

                4'd9 : begin
                    if ((type == 4'd3)||(type == 4'd1)) begin
                        if (cnt == 4'd8) begin
                            cnt <= 4'd0;
                            status <= 4'd0;
                        end
                        else begin
                            cnt <= cnt + 4'd1;
                        end
                    end
                    else begin
                        if ((type == 4'd4)||(type == 4'd7)) begin
                            if (cnt == 4'd8) begin
                                if (type == 4'd4) begin
                                    status <= 4'd10;
                                end
                                else begin
                                    status <= 4'd11;
                                end
							end
                        end
                        else if(type == 4'd0) begin
                            status <= 4'd1;
                        end
                        else begin
                            status <= 4'd0;
                        end
                        cnt <= 4'd0;
                    end
                end

                4'd10 : begin
                    if (type == 4'd4) begin
                        status <= 4'd10;
                    end
                    else if(type == 4'd7) begin
                        status <= 4'd11;
                    end
                    else if(type == 4'd0) begin
                        status <= 4'd1;
                    end
                    else begin
                        status <= 4'd0;
                    end
                end

                4'd11 : begin
                    if (type == 4'd6) begin
                        status <= 4'd12;
                    end
                    else if(type == 4'd0) begin
                        status <= 4'd1;
                    end
                    else begin
                        status <= 4'd0;
                    end
                end

                4'd12 : begin
                    if (type == 4'd4) begin
                        status <= 4'd12;
                    end
                    else if ((type == 4'd1)||(type == 4'd3))begin
                        cnt <= cnt + 4'd1;
                        status <= 4'd13;
                    end
                    else if(type == 4'd0) begin
                        status <= 4'd1;
                    end
                    else begin
                        status <= 4'd0;
                    end
                end

                4'd13 : begin
                    if ((type == 4'd1)||(type == 4'd3))begin
                        if (cnt == 4'd8) begin
                            status <= 4'd0;
                            cnt <= 4'd0;
                        end
                        else begin
                            cnt <= cnt + 4'd1;
                        end
                    end
                    else if(type == 4'd9) begin
                        if (cnt == 4'd8) begin
                            status <= 4'd14;
                        end
                        else begin
                            status <= 4'd0;
                        end
                        cnt <= 4'd0;
                    end
                    else if(type == 4'd0) begin
                        cnt <= 4'd0;
                        status <= 4'd1;
                    end
                    else begin
                        cnt <= 4'd0;
                        status <= 4'd0;
                    end
                end

                4'd14 : begin
                    if (type == 4'd0) begin
                        status <= 4'd1;
                    end
                    else begin
                        status <= 4'd0;
                    end
                end

                default : status <= 4'd0;
            endcase
        end
    end
    
    assign format_type = (status == 4'd14) ? judge : 2'b00;

endmodule
/*
输入：^ 1 0 2 4 @ 0 0 0 0 3 0 f c :   $ 2   < =   8 9 a b c d e f # ^ 6 4
输出：0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
*/