`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:55:31 11/27/2021 
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
`define a 4'b0x01
module practice(
input [3:0] b,
output res
    );
assign res = (b == `a) ? 1 : 0;


endmodule
