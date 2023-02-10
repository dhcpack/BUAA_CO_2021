`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:27:34 11/29/2021 
// Design Name: 
// Module Name:    load 
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
module load_write(
    input [31:0] DA,
    input [31:0] DR_now,
    input [31:0] read_type,
	 input [31:0] write_type,
	 input MemWr,
    output reg [31:0] DR,
	 output reg [3:0] m_data_byteen,
	 output reg [31:0]  write_M_final,
	 input [31:0 ] RD2_M_final,
	 output AdES,
	 output AdEL
	 
    );
	 
	 wire hit_dev0;
	 wire hit_dev1;
	 initial 
	 begin
		DR<= 32'b0;
		m_data_byteen<= 4'b0;
		write_M_final<=32'b0;
	 end
	 
	 
	 always @(*)
	 begin
	 if(MemWr==1&&(DA<=32'h2fff))
		begin
			//mem[ DA[11:0] ] <= WD;
			//$display("%d@%h: *%h <= %h", $time, PC, DA,WD);
			case(write_type)
				0:begin
					m_data_byteen <= 4'b1111;
					write_M_final <= RD2_M_final;
					 end
				1:begin
						write_M_final <= {2{RD2_M_final[15:0]}};
						
						case(DA[1])
						 0: begin m_data_byteen <= 4'b0011;  end
						 1: begin m_data_byteen <= 4'b1100;  end 
						endcase 
					end
				2:begin
						write_M_final = {4{RD2_M_final[7:0]}};
						case(DA[1:0])
							0: m_data_byteen <= 4'b0001;
							1: m_data_byteen <= 4'b0010;
							2: m_data_byteen <= 4'b0100;
							3: m_data_byteen <= 4'b1000;
						
						endcase
					end
				default: m_data_byteen <= 4'b1111;
			endcase
		end
	else
		 m_data_byteen <= 4'b0000;
	end
	 
	 
	 
	 
	 
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