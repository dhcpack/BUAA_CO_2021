`include "constant.v"
// // ExcCode
// `define  int    5'd0
// `define  adel   5'd4
// `define  ades   5'd5
// `define  ri     5'd10
// `define  ov     5'd12
module errorjudger (
    input  wire unknowinstr, overflow, wrongpc_E,
    input  wire [4:0] commandtype_E,
    input  wire [31:0] command_E, commandAddr_E, alures,
    output reg [4:0] errorcode
);

    wire isDMaddr, isTimeraddr;
    assign isDMaddr = (alures >= 32'h0000_0000 && alures <= 32'h0000_2fff) ? 1'd1 : 1'd0;
    assign isTimeraddr = ((alures >= 32'h0000_7f00 && alures <= 32'h0000_7f0b) || (alures >= 32'h0000_7f10 && alures <= 32'h0000_7f1b)) ? 1'd1 : 1'd0;

    always @(*) begin
		errorcode = 5'd31;
        if (wrongpc_E) begin    errorcode = `adel;    end
        else if(commandtype_E == `load) begin
            if(command_E[31:26] == `lw && alures[1:0] != 2'd0) begin    errorcode = `adel;    end
            if((command_E[31:26] == `lh || command_E[31:26] == `lhu) && alures[0] != 1'd0) begin    errorcode = `adel;    end
            if((command_E[31:26] == `lh || command_E[31:26] == `lhu || command_E[31:26] == `lb || command_E[31:26] == `lbu) && isTimeraddr) begin    errorcode = `adel;    end
            if(overflow) begin   errorcode = `adel;   end
            if(!(isDMaddr || isTimeraddr)) begin   errorcode = `adel;   end
        end
        else if(commandtype_E == `save) begin
            if(command_E[31:26] == `sw && alures[1:0] != 2'd0) begin    errorcode = `ades;    end
            if((command_E[31:26] == `sh) && alures[0] != 1'd0) begin    errorcode = `ades;    end
				if((command_E[31:26] == `sh || command_E[31:26] == `sb) && isTimeraddr) begin    errorcode = `ades;    end
				if(overflow) begin   errorcode = `ades;   end
            if((alures >= 32'h7f08 && alures <= 32'h7f0b) || (alures >= 32'h7f18 && alures <= 32'h7f1b)) begin   errorcode = `ades;  end
				if(!(isDMaddr || isTimeraddr)) begin   errorcode = `ades;   end
        end
        else if(unknowinstr) begin
            errorcode = `ri;
        end
        else if(overflow) begin
            errorcode = `ov;
        end
        else begin
            errorcode = 5'd31;
        end
    end


endmodule //errorjudger