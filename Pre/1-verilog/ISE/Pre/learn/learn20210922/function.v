`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:40 09/22/2021 
// Design Name: 
// Module Name:    function 
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
module afunction (A, B, CIN, S, COUT);
  input [3:0] A, B;
  input CIN;
  output [3:0] S;
  output COUT;

  wire [1:0] S0, S1, S2, S3;

  function signed [1:0] ADD; // ����ֻ����ģ����ֱ�Ӷ���

    input A, B, CIN;  // ����˿�

    reg S, COUT;  // ���ܶ�������˿ڣ���������йص��������reg����

    begin
      S = A ^ B ^ CIN;
      COUT = (A&B) | (A&CIN) | (B&CIN);
      ADD = {COUT, S};  // �����ʽ  // ����ֻ����һ��ֵ�����������õ�λ�ã������ں����з���ֵ�뺯����ͬ����
    end
  endfunction

  assign S0 = ADD (A[0], B[0], CIN),  // ����������䲻�ܵ�����Ϊһ�������֣�ֻ����Ϊ��ֵ�����Ҷ˲�������
  S1 = ADD (A[1], B[1], S0[1]),
  S2 = ADD (A[2], B[2], S1[1]),
  S3 = ADD (A[3], B[3], S2[1]),
  S = {S3[0], S2[0], S1[0], S0[0]},
  COUT = S3[1];
endmodule
