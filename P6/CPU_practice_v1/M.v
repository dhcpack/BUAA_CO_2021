`include "constant.v"

module M (
    input  wire [1:0] byte,
    input  wire [31:0] loadfromDM,
    input  wire [2:0] dmtype_M,
    output wire [31:0] DMRes_M,
	 output wire islhrr
);
	

    assign DMRes_M  = (dmtype_M == `word) ? loadfromDM : 
                    (dmtype_M == `half) ?
                        (byte[1] == 0) ? {{16{loadfromDM[15]}}, loadfromDM[15:0]} : {{16{loadfromDM[31]}}, loadfromDM[31:16]} :
                    (dmtype_M == `uhalf) ? 
                        (byte[1] == 0) ? {16'd0, loadfromDM[15:0]} : {16'd0, loadfromDM[31:16]} : 
                    (dmtype_M == `byte) ?
                        (byte == 2'd0) ? {{24{loadfromDM[7]}}, loadfromDM[7:0]} :
                        (byte == 2'd1) ? {{24{loadfromDM[15]}}, loadfromDM[15:8]} :
                        (byte == 2'd2) ? {{24{loadfromDM[23]}}, loadfromDM[23:16]} :
                        {{24{loadfromDM[31]}}, loadfromDM[31:24]} :
                    (dmtype_M == `ubyte) ? 
                        (byte == 2'd0) ? {24'd0, loadfromDM[7:0]} :
                        (byte == 2'd1) ? {24'd0, loadfromDM[15:8]} :
                        (byte == 2'd2) ? {24'd0, loadfromDM[23:16]} :
                        {24'd0, loadfromDM[31:24]} : 32'hffff_ffff;  // signal3 is remaining
	
	reg [5:0] cnt1, cnt0;
	integer i;
	always @(*) begin
		for(i = 0;i < 16;i = i + 1)begin
			if(DMRes_M[i] == 1'd0)begin
				cnt0 = cnt0 + 1;
			end
			else begin
				cnt1 = cnt1 + 1;
			end
		end
	end
	
	assign islhrr = (cnt1 > cnt0) ? 1'd1 : 1'd0;


endmodule //M