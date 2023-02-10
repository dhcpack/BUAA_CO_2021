lui $t0 0xf65b
ori $t1 $0 0xabfe
subu $t2 $t0 $t1
lui $t3 0x49bf
addu $t4 $t1 $t3
sra $t5 $t2 10

ori $t1,0
ori $t2,1
lui $t3,0xffff

movz $t4,$t2,$t1
movz $t5,$t2,$t2
movz $t6,$t2,$t3

#test cal_r
ori $1,$1,213
ori $2,$2,343
mult $1,$2
mfhi $3
mflo $4
mthi $1
mfhi $1
mflo $2
mtlo $2

ori $1,0x00ff
lui $2,0xff00
mult $1,$2
mfhi $3
mflo $4
addu $1,$1,$2
addiu $2,$2,1
multu $1,$2
mflo $5
mflo $6
div $1,$2
divu $1,$2
divu $2,$1
mthi $1
mtlo $2
mfhi $2
mflo $1

ori $1,123
addu $2,$1,$0
mthi $2
mfhi $3
ori $4,$3,998
mtlo $4
mflo $5
add $6,$4,$5
sw $6,0
lw $7,0
mthi $7
mfhi $8
jal loop
mtlo $31
ori $5,123
loop:
mflo $1
jal loop1
ori $3,7366
loop1:
mthi $31
mfhi $2