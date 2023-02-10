`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:53 10/18/2021 
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
module test(bin,gray);
       parameter SIZE=8;
       output [SIZE-1:0] bin;
       input [SIZE-1:0] gray;

		genvar i;
		generate
			  for(i=0;i<SIZE;i=i+1)
			  begin:bit
						assign bin[i]=^gray[SIZE-1:i];
			  end
		endgenerate

endmodule  