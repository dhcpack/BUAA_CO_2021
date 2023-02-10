`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:46 10/11/2021 
// Design Name: 
// Module Name:    parctice1 
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
module practice1(
    input a, 
    input b, 
    input cin, 
    output sum, 
    output overflow
    );
    wire s1, s2, s3;
	 
    //xor �� and ��Ϊԭ���ϵͳԤ�����ģ��
    xor xor1(sum, a, b, cin);
    and and1(s1, a, b);
    and and2(s2, a, cin);
    and and3(s3, b, cin);
    or or1(overflow, s1, s2, s3);
	 
endmodule   