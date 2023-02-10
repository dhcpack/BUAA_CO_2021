.text
li $5,0x3456789a
li $6,0x12349876
ori $7,$0,0xfc01
mtc0 $7,$12
mult $5,$6
beq $5,$5,next
mflo $7
xori $1,$1,1
next:
mfhi $8

.ktext 0x4180
mfc0 $1,$12
mfc0 $1,$13
mfc0 $1,$14
addi $1,$1,4
mtc0 $1,$14
li $5,0x98765432
li $6,0xfedcba98
div $5,$6
eret
mflo $7
eret