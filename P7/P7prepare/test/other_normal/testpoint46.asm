ori $s0,0x7F10
ori $t1,10
sw $t1,4($s0)	#preset = 10
ori $t2,9
sw $t2,0($s0)	#ctrl[3:0] = 1001
ori $t3,0xfa01	#IM[7:2]=6'b111111, EXL=0, IE=1
mtc0 $t3,$12	#write to SR
nop
nop
nop
jal loop
nop
loop:

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