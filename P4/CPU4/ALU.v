`timescale 1ns/1ps

module ALU (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [4:0] aluop,
    output wire zero,
    output wire [31:0] res
);

    assign res = (aluop == 5'd0) ? (a + b) :  // aluop=0 两个操作数做加法 a+b
                (aluop == 5'd1) ? (a - b) :  // aluop=1 两个操作数做减法  a-b
                (aluop == 5'd2) ? (a | b) :  // aluop=2  两个操作数按位或  a|b
                (aluop == 5'd3) ? {b[15:0],16'b0} :  // aluop=3 第二个操作数的低16位作为输出的高16位，后面补零  luib
                (aluop == 5'd4) ? a :  // aluop=4 直接输出a操作数  a
					 (aluop == 5'd5) ? b << a[4:0] :
                32'hffff_ffff;
    
    assign zero = (a == b) ? 1'd1 : 1'd0;
endmodule //ALU