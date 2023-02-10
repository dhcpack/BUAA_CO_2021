.text
ori $7,$0,0xfc01
mtc0 $7,$12
li $5,0x5432
li $6,0xba98
mflo $6
nop
nop
nop

.ktext 0x4180
mult $5,$6
eret