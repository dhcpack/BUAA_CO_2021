`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:05:41 10/24/2021 
// Design Name: 
// Module Name:    task_example 
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
module task_example(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output count
    );
	 
	 reg [3:0] s;
	 reg count;
	 reg [1:0] s0,s1,s2,s3;
	 task ADD;
			input a,b,cin;
			output [1:0] c;
			reg [1:0] c;
			reg s,cout;
			begin
				s = a ^ b ^ cin;
				cout = (a & b) | (a & cin) | (b & cin);
				c = {cout, s};
			end
			
		endtask
		
		always @(*) begin
			ADD(a[0], b[0], cin, s0);
			ADD(a[1], b[1], s0[1], s1);
			ADD(a[2], b[2], s1[1], s2);
			ADD(a[3], b[3], s2[1], s3);
			s={s3[0], s2[0], s1[0], s0[0]};
			count = s3[1];
		end
endmodule
			
