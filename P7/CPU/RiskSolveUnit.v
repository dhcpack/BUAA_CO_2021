`include "constant.v"

// `define  jumpandlink  1
// `define  calmudv      2
// `define  readmudv     3

module RiskSolveUnit (
    input  wire rfwe_E, rfwe_M, rfwe_W, busy_E, startmd_E,
    input  wire [4:0] read1addr_D, read2addr_D, read1addr_E, read2addr_E, read2addr_M, writeaddr_E, writeaddr_M, writeaddr_W,
    input  wire [4:0] commandtype_D, commandtype_E, commandtype_M, commandtype_W,
    output reg [1:0] forward_CMPa_D, forward_CMPb_D, forward_ALUa_E, forward_ALUb_E, forward_DM_M,

    input  wire [2:0] tuse_Drs, tuse_Drt, tnew_E , tnew_M,
    output reg stall_F, stall_D, flush_E,

    input  wire [31:0] command_D, command_E, command_M, command_W
);

    always @( * ) begin
	 //==========================================================================// RF    
    //==========================================================================// CMP   M-->D
        if(rfwe_M == 1 && read1addr_D == writeaddr_M && read1addr_D != 0 && commandtype_M == `jumpandlink)begin
            forward_CMPa_D = 2'd2;
        end
        else if(rfwe_M == 1 && read1addr_D == writeaddr_M && read1addr_D != 0) begin
            forward_CMPa_D = 2'd1;
        end
        // else if(rfwe_W == 1 && read1addr_D == writeaddr_W && read1addr_D != 0) begin  // RF forwarding
        //     forward_CMPa_D = 2'd1;
        // end
        else begin
            forward_CMPa_D = 2'd0;
        end

        if(rfwe_M == 1 && read2addr_D == writeaddr_M && read2addr_D != 0 && commandtype_M == `jumpandlink)begin
            forward_CMPb_D = 2'd2;
        end
        else if(rfwe_M == 1 && read2addr_D == writeaddr_M && read2addr_D != 0) begin
            forward_CMPb_D = 2'd1;
        end
        // else if(rfwe_W == 1 && read2addr_D == writeaddr_W && read2addr_D != 0) begin  // RF forwarding 
        //     forward_CMPa_D = 2'd1; 
        //     forward_CMPb_D = 2'd1;
        // end
        else begin
            forward_CMPb_D = 2'd0;
        end

    //==========================================================================//ALU  M-->E  W-->E
        if(rfwe_M == 1 && read1addr_E == writeaddr_M && read1addr_E != 0 && commandtype_M == `jumpandlink)begin
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

        if(rfwe_M == 1 && read2addr_E == writeaddr_M && read2addr_E != 0 && commandtype_M == `jumpandlink)begin
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
    // judge E and M
        if(command_E[31:21] == `mtc0 && command_E[15:11] == 5'd14 && command_D == `eret)begin  // eret forwarding
            stall_F = 1; stall_D = 1; flush_E = 1;
        end
        else if((busy_E == 1|| startmd_E == 1) && (commandtype_D == `calmudv || commandtype_D == `readmudv || commandtype_D == `setmudv))begin
            stall_F = 1; stall_D = 1; flush_E = 1;
        end
        else if((read1addr_D == writeaddr_E && tnew_E > tuse_Drs) || (read2addr_D == writeaddr_E && tnew_E > tuse_Drt) && writeaddr_E != 0 && rfwe_E == 1)begin
            stall_F = 1; stall_D = 1; flush_E = 1;
        end
        else if((read1addr_D == writeaddr_M && tnew_M > tuse_Drs) || (read2addr_D == writeaddr_M && tnew_M > tuse_Drt) && writeaddr_M != 0 && rfwe_M == 1)begin
            stall_F = 1; stall_D = 1; flush_E = 1;
        end
        else begin
            stall_F = 0; stall_D = 0; flush_E = 0;
        end
    end


endmodule //RiskSolveUnit


// if(command_E == `lhrr && ((tnew_E > tuse_Drs && (read1addr_D == 5'd31 || read1addr_D == writeaddr_E)) || (tnew_E > tuse_Drt && (read2addr_D == 5'd31 || read2addr_D == writeaddr_E))))begin
//     stall_F = 1; stall_D = 1; flush_E = 1;
// end
// else if(command_M == `lhrr && ((tnew_M > tuse_Drs && (read1addr_D == 5'd31 || read1addr_D == writeaddr_M)) || (tnew_M > tuse_Drt && (read2addr_D == 5'd31 || read2addr_D == writeaddr_M))))begin
//     stall_F = 1; stall_D = 1; flush_E = 1;
// end