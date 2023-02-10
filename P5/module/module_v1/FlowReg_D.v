module FlowReg_D (
    input  wire clk,
    input  wire En_D,
    //input  wire CLR_D,
    input  wire [31:0] command_F,
    input  wire [31:0] commandAddr_F,
    output reg [31:0] command_D,
    output reg [31:0] commandAddr_D
);

    initial begin
        command_D = 0;
        commandAddr_D = 0;
    end

    always @(posedge clk) begin
        // if(CLR_D == 1)begin
        //     command_D <= 0;
        //     commandAddr_D <= 0;
        // end
        // else 
        if(En_D == 1) begin
            command_D <= command_F;
            commandAddr_D <= commandAddr_F;
        end
    end



endmodule //FlowReg_D