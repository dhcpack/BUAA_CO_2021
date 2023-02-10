`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:31 12/11/2021 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
    input [4:0] A1,
    input [4:0] A2,
    input [31:0] DIn,
    input [31:0] PC,
    input [6:2] ExcCodeIn,
    input [5:0] HWIntIn,
    input WE,//write enable
	 input BD_M,
    input EXLClr,
    input clk,
    input rst,
    output Req,
    output [31:0] EPC,
    output [31:0] DOut,
	 output interrupt_out
    );
	wire [31:0] SR;// [15:10]���������жϣ�[1]�Ƿ����жϣ�[0]�Ƿ������ж�
	wire [31:0] Cause;//[31]�ӳٲ۱�ǣ�[15:10]�ж����࣬[6:2]�쳣ԭ��
	reg  [31:0] PrID;//ID
	reg [31:0] EPCreg;
	wire [31:0] PC_4;
	
	
	
	//SR: 12 
	//CAUSE: 13 
	//EPC: 14
	//PrID: 15
	
	//SR
	reg EXL;
	reg IE;
	reg [7:2] IM;
	//Cause
	reg [6:2] ExcCode;
	reg BD;
	reg [5:0] HWInt;
	reg [5:0] HWInt_cause;
	
	assign PC_4 = PC - 4;
	assign SR = {16'b0,IM,8'b0,EXL,IE};
	assign Cause = {BD,15'b0,HWInt_cause,3'b0,ExcCode,2'b0};
	assign EPC = EPCreg; 
	
	wire IntReq = ( (|(HWIntIn & IM )) & !EXL & IE);
	wire ExcReq = ( (ExcCodeIn !=0) && (EXL==0) );
	assign Req =  IntReq | ExcReq;
	assign interrupt_out = (HWIntIn[2]& IM[4] & !EXL & IE);
	
	initial 
	begin
		PrID <= 32'b0;
		EPCreg<=32'b0;
		EXL<=1'b0;
		ExcCode<=5'b0;
		IE<=1'b1;
		IM<=6'b0;
		BD<=1'b0;
		HWInt<=5'b0;
		HWInt_cause<=5'b0;
	end
	
	assign DOut = (A1 == 5'd12)? SR:
					  (A1 == 5'd13)? Cause:
					  (A1 == 5'd14)? EPCreg:
					  (A1 == 5'd15)? PrID:
					  32'b0;
	
	always @(posedge clk)
	begin
	
		
		
		if(rst==1)
		begin
			PrID <= 32'b0;
			EPCreg<=32'b0;
			EXL<=1'b0;
			ExcCode<=5'b0;
			IE<=1'b1;
			IM<=6'b0;
			BD<=1'b0;
			HWInt<=5'b0;
		end
		
		else 
		begin
		
			HWInt <= HWIntIn;
			if(Req == 1)
			begin
				EXL<=1'b1;
				EPCreg <= (BD_M==1)? PC_4 : PC;
				BD<= BD_M;
				ExcCode <= (IntReq==1)? 5'b0: ExcCodeIn;
                HWInt_cause<=HWIntIn;
			end

		
			if(WE==1)
			begin
				if(A2 == 5'd12) {IM,EXL,IE} <= {DIn[15:10],DIn[1],DIn[0]};
				else if(A2 == 5'd14) EPCreg <= DIn;
			end
			
			if(EXLClr==1) EXL<=0;
		end
	end
	

endmodule
