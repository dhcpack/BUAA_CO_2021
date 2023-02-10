`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:33 11/20/2021 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] DA,
    input [31:0] WD,
    output reg [31:0] DR,
    input [31:0] PC,
    input clk,
    input reset,
	 input [31:0] read_type,
	 input [31:0] write_type,
    input MemWr
    );
	 
	//type = 0 : word
	//type = 1 : half_signed_extend
	//type = 2 : half_zero_extend
	//type = 3 : byte_signed_extend
	//type = 4 : byte_zero_extend
	reg [31:0] mem [0:3071];
	
	wire [31:0] DR_now;
	assign DR_now = mem[DA[13:2] ] ;
	
	 
	
	integer i;
	
	initial
	begin
		for(i=0;i<3072;i=i+1)
			mem[i] <= 32'b0;
	end
	
	
	always @(posedge clk)
	begin
		if(reset==1)
			for(i=0;i<3072;i=i+1)
				mem[i] <= 32'b0;
		
		else if(MemWr==1)
		begin
			//mem[ DA[11:0] ] <= WD;
			//$display("%d@%h: *%h <= %h", $time, PC, DA,WD);
			case(write_type)
				0:begin
					mem[ DA[13:2] ] <= WD;
					//$display("@%h: *%h <= %h", PC, DA,WD); 
					end
				1:begin
						case(DA[1])
						 0:begin
								mem[ DA[13:2] ] [15:0] <= WD[15:0];
								//$display("%d@%h: *%h <= %h", $time, PC, DA,{mem[ DA[13:2] ][31:16],WD[15:0]});
								end
						 1:begin
								mem[ DA[13:2] ][31:16] <= WD[15:0];
								//$display("%d@%h: *%h <= %h", $time, PC, DA,{WD[15:0],mem[ DA[13:2] ][15:0]});
								end
						endcase 
					end
				2:begin
						case(DA[1:0])
							0:begin
									mem[ DA[13:2] ][7:0] <= WD[7:0];
									//$display("%d@%h: *%h <= %h", $time, PC, DA,{mem[ DA[13:2] ][31:8] ,WD[7:0]                      });
									end
							1:begin
									mem[ DA[13:2] ][15:8]<= WD[7:0];
									//$display("%d@%h: *%h <= %h", $time, PC, DA,{mem[ DA[13:2] ][31:16],WD[7:0],mem[ DA[13:2] ][7:0]} );
									end
							2:begin
									mem[ DA[13:2] ][23:16]<= WD[7:0];
									//$display("%d@%h: *%h <= %h", $time, PC, DA,{mem[ DA[13:2] ][31:24],WD[7:0],mem[ DA[13:2] ][15:0]});
									end
							3:begin
									mem[ DA[13:2] ][31:24]<= WD[7:0];
									//$display("%d@%h: *%h <= %h", $time, PC, DA,{                       WD[7:0],mem[ DA[13:2] ][23:0]});
									end
						
						endcase
					end
				default:begin 
					mem[ DA[13:2] ] <= WD;
					//$display("%d@%h: *%h <= %h", $time, PC, DA,WD); 
					end
			endcase
		end
	end
	
	
	
	//assign DR = (read_type == 0) ? mem[DA[13:2]]:
	//				(read_type == 1) ? {{16{1'b0}},mem[DA[13:2]][15:0]}:
	//				(read_type == 2) ? {{16{mem[DA[13:2]][15]}},mem[DA[13:2]][15:0]}:
	//				(read_type == 3) ? {{24{1'b0}},mem[DA[13:2]][7:0]}:
	//				(read_type == 4) ? {{24{mem[DA[13:2]][7]}},mem[DA[13:2]][7:0]}:
	//				0;
					
	//type = 0 : word
	//type = 1 : half_signed_extend
	//type = 2 : half_zero_extend
	//type = 3 : byte_signed_extend
	//type = 4 : byte_zero_extend
	always @(*)
	begin
		case(read_type)
			0:	DR <= DR_now;//type = 0 : word
			
			1:begin//type = 1 : half_signed_extend
				case(DA[1])
					0:		DR <={{16{DR_now[15]}},DR_now[15:0]};
					1:		DR <={{16{DR_now[31]}},DR_now[31:16]};
				endcase
			end	
			2:begin//type = 2 : half_zero_extend
				case(DA[1])
					0:		DR <={16'b0,DR_now[15:0]};
					1:		DR <={16'b0,DR_now[31:16]};
				endcase
			end
			3:begin//type = 3 : byte_signed_extend
				case(DA[1:0])
					0:		DR <={{24{DR_now[7]}},DR_now[7:0]};
					1:		DR <={{24{DR_now[15]}},DR_now[15:8]};
					2:		DR <={{24{DR_now[23]}},DR_now[23:16]};
					3:		DR <={{24{DR_now[31]}},DR_now[31:24]};
				endcase
			end
			4:begin//type = 4 : byte_zero_extend
				case(DA[1:0])
					0:		DR <={24'b0,DR_now[7:0]};
					1:		DR <={24'b0,DR_now[15:8]};
					2:		DR <={24'b0,DR_now[23:16]};
					3:		DR <={24'b0,DR_now[31:24]};
				endcase
			end
		endcase 
	end 
	

endmodule
