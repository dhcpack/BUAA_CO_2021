.text
li $5,0x3456789a
li $6,0x12349876
ori $7,$0,0xfc01
mtc0 $7,$12
mult $5,$6
nop
beq $5,$5,next
mflo $7
xori $1,$1,1
next:
mfhi $8

.ktext 0x4180
mfc0 $8,$12
mfc0 $8,$13
mfc0 $8,$14
addi $8,$8,14
xori $8,$5,0x2347
beq $0,$0,then
nop
xori $1,$1,1
then:
mtc0 $0,$14
nop
nop
nop
li $7,0x3004
mtc0 $7,$14
eret