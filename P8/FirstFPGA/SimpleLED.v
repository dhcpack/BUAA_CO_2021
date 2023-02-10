`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:18 12/23/2021 
// Design Name: 
// Module Name:    SimpleLED 
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
module SimpleLED(
	input clk_in,
	input sys_rstn,
	output [31:0] led_light
);
	localparam PERIOD = 32'd25_000_000;
	reg [31:0] counter;
	
	always @(posedge clk_in)begin
		if (~sys_rstn)
			counter <= 0;
		else begin
			if (counter + 1 == PERIOD)
				counter <= 0;
			else 
				counter <= counter + 1;
		end
	end
	
	// LED
	reg [31:0] led;

	always @(posedge clk_in) begin
		 if (~sys_rstn)
			  led <= 32'b1; // ��ʼ���Ҳ� LED ��
		 else begin
			  if (counter + 1 == PERIOD)  // ��ʱ������һ������
					led <= {led[30:0], led[31]}; // ѭ������ 1 λ
		 end
	end

	assign led_light = ~led; // ��ת��ƽ�����ӵ������� LED �������


endmodule
