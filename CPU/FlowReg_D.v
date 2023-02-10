`include "constant.v"

module FlowReg_D (
    input  wire clk,
    input  wire En_D,
    input  wire reset,
    input  wire clear_D,
    input  wire jumpto4180,
    input  wire wrongpc_F,
    input  wire [31:0] command_F,
    input  wire [31:0] commandAddr_F, pc_eret,
    
    output reg wrongpc_D,
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
            command_D <= 32'd0;
            commandAddr_D <= 32'h3000;                 
            wrongpc_D <= 1'd0;
        end
        else if(jumpto4180) begin
            command_D <= 32'd0;
            commandAddr_D <= 32'h4180;              
            wrongpc_D <= 1'd0;
        end
        else if(En_D == 0) begin
            command_D <= command_D;
            commandAddr_D <= commandAddr_D;                 
            wrongpc_D <= wrongpc_D;
        end
        else if(command_D == `eret) begin
            command_D <= 32'd0;
            commandAddr_D <= pc_eret;              
            wrongpc_D <= 1'd0;
        end
        else if(clear_D == 1) begin
            command_D <= 32'd0;
            commandAddr_D <= commandAddr_F;         
            wrongpc_D <= 1'd0;
        end
        else begin
            command_D <= command_F;
            commandAddr_D <= commandAddr_F;                
            wrongpc_D <= wrongpc_F;
        end
    end

endmodule //FlowReg_D