`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:13:58 09/22/2021
// Design Name:   practice
// Module Name:   E:/ISE/learn/learn20210922/practice_tb.v
// Project Name:  learn20210922
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: practice
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module disp;
    reg[4:0] a;
    reg[4:0] b;
    initial begin
        a = 10;
        b = 20;
        $display("a = %o,b = %o\n",a,b);
    end
endmodule

