`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:02:25 09/17/2021 
// Design Name: 
// Module Name:    practice1 
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
    input s1,
    output out
    );
	 
	 not u1(nsl,sl);
	 and #1 u2(sela,a,nsl);
	 and #1 u3(selb,b,sl);
	 or #1 u4(out,sela,selb);

endmodule
