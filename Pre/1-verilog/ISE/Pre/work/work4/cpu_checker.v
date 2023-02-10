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
    input [15:0] freq,  //new
    output [1:0] format_type,
    output [3:0] error_code  //new
    );
 // define input type
    wire [3:0] type;
    assign type = (char == "^") ? 4'd0 :
            ((char >= "0") && (char <= "9")) ? 4'd1:
            (char =="@") ? 4'd2:
            ((char >= "a") && (char <="f")) ? 4'd3 :
            (char == " ") ? 4'd4 :
            (char == 8'd42) ? 4'd5 : 
            (char == "=") ? 4'd6 :
            (char == "<") ? 4'd7 :
            (char == "$") ? 4'd8 :
            (char == "#") ? 4'd9 :
            4'd10; // char == ":"

    reg [3:0] status;
    reg [3:0] cnt;
    reg out;
    reg [1:0] judge;

    // new
    reg [15:0] times;
    reg [31:0] pc;
    reg [31:0] addr;
    reg [15:0] grf;
    wire wrongtimes;
    wire wrongpc;
    wire wrongaddr;
    wire wronggrf;
    //new

    initial begin
        status <= 4'd0;
        cnt <= 4'd0;
        judge <= 2'd0;
        out <= 1'b0;
        // new
        times <= 0;
        pc <= 0;
        addr <= 0;
        grf <= 0;
    end

    always @(posedge clk) begin
        if (reset == 1'd1) begin
            status <= 4'd0;
            cnt <= 4'd0;
            judge <= 2'd0;
            out <= 1'b0;
            // new
            times <= 0;
            pc <= 0;
            addr <= 0;
            grf <= 0;
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
                        times <= char - "0"; //
                        status <= 4'd2;
                    end
                    else begin
                        status <= 4'd0;
                    end
                end

                4'd2 : begin
                    if (type == 4'd0) begin
                        status <= 4'd1;
                        cnt <= 0;
                        times <= 0;
                    end
                    else if (type == 4'd1) begin
                        if (cnt ==4'd4) begin
                            cnt <= 4'd0;
                            times <= 0; //
                            status <= 4'd0;
                        end
                        else begin
                            status <= 4'd2;
                            cnt <= cnt + 4'd1;
                            times <= (times << 3) + (times << 1) + (char - "0"); //
                        end
					end
                    else if (type == 4'd2) begin
                        cnt <= 4'd0;
                        status <= 4'd3;
                    end
                    else begin
                        cnt <= 4'd0;
                        status <= 4'd0;
                        times <= 0; //
                    end
                end

                4'd3 : begin
                    if (type == 4'd0) begin
                        status <= 4'd1;
                    end
                    else if((type == 4'd1)||(type == 4'd3)) begin
                        cnt <= cnt + 4'd1;
                        pc <= (char <= "9") ? (char - "0") : (char - "a" + 32'd10); //
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
                            pc <= 0; //
                            status <= 4'd0;
                        end
                        else begin
                            cnt <= cnt + 4'd1;
                            pc <= (pc << 4) + ((char <= "9") ? (char - "0") : (char - "a" + 32'd10)); //
                        end
                    end
                    else if(type == 4'd10) begin
                        if (cnt == 4'd8) begin
                            status <= 4'd5;
                        end
                        else begin
                            status <= 4'd0;                       
                            pc <= 0; //
                        end
                        cnt <= 4'd0;
                    end
                    else if (type == 4'd0) begin
                        status <= 4'd1;
                        cnt <= 4'd0;
                        pc <= 0; //
                    end
                    else begin
                        status <= 4'd0;
                        cnt <= 4'd0;
                        pc <= 0; //
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
                        grf <= char - "0"; //
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
                            grf <= 0;
                        end
                        else begin
                            cnt <= cnt + 4'd1;
                            grf <= (grf << 3) + (grf << 1) + (char - "0"); //
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
                            grf <= 0;
                        end
                        else begin
                            status <= 4'd0;
                            grf <= 0;
                        end
                        cnt <= 4'd0;
                    end
                end

                4'd8 : begin
                    judge <= 2'b10;
                    if ((type == 4'd3)||(type == 4'd1)) begin
                        status <= 4'd9;
                        cnt <= cnt + 4'd1;
                        addr <= (char <= "9") ? (char - "0") : (char - "a" + 32'd10); //
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
                            addr <= 0; //
                            status <= 4'd0;
                        end
                        else begin
                            cnt <= cnt + 4'd1;
                            addr <= (addr << 4) + ((char <= "9") ? (char - "0") : (char - "a" + 32'd10));
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
                            addr <= 0;
                        end
                        else begin
                            status <= 4'd0;
                            addr <= 0;
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
    assign wrongtimes = ((times & ((freq >> 1) - 16'b1)) == 16'b0) ? 0 : 1;
    assign wrongpc = ((pc >= 32'h00003000) && (pc <= 32'h00004fff) && ((pc & 32'b11) == 32'b0)) ? 0 : 1;
    assign wrongaddr = ((judge != 2'b10) || ((addr >= 32'h00000000) && (addr <= 32'h00002fff) && ((addr & 32'b11) == 32'b0))) ? 0 : 1;
    assign wronggrf = ((judge != 2'b01) || ((grf >= 5'b00000) && (grf <= 5'b11111))) ? 0 : 1;

    assign error_code = (status == 4'd14) ? {wronggrf, wrongaddr, wrongpc, wrongtimes} : 4'b0;
endmodule