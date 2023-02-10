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

  function signed [1:0] ADD; // 函数只能在模块中直接定义

    input A, B, CIN;  // 输入端口

    reg S, COUT;  // 不能定义输出端口，将与输出有关的量定义成reg类型

    begin
      S = A ^ B ^ CIN;
      COUT = (A&B) | (A&CIN) | (B&CIN);
      ADD = {COUT, S};  // 输出格式  // 函数只返回一个值到函数被调用的位置，并且在函数中返回值与函数名同名。
    end
  endfunction

  assign S0 = ADD (A[0], B[0], CIN),  // 函数调用语句不能单独作为一条语句出现，只能作为赋值语句的右端操作数。
  S1 = ADD (A[1], B[1], S0[1]),
  S2 = ADD (A[2], B[2], S1[1]),
  S3 = ADD (A[3], B[3], S2[1]),
  S = {S3[0], S2[0], S1[0], S0[0]},
  COUT = S3[1];
endmodule
