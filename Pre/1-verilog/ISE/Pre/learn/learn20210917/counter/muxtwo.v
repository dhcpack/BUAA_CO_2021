`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:05 09/14/2021 
// Design Name: 
// Module Name:    muxtwo 
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
module muxtwo(
    input a,
    input b,
    input sl,
    output out
    );
	
	wire nsl, sela, selb;
		assign nsl = ~sl;
		assign sela = a & nsl;
		assign selb = b & sl;
		assign out = sela | selb;

endmodule
