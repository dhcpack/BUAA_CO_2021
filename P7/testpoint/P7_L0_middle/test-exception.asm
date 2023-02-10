.text
lui $1, 0x8000
addi $1, $1, -1
ori $2, $0, 0x7777
nop
nop
nop
nop
loop: j loop
nop

.ktext 0x4180
mfc0 $7, $14
addiu $7, $7, 4
mtc0 $7, $14
eret