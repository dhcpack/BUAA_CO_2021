module FlowReg_D (
    input  wire clk,
    input  wire En_D,
    input  wire reset,
    input  wire clear_D,
    input  wire wrongpc_F,
    input  wire [5:0] interruptrequest_F,
    input  wire [31:0] command_F,
    input  wire [31:0] commandAddr_F,
    output reg wrongpc_D,
    output reg [5:0] interruptrequest_D,
    output reg [31:0] command_D,
    output reg [31:0] commandAddr_D
);

    initial begin
        command_D = 0;
        commandAddr_D = 0;
        wrongpc_D = 0;
    end

    always @(posedge clk) begin
        if(reset == 1) begin
            interruptrequest_D <= 6'd0;
            command_D <= 32'd0;
            commandAddr_D <= 32'd0;
            wrongpc_D <= 1'd0;
        end
        else if(En_D == 0) begin
            interruptrequest_D <= interruptrequest_D;
            command_D <= command_D;
            commandAddr_D <= commandAddr_D;
            wrongpc_D <= wrongpc_D;
        end
        else if(clear_D == 1) begin
            interruptrequest_D <= 6'd0;
            command_D <= 32'd0;
            commandAddr_D <= 32'd0;
            wrongpc_D <= 1'd0;
        end
        else begin
            interruptrequest_D <= interruptrequest_F;
            command_D <= command_F;
            commandAddr_D <= commandAddr_F;
            wrongpc_D <= wrongpc_F;
        end
    end

endmodule //FlowReg_D