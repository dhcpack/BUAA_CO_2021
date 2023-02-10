// constant for CMP
`define None  4'd0
`define aequb 4'd0

// constant for ALU
`define  None    0
`define  AaddB   0
`define  AsubB   1
`define  AorB    2
`define  luiB    3
`define  A       4
`define  BsllA   5
`define  AltB    6

// constant for controller

// command_type
`define  nop       0  // nop
`define  cal       1  // addu subu ori lui  rs,rt-->rd
`define  load      2  // lw                 rs,off-->rt
`define  save      3  // sw                 rs,off  rt
`define  cmp_jump  4  // beq                rs,rt
`define  jump_jjal 5  // j jal
`define  jump_jr   6  // jr                 rs
// command
`define  nop     6'b000000  // op == 0

`define  addu    6'b100001  // op == 0
`define  subu    6'b100011  // op == 0
`define  jr      6'b001000  // op == 0
`define  sll     6'b000000  // op == 0
`define  slt     6'b101010  // op == 0

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