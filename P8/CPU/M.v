`include "constant.v"

module M (
    input  wire [1:0] byte,
    input  wire [31:0] loadfromDM,
    input  wire [2:0] dmtype_M,
    output wire [31:0] DMRes_M
);

    assign DMRes_M = (dmtype_M == `word) ? loadfromDM : 
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

endmodule //M