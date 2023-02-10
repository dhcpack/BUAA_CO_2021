ori $3,$0,123
addu $4,$0,$3
beq $4,$3,next1
nop
ori $9,$0,99
next1:
addu $5,$4,$0
ori $6,$0,123
beq $6,$5,next2
nop
ori $9,$0,88
next2:
sw $6,0($0)
lw $7,0($0)
lw $8,0($0)
beq $7,$8,next3
nop
ori $9,$0,77
next3:
ori $9,$0,100

ori $8,$0,123
sw $8,0($0)
lw $9,0($0)
addu $10,$9,$9
lw $10,0($0)
ori $11,$10,0
sw $11,1024($0)

ori $3,$0,12
sw $3,0($0)
lw $4,0($0)
sw $3,0($4)
lw $5,0($0)
lw $6,0($4)

ori $3,$0,16
sw $3,0($0)
lw $4,0($0)
sw $4,4($0)
lw $6,4($0)
sw $6,8($0)
lw $7,8($0)
sw $7,12($0)
lw $8,12($0)
sw $8,0($8)
lw $9,0($8)
sw $9,4($9)
lw $10,4($9)
addu $11,$10,$10

ori $3, $0,12
ori $4,$0,123
sw $4,0($3)
addu $5,$4,$0
sw $5,4($3)

ori $3,$0,123
ori $4,$3,0
addu $5,$4,$3
addu $6,$5,$4
addu $7,$5,$6
subu $8,$7,$6

ori $t1,$t1,4
ori $t2,$t2,8
sw $t2,0($t1)

lw $t2,0($t1)
addu $t1,$t1,$t2

lw $t2,0($t1)
addu $t1,$t3,$t2

addu $t3,$t4,$t5
sw $t3,0($t1)

ori $t3,$t3,12
sw $t3,0($t2)
lw $t4,0($t2)

subu $1,$1,$1
ori $12,$12,5
ori $1,$1,16
addu $16,$12,$1
addu $18,$16,$1
sw $18,16($1)