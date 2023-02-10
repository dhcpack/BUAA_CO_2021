`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:50 11/12/2021 
// Design Name: 
// Module Name:    practice 
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
module practice(
	input [31:0] a,b,ctrlin,
	output result
    );
	 
	 mux #('d32) alumux(
    .a(a),
    .b(b),
    .ctrl(ctrlin),
    .s(result)
);


endmodule
