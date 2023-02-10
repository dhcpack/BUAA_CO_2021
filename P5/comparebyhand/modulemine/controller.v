`include "constant.v"

module controller (
    input  wire [31:0] command,
    output reg rfwe_D, dmwe_D,
    output reg [1:0] wrsel_D, wdsel_D, extop, asel_D, bsel_D, dmtype_D, 
    output reg [2:0] npcop, tuse_Drs, tuse_Drt, tnew_D,
    output reg [3:0] cmpop,
    output reg [4:0] aluop_D
);

    initial begin
        npcop = 0;     wrsel_D = 0;
        wdsel_D = 0;   rfwe_D = 0;
        extop = 0;     cmpop = 0; 
        asel_D = 0;    bsel_D = 0;
        aluop_D = 0;   dmwe_D = 0;
        dmtype_D = 0;  tnew_D = 0;
        tuse_Drs = 5;  tuse_Drt = 5;
    end

    always @( * ) begin
        if(command == 0)begin  // nop
            npcop = 0;         wrsel_D = 0;
            wdsel_D = 0;       rfwe_D = 0;
            extop = 0;         cmpop = `None; 
            asel_D = 0;        bsel_D = 0;
            aluop_D = `None;   dmwe_D = 0;
            dmtype_D = 0;      tnew_D = 0;
            tuse_Drs = 5;      tuse_Drt = 5;
        end
        
        else if(command[31:26] == 6'd0) begin  // Rtype op == 0
            if(command[5:0] == `addu)begin
                npcop = 0;         wrsel_D = 1;
                wdsel_D = 0;       rfwe_D = 1;
                extop = 0;         cmpop = `None; 
                asel_D = 0;        bsel_D = 0;
                aluop_D = `AaddB;  dmwe_D = 0;
                dmtype_D = 0;      tnew_D = 2; 
                tuse_Drs = 1;      tuse_Drt = 1;
            end

            if(command[5:0] == `subu)begin
                npcop = 0;         wrsel_D = 1;
                wdsel_D = 0;       rfwe_D = 1;
                extop = 0;         cmpop = `None; 
                asel_D = 0;        bsel_D = 0;
                aluop_D = `AsubB;  dmwe_D = 0;
                dmtype_D = 0;      tnew_D = 2;
                tuse_Drs = 1;      tuse_Drt = 1;
            end

            if(command[5:0] == `jr)begin
                npcop = 3;         wrsel_D = 0;
                wdsel_D = 0;       rfwe_D = 0;
                extop = 0;         cmpop = `None; 
                asel_D = 0;        bsel_D = 0;
                aluop_D = `None;   dmwe_D = 0;
                dmtype_D = 0;      tnew_D = 0;
                tuse_Drs = 0;      tuse_Drt = 0;
            end
        end

    // ===========================================================

        else if(command[31:26] != 6'd0) begin   // Jtype and Itype  op != 0
            if(command[31:26] == `ori)begin
                npcop = 0;         wrsel_D = 0;
                wdsel_D = 0;       rfwe_D = 1;
                extop = 0;         cmpop = `None; 
                asel_D = 0;        bsel_D = 1;
                aluop_D = `AorB;   dmwe_D = 0;
                dmtype_D = 0;      tnew_D = 2;
                tuse_Drs = 1;      tuse_Drt = 5;
            end

            if(command[31:26] == `lui)begin
                npcop = 0;         wrsel_D = 0;
                wdsel_D = 0;       rfwe_D = 1;
                extop = 0;         cmpop = `None; 
                asel_D = 0;        bsel_D = 1;
                aluop_D = `luiB;   dmwe_D = 0;
                dmtype_D = 0;      tnew_D = 2;
                tuse_Drs = 1;      tuse_Drt = 5;
            end

            if(command[31:26] == `lw)begin
                npcop = 0;         wrsel_D = 0;
                wdsel_D = 1;       rfwe_D = 1;
                extop = 1;         cmpop = `None; 
                asel_D = 0;        bsel_D = 1;
                aluop_D = `AaddB;   dmwe_D = 0;
                dmtype_D = 0;      tnew_D = 3;
                tuse_Drs = 1;      tuse_Drt = 2;
            end

            if(command[31:26] == `sw)begin
                npcop = 0;         wrsel_D = 0;
                wdsel_D = 0;       rfwe_D = 0;
                extop = 1;         cmpop = `None; 
                asel_D = 0;        bsel_D = 1;
                aluop_D = `AaddB;   dmwe_D = 1;
                dmtype_D = 0;      tnew_D = 0;
                tuse_Drs = 1;      tuse_Drt = 2;
            end

            if(command[31:26] == `beq)begin
                npcop = 1;         wrsel_D = 0;
                wdsel_D = 0;       rfwe_D = 0;
                extop = 1;         cmpop = `aequb; 
                asel_D = 0;        bsel_D = 0;
                aluop_D = `None;   dmwe_D = 0;
                dmtype_D = 0;      tnew_D = 0;
                tuse_Drs = 0;      tuse_Drt = 0;
            end

            if(command[31:26] == `j)begin
                npcop = 2;         wrsel_D = 0;
                wdsel_D = 0;       rfwe_D = 0;
                extop = 0;         cmpop = `None; 
                asel_D = 0;        bsel_D = 0;
                aluop_D = `None;   dmwe_D = 0;
                dmtype_D = 0;      tnew_D = 0;
                tuse_Drs = 5;      tuse_Drt = 5;
            end

            if(command[31:26] == `jal)begin
                npcop = 2;         wrsel_D = 2;
                wdsel_D = 2;       rfwe_D = 1;
                extop = 0;         cmpop = `None; 
                asel_D = 0;        bsel_D = 0;
                aluop_D = `None;   dmwe_D = 0;
                dmtype_D = 0;      tnew_D = 0;
                tuse_Drs = 5;      tuse_Drt = 5;
            end
        end

        else begin
            npcop = 0;     wrsel_D = 0;
            wdsel_D = 0;   rfwe_D = 0;
            extop = 0;     cmpop = 0; 
            asel_D = 0;    bsel_D = 0;
            aluop_D = 0;   dmwe_D = 0;
            dmtype_D = 0;  tnew_D = 0;
            tuse_Drs = 5;  tuse_Drt = 5;
        end
    end

endmodule //controller