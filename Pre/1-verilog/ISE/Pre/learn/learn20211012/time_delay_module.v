`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:23:43 10/12/2021 
// Design Name: 
// Module Name:    time_delay_module 
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
module time_delay_module(
    input   ai, bi,
    output  so_lose, so_get, so_normal);
 
    assign #20      so_lose      = ai & bi ;
    assign  #5      so_get       = ai & bi ;
    assign          so_normal    = ai & bi ;
endmodule