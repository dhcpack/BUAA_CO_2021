`include "constant.v"

module CMP (
    input  wire [31:0] cmpa,
    input  wire [31:0] cmpb,
    input  wire [3:0]  cmpop,
    output reg branch_true
);

    initial begin
        branch_true = 0;
    end
    
    always @( * ) begin
        case(cmpop)
            `aequb : begin
                if(cmpa == cmpb)begin
                    branch_true = 1;
                end
                else begin
                    branch_true = 0;
                end
				end
				
				`agtz : begin
					if($signed(cmpa) > $signed(32'd0))begin  //comparison between signed number
						branch_true = 1;
					end
					else begin
						branch_true = 0;
					end
            end
				
				`agez : begin
					if($signed(cmpa) >= $signed(32'd0))begin
						branch_true = 1;
					end
					else begin
						branch_true = 0;
					end
				end
				
            default : begin
                branch_true = 0;
            end
        endcase
    end

endmodule //CMP