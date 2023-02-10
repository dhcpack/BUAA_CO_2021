.text
li $4,0x98765432
li $6,0xfedcba98
addu $5,$4,$6
add $4,$5,$6

.ktext 0x4180
mfc0 $8,$12
mfc0 $8,$13
mfc0 $8,$14
addi $8,$8,14
xori $8,$5,0x2347
beq $0,$0,next
nop
xori $1,$1,1
next:
mtc0 $0,$14
nop
nop
nop
li $7,0x3004
mtc0 $7,$14
eret