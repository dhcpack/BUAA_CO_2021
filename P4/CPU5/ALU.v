`timescale 1ns/1ps

module ALU (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [4:0] aluop,
    output wire zero,
    output wire [31:0] res
);

    assign res = (aluop == 5'd0) ? (a + b) :  // aluop=0 �������������ӷ� a+b
                (aluop == 5'd1) ? (a - b) :  // aluop=1 ����������������  a-b
                (aluop == 5'd2) ? (a | b) :  // aluop=2  ������������λ��  a|b
                (aluop == 5'd3) ? {b[15:0],16'b0} :  // aluop=3 �ڶ����������ĵ�16λ��Ϊ����ĸ�16λ�����油��  luib
                (aluop == 5'd4) ? a :  // aluop=4 ֱ�����a������  a
				(aluop == 5'd5) ? b << a[4:0] :
                32'hffff_ffff;
    
    assign zero = (a == b) ? 1'd1 : 1'd0;
endmodule //ALU