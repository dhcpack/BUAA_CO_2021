`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:54 10/12/2021 
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
// `default_nettype none 

module practice1(
input wire a1,
input wire a2,
output wire c1
);

assign c1=a1&a2;
endmodule