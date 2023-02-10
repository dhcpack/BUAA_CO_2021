`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:29:54 11/18/2019 
// Design Name: 
// Module Name:    MFCMP1D 
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
`include "define.v"


//MFxxx:ת��MUX���������  Mxxx:ת��MUX��ѡ���ź�
module MFCMP1D(
	input [2:0]MCMP1D,
	input [31:0]RFRD1,
	input [31:0]AO_M,
	input [31:0]AO_W,
	input [31:0]DM_W,
	input [31:0]PC4_M,
	input [31:0]PC4_W,
	output reg [31:0]MFCMP1D 		//ѡ�����Ƚϵ�Ԫ��A1_E����ȷ�ź�
	);
	always@*begin
		case(MCMP1D)
			`MD_ALU:MFCMP1D=AO_M;	//M����D��ת��ALU
			`MD_PC:MFCMP1D=PC4_M+4; //M����D��ת��PC
			`WD_ALU:MFCMP1D=AO_W;	//W����D��ת��ALU
			`WD_DM:MFCMP1D=DM_W;		//W����D��ת��DM
			`WD_PC:MFCMP1D=PC4_W+4; //W����D��ת��PC
			0:MFCMP1D=RFRD1;			//��ת������RF��RD1�ӿ�
			default:MFCMP1D=0;
		endcase
	end
endmodule 

module MFCMP2D(
	input [31:0]PC4_M,
	input [31:0]PC4_W,
	input [2:0]MCMP2D,
	input [31:0]RFRD2,
	input [31:0]AO_M,
	input [31:0]AO_W,
	input [31:0]DM_W,
	output reg [31:0]MFCMP2D		//ѡ�����Ƚϵ�Ԫ��A2_E����ȷ�ź�
	);
	always@*begin
		case(MCMP2D)
			`MD_ALU:MFCMP2D=AO_M;    //M����D��ת��ALU
			`MD_PC:MFCMP2D=PC4_M+4;		//M����D��ת��PC
			`WD_ALU:MFCMP2D=AO_W;		//W����D��ת��ALU
			`WD_DM:MFCMP2D=DM_W;		//W����D��ת��DM
			`WD_PC:MFCMP2D=PC4_W+4;	//W����D��ת��PC
			0:MFCMP2D=RFRD2;			//��ת������RF��RD2�ӿ�
			default:MFCMP2D=0;
		endcase
	end
endmodule 

module MFALUBE(
	input [31:0]PC4_M,
	input [31:0]PC4_W,
	input [2:0]MALUBE,
	input [31:0]AO_M,
	input [31:0]AO_W,
	input [31:0]DM_W,
	input [31:0]V2_E,
	output reg [31:0]MFALUBE		//ѡ�����ALU��Ԫ����ȷ�ź�
	);
	always@*begin
		case(MALUBE)
			`ME_ALU:MFALUBE=AO_M;	//M����E��ת��ALU
			`ME_PC:MFALUBE=PC4_M+4;	//M����E��ת��PC
			`WE_ALU:MFALUBE=AO_W;	//W����E��ת��ALU
			`WE_DM:MFALUBE=DM_W;		//W����E��ת��DM
			`WE_PC:MFALUBE=PC4_W+4;	//W����E��ת��PC
			0:MFALUBE=V2_E;			//��ת������E����V2
			default:MFALUBE=0;
		endcase
	end
endmodule

module MFALUAE(
	input [31:0]PC4_M,
	input [31:0]PC4_W,
	input [2:0]MALUAE,
	input [31:0]AO_M,
	input [31:0]AO_W,
	input [31:0]DM_W,
	input [31:0]V1_E,
	output reg [31:0]MFALUAE		//ѡ�����ALU��Ԫ����ȷ�ź�
	);
	always@*begin
		case(MALUAE)
			`ME_ALU:MFALUAE=AO_M;	//M����E��ת��ALU
			`ME_PC:MFALUAE=PC4_M+4;	//M����E��ת��PC
			`WE_ALU:MFALUAE=AO_W;	//W����E��ת��ALU
			`WE_DM:MFALUAE=DM_W;		//W����E��ת��DM
			`WE_PC:MFALUAE=PC4_W+4;	//W����E��ת��PC
			0:MFALUAE=V1_E;			//��ת������E����V1
			default:MFALUAE=0;
		endcase
	end
endmodule


module MFWDM(
	input [31:0]PC4_W,
	input [2:0]MWDM,
	input [31:0]V2_M,
	input [31:0]AO_W,
	input [31:0]DM_W,
	output reg [31:0]MFWDM		//ѡ�����M��WD���ź�
	);
	always@*begin
		case(MWDM)
			`WM_ALU:MFWDM=AO_W;		//W����M��ת��ALU
			`WM_DM:MFWDM=DM_W;	//W����M��ת��DM
			`WM_PC:MFWDM=PC4_W+4;	//W����M��ת��PC
			0:MFWDM=V2_M;			//��ת����M��V2
		endcase
	end
endmodule
