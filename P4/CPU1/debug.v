`timescale 1ns/1ps

`define  AaddB   0
`define  AsubB   1
`define  A|B     2
`define  luiB    3
`define  AandB   4
`define  B<<A    5


`define  addu    6'b100001  // op == 0
`define  subu    6'b100011  // op == 0
`define  ori     6'b001101  // op != 0
`define  lw      6'b100011  // op == 0
`define  sw      6'b101011  // op != 0
`define  beq     6'b000100  // op != 0
`define  lui     6'b001111  // op == 0
`define  jal     6'b000011  // op != 0
`define  jr      6'b001000  // op == 0
`define  nop     6'b000000  // op == 0


module controller (
    input  wire[31:0] instruction,
    input  wire zero,
    output wire [1:0] npcop,
    output wire [1:0] wrsel,
    output wire [1:0] wdsel,
    output wire rfwe,
    output wire [1:0] extop,
    output wire [1:0] asel,
    output wire [1:0] bsel,
    output wire [4:0] aluop,
    output wire dmwe,
    output wire [1:0] dmtype
);

    always @( * ) begin
        if(instruction == 0) begin
            npcop = 0;
            wrsel = 0;
            
        end
    end

endmodule //controller