`include "constant.v"

// // ExcCode
// `define  Int    5'd0
// `define  AdEL   5'd4
// `define  AdES   5'd5
// `define  RI     5'd10
// `define  Ov     5'd12

module CP0 (
    input  wire clk, reset, isDelay,
    input  wire [4:0] errorcode,
    input  wire [5:0] interruptrequest,
    input  wire [31:0] command_E, write_data, pc_E,
    output wire jumpto4180,
    output wire [31:0] pc_eret,
    output wire [31:0] readfromcp
);

    reg [31:0] state_register, cause_register, epc_register, prid_register;

    initial begin
        state_register <= 32'd0;   cause_register <= 32'd0;
        epc_register <= 32'd0;     prid_register <= 32'h2002_1125;
    end

    always @(posedge clk) begin
        if(reset)begin
            state_register <= 32'd0;   cause_register <= 32'd0;
            epc_register <= 32'd0;     prid_register <= 32'h2002_1125;
        end
        else begin
            if(break)begin 
                if(isDelay)begin  epc_register <= delay_pc;  cause_register[31] <= 1'd1; end
                else begin        epc_register <= pc_E;       end
                cause_register[6:2] <= `int;
                state_register[1] <= 1'd1;
            end
            else if(error) begin
                if(isDelay)begin   epc_register <= delay_pc;  cause_register[31] <= 1'd1; end
                else begin         epc_register <= pc_E;      end
                cause_register[6:2] <= errorcode;
                state_register[1] <= 1'd1;
            end

            cause_register[15:10] <= interruptrequest;

            if(command_E == `eret)begin
                state_register[1] <= 1'b0;
            end

            else if(command_E[31:21] == `mtc0)begin
                if(command_E[15:11] == 5'd12)begin             state_register <= write_data;     end
                else if(command_E[15:11] == 5'd13) begin       cause_register <= write_data;     end
                else if(command_E[15:11] == 5'd14) begin       epc_register   <= write_data;     end
                else if(command_E[15:11] == 5'd15) begin       prid_register  <= write_data;     end
                else begin   end
            end
        end

    end

    wire [31:0] delay_pc;
    assign delay_pc = pc_E - 32'd4;
    assign pc_eret = {epc_register[31:2], 2'd0};

    wire error, break, state, delay, interrupt_enable;
    wire [5:0] exccode;
    wire [6:0] interrupt_disable, sixinterruption;

    assign interrupt_disable = state_register[15:10];     // 1 allow interruption separately
    assign interrupt_enable = state_register[0];  		  // 1 allow interruption globally
    assign state = state_register[1];                     // 1 is interrupt or stall state
    assign sixinterruption = cause_register[15:0];
    assign exccode = cause_register[6:2];
    assign delay = cause_register[31];

    assign break = (|(interruptrequest & interrupt_disable) & interrupt_enable & !state);  
    assign error = ((errorcode == `adel || errorcode == `ades || errorcode == `ri || errorcode == `ov) && (!state)) ? 1'd1 : 1'd0;  // ?
    assign jumpto4180 = break || error;
    assign readfromcp = (command_E[15:11] == 5'd12) ? state_register :
                        (command_E[15:11] == 5'd13) ? cause_register :
                        (command_E[15:11] == 5'd14) ? epc_register   : 
                        (command_E[15:11] == 5'd15) ? prid_register  : 32'hffff_ffff;

endmodule //CP0