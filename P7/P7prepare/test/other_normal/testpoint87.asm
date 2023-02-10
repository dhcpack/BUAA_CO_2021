.text
ori $1,$0,40
ori $2,$0,0x7f00
sw $1,4($2) #preset timer0
ori $1,$0,0x0009 #1001
sw $1,0($2) #∆Ù∂Øtimer0
ori $1,$0,0x0401 #000001 0 1 SR
mtc0 $1,$12 #SR–¥»Î
nop
nop
addu $3,$1,$2
or $3,$1,$2
j loop
nop
nop
loop:

.ktext 0x4180
mfc0 $1,$12
mfc0 $1,$13
mfc0 $1, $14
addi $1,$1,4
mtc0 $1,$14
li $5,0x98765432
li $6,0xfedcba98
div $5,$6
eret
mflo $7
eret