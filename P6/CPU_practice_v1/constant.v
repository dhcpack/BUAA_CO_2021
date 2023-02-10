`define lhrr  1
`define None  0

// constant for CMP
`define aequb  4'd1
`define aneqb  4'd2
`define agtz   4'd3
`define agez   4'd4
`define altz   4'd5
`define alez   4'd6

// constant for DM
`define word   3'd1
`define half   3'd2
`define uhalf  3'd3
`define byte   3'd4
`define ubyte  3'd5

// constant for ALU
`define  AaddB   1
`define  AsubB   2
`define  AltB    3
`define  uAltB   4
`define  AandB   5
`define  AorB    6
`define  AnorB   7
`define  AxorB   8
`define  BsllA   9
`define  BsrlA   10
`define  BsraA   11
`define  luiB    12


// constant for multdiv
`define  amthi   4'd1
`define  amtlo   4'd2
`define  amult   4'd3
`define  amultu  4'd4
`define  adiv    4'd5
`define  adivu   4'd6
`define  amadd   4'd7
`define  amaddu  4'd8
`define  amsub   4'd9
`define  amsubu  4'd10

// command
//===============================================
// op == 0
`define  nop     6'b000000  // op == 0
// double register
`define  add     6'b100000  // op == 0
`define  addu    6'b100001  // op == 0
`define  sub     6'b100010  // op == 0
`define  subu    6'b100011  // op == 0
`define  slt     6'b101010  // op == 0
`define  sltu    6'b101011  // op == 0
`define  and     6'b100100  // op == 0
`define  or      6'b100101  // op == 0
`define  nor     6'b100111  // op == 0
`define  xor     6'b100110  // op == 0
`define  sllv    6'b000100  // op == 0
`define  srlv    6'b000110  // op == 0
`define  srav    6'b000111  // op == 0
// shift
`define  sll     6'b000000  // op == 0
`define  srl     6'b000010  // op == 0
`define  sra     6'b000011  // op == 0
// jump register
`define  jr      6'b001000  // op == 0
// jump register and link
`define  jalr    6'b001001  // op == 0
// mult and div
`define  mfhi    6'b010000  // op == 0
`define  mflo    6'b010010  // op == 0
`define  mthi    6'b010001  // op == 0
`define  mtlo    6'b010011  // op == 0
`define  mult    6'b011000  // op == 0
`define  multu   6'b011001  // op == 0
`define  div     6'b011010  // op == 0
`define  divu    6'b011011  // op == 0

//==============================================
// op != 0
// register and imm
`define  addi    6'b001000  // op != 0
`define  addiu   6'b001001  // op != 0
`define  slti    6'b001010  // op != 0
`define  sltiu   6'b001011  // op != 0
`define  andi    6'b001100  // op != 0
`define  ori     6'b001101  // op != 0
`define  xori    6'b001110  // op != 0
`define  lui     6'b001111  // op != 0
// save and load
`define  sw      6'b101011  // op != 0
`define  sh      6'b101001  // op != 0 
`define  sb      6'b101000  // op != 0
`define  lw      6'b100011  // op != 0
`define  lh      6'b100001  // op != 0
`define  lhu     6'b100101  // op != 0
`define  lb      6'b100000  // op != 0
`define  lbu     6'b100100  // op != 0
// double register jump
`define  beq     6'b000100  // op != 0
`define  bne     6'b000101  // op != 0
// single register jump
`define  bgtz    6'b000111  // op != 0
`define  blez    6'b000110  // op != 0
// jump
`define  j       6'b000010  // op != 0
// jump and link
`define  jal     6'b000011  // op != 0
// multdiv and ALU command[31:26] == 6'b011100 judge by command[5:0]
`define  madd    6'b000000
`define  maddu   6'b000001
`define  msub    6'b000100
`define  msubu   6'b000101

//==========================================
// special
// op == 6'b000001 encoding by command[20:16]
`define  bgez    5'b00001
`define  bltz    5'b00000
//`bgtz`bltz`bltzal`bgezal
//

//special commandtype
`define  jumpandlink          5'd1
`define  calmudv              5'd2
`define  readmudv             5'd3
`define  setmudv              5'd4
`define  caldoubleregister    5'd5
`define  shift                5'd6
`define  calregisterimmsign   5'd7
`define  calregisterimmzero   5'd8
`define  save                 5'd9
`define  load                 5'd10
`define  mudvALU              5'd11

