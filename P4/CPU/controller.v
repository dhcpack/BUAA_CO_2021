`timescale 1ns/1ps

`define  None    0
`define  AaddB   0
`define  AsubB   1
`define  AorB    2
`define  luiB    3
`define  A       4
`define  BsllA   5
`define  AltB    6

`define  nop     6'b000000  // op == 0

`define  addu    6'b100001  // op == 0
`define  subu    6'b100011  // op == 0
`define  jr      6'b001000  // op == 0
`define  sll     6'b000000  // op == 0
`define  slt     6'b101010  // op == 0
`define  jalr    6'b001001  // op == 0

`define  ori     6'b001101  // op != 0
`define  lw      6'b100011  // op != 0
`define  sw      6'b101011  // op != 0
`define  beq     6'b000100  // op != 0
`define  lui     6'b001111  // op != 0
`define  jal     6'b000011  // op != 0
`define  j       6'b000010  // op != 0
`define  sh      6'b101001  // op != 0 
`define  lb      6'b100000  // op != 0
`define  bgtz    6'b000111  // op != 0


module controller (
    input  wire[31:0] command,
    output reg  [4:0] npcop,
    output reg  [1:0] wrsel,
    output reg  [1:0] wdsel,
    output reg  rfwe,
    output reg  [1:0] extop,
    output reg  [1:0] asel,
    output reg  [1:0] bsel,
    output reg  [4:0] aluop,
    output reg  dmwe,
    output reg  [1:0] dmtype
);

    initial begin
        npcop = 0;     wrsel = 0;
        wdsel = 0;     rfwe = 0;
        extop = 0;     asel = 0;
        bsel = 0;      aluop = 0;
        dmwe = 0;      dmtype = 0;
    end

    always @( command ) begin
        if(command == 0) begin  // nop
            npcop = 0;     wrsel = 0;
            wdsel = 0;     rfwe = 0;
            extop = 0;     asel = 0;
            bsel = 0;      aluop = `None;
            dmwe = 0;      dmtype = 0;
        end

        else if(command[31:26] == 6'd0) begin  // Rtype  op = 0
            if(command[5:0] == `addu) begin
                npcop = 0;     wrsel = 1;
                wdsel = 0;     rfwe = 1;
                extop = 0;     asel = 0;
                bsel = 0;      aluop = `AaddB;
                dmwe = 0;      dmtype = 0;
            end

            if(command[5:0] == `subu) begin
                npcop = 0;     wrsel = 1;
                wdsel = 0;     rfwe = 1;
                extop = 0;     asel = 0;
                bsel = 0;      aluop = `AsubB;
                dmwe = 0;      dmtype = 0;
            end

            if(command[5:0] == `jr) begin
                npcop = 3;     wrsel = 0;
                wdsel = 0;     rfwe = 0;
                extop = 0;     asel = 0;
                bsel = 0;      aluop = `A;
                dmwe = 0;      dmtype = 0;
            end
				
				if(command[5:0] == `sll) begin
                npcop = 0;     wrsel = 1;
                wdsel = 0;     rfwe = 1;
                extop = 0;     asel = 1;
                bsel = 0;      aluop = `BsllA;
                dmwe = 0;      dmtype = 0;
            end
				
				if(command[5:0] == `slt) begin
                npcop = 0;     wrsel = 1;
                wdsel = 0;     rfwe = 1;
                extop = 0;     asel = 0;
                bsel = 0;      aluop = `AltB;
                dmwe = 0;      dmtype = 0;
            end
				
				if(command[5:0] == `jalr) begin
                npcop = 3;     wrsel = 1;
                wdsel = 2;     rfwe = 1;
                extop = 0;     asel = 0;
                bsel = 0;      aluop = `A;
                dmwe = 0;      dmtype = 0;
            end
        end
    // ======================================================================================

        else if(command[31:26] != 6'd0)begin  // Jtype or Itype op != 0
            if(command[31:26] == `ori) begin
                npcop = 0;     wrsel = 0;
                wdsel = 0;     rfwe = 1;
                extop = 0;     asel = 0;
                bsel = 1;      aluop = `AorB;
                dmwe = 0;      dmtype = 0;
            end

            if(command[31:26] == `lw) begin
                npcop = 0;     wrsel = 0;
                wdsel = 1;     rfwe = 1;
                extop = 1;     asel = 0;
                bsel = 1;      aluop = `AaddB;
                dmwe = 0;      dmtype = 0;
            end

            if(command[31:26] == `sw) begin
                npcop = 0;     wrsel = 0;
                wdsel = 0;     rfwe = 0;
                extop = 1;     asel = 0;
                bsel = 1;      aluop = `AaddB;
                dmwe = 1;      dmtype = 0;
            end

            if(command[31:26] == `beq) begin
                npcop = 1;     wrsel = 0;
                wdsel = 0;     rfwe = 0;
                extop = 1;     asel = 0;
                bsel = 0;      aluop = `None;
                dmwe = 0;      dmtype = 0;
            end

            if(command[31:26] == `lui) begin
                npcop = 0;     wrsel = 0;
                wdsel = 0;     rfwe = 1;
                extop = 0;     asel = 0;
                bsel = 1;      aluop = `luiB;
                dmwe = 0;      dmtype = 0;
            end

            if(command[31:26] == `jal) begin
                npcop = 2;     wrsel = 2;
                wdsel = 2;     rfwe = 1;
                extop = 0;     asel = 0;
                bsel = 0;      aluop = `None;
                dmwe = 0;      dmtype = 0;
            end
				
				if(command[31:26] == `j) begin
                npcop = 2;     wrsel = 0;
                wdsel = 0;     rfwe = 0;
                extop = 0;     asel = 0;
                bsel = 0;      aluop = `None;
                dmwe = 0;      dmtype = 0;
            end
				
				if(command[31:26] == `sh) begin
                npcop = 0;     wrsel = 0;
                wdsel = 0;     rfwe = 0;
                extop = 1;     asel = 0;
                bsel = 1;      aluop = `AaddB;
                dmwe = 1;      dmtype = 1;
            end
				
				if(command[31:26] == `lb) begin
                npcop = 0;     wrsel = 0;
                wdsel = 1;     rfwe = 1;
                extop = 1;     asel = 0;
                bsel = 1;      aluop = `AaddB;
                dmwe = 0;      dmtype = 2;
            end
				
				if(command[31:26] == `bgtz) begin
                npcop = 4;     wrsel = 0;
                wdsel = 0;     rfwe = 0;
                extop = 1;     asel = 0;
                bsel = 0;      aluop = `None;
                dmwe = 0;      dmtype = 0;
            end
        end

        else begin
            npcop = 0;     wrsel = 0;
            wdsel = 0;     rfwe = 0;
            extop = 0;     asel = 0;
            bsel = 0;      aluop = `None;
            dmwe = 0;      dmtype = 0;
        end
    end


endmodule //controller