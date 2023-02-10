.ktext 0x00004180
addi $30, $30, 1
mfc0 $k0, $13
mfc0 $k1, $14
andi $k0, $k0, 0x7c
beq $k0, $0, l1
nop
addi $k1, $k1, 4
l1: andi $k1, $k1, 0xfffc
mtc0 $k1, $14
eret
