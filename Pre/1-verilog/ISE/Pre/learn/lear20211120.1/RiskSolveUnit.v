module RiskSolveUnit (
    input  wire rfwe_E, rfwe_M, rfwe_W,
    input  wire [4:0] read1addr_D, read2addr_D, read1addr_E, read2addr_E, read2addr_M, writeaddr_E, writeaddr_M, writeaddr_W,
    output reg [1:0] forward_CMPa_D, forward_CMPb_D, forward_ALUa_E, forward_ALUb_E, forward_DM_M,

    input  wire [1:0] tuse_Drs, tuse_Drt, tnew_E , tnew_M,
    output reg stall_F, stall_D, fulsh_E,

    input  wire [31:0] command_M
);

    always @( * ) begin
    //==========================================================================//CMP   M-->D  W-->D
        if(rfwe_M == 1 && read1addr_D == writeaddr_M && read1addr_D == 5'd31 && command[31:26] == `jal)begin
            forward_CMPa_D = 2'd2;
        end
        else if(rfwe_M == 1 && read1addr_D == writeaddr_M && read1addr_D != 0) begin
            forward_CMPa_D = 2'd1;
        end
        // else if(rfwe_W == 1 && read1addr_D == writeaddr_W && read1addr_D != 0) begin
        //     forward_CMPa_D = 2'd1;
        // end
        else begin
            forward_CMPa_D = 2'd0;
        end

        if(rfwe_M == 1 && read2addr_D == writeaddr_M && read2addr_D == 5'd31 && command[31:26] == `jal)begin
            forward_CMPb_D = 2'd2;
        end
        else if(rfwe_M == 1 && read2addr_D == writeaddr_M && read2addr_D != 0) begin
            forward_CMPb_D = 2'd1;
        end
        // else if(rfwe_W == 1 && read2addr_D == writeaddr_W && read2addr_D != 0) begin
        //     forward_CMPb_D = 2'd1;
        // end
        else begin
            forward_CMPb_D = 2'd0;
        end

    //==========================================================================//ALU  M-->E  W-->E
        if(rfwe_M == 1 && read1addr_E == writeaddr_M && read1addr_E == 5'd31 && command[31:26] == `jal)begin
            forward_ALUa_E = 2'd3;
        end
        else if(rfwe_M == 1 && read1addr_E == writeaddr_M && read1addr_E != 0) begin
            forward_ALUa_E = 2'd2;
        end
        else if(rfwe_W == 1 && read1addr_E == writeaddr_W && read1addr_E != 0) begin
            forward_ALUa_E = 2'd1;
        end
        else begin
            forward_ALUa_E = 2'd0;
        end

        if(rfwe_M == 1 && read2addr_E == writeaddr_M && read2addr_E == 5'd31 && command[31:26] == `jal)begin
            forward_ALUb_E = 2'd3;
        end
        else if(rfwe_M == 1 && read2addr_E == writeaddr_M && read2addr_E != 0) begin
            forward_ALUb_E = 2'd2;
        end
        else if(rfwe_W == 1 && read2addr_E == writeaddr_W && read2addr_E != 0) begin
            forward_ALUb_E = 2'd1;
        end
        else begin
            forward_ALUb_E = 2'd0;
        end

    //============================================================================//DM  W-->M
        if(rfwe_W == 1 && read2addr_M == writeaddr_W && read2addr_M != 0)begin
            forward_DM_M = 2'd1;
        end
        else begin
            forward_DM_M = 2'd0;
        end
    
    //===========================================================================//
    //=============================stall=========================================//
    //===========================================================================//
        if((read1addr_D == writeaddr_E && tnew_E > tuse_Drs) || (read2addr_D == writeaddr_E && tnew_E > tuse_Drt) && writeaddr_E != 0 && rfwe_E == 1)begin
            stall_F = 1; stall_D = 1; fulsh_E = 1;
        end
        else if((read1addr_D == writeaddr_M && tnew_M > tuse_Drs) || (read2addr_D == writeaddr_M && tnew_M > tuse_Drt) && writeaddr_M != 0 && rfwe_M == 1)begin
            stall_F = 1; stall_D = 1; fulsh_E = 1;
        end
        else begin
            stall_F = 0; stall_D = 0; fulsh_E = 0;
        end
    end


endmodule //RiskSolveUnit