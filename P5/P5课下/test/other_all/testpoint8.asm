lui $3, 3
ori $2, 10
addu $1, $2, $3
lui $3, 3
ori $2, 10
subu $1, $3, $2
ori $4, 10
ori $5, 10
beq $4, $5 QAQ
ori $6, 10
ori $7, 100
QAQ:
ori $7, 40
sw $7, 0($7)
lw $7, 0($7)

ori $1, 10
ori $4, 2
addu $0, $1, $2
sw $1, 0($0)
lw $1, 0($0)

addi $4,$0,4
addi $1,$0,8
or $3,$0, 12
sw $3, 0($3)
lw $3, 0($3)
addu $3, $4, $1
lw $3, 0($3)
addu $0, $1, $2
sw $0, 0($0)
lw $5, 0($0)
lw $0, 0($0)

ori  $3, $0,203
addu $4,$0, 203
beq $3,$4 next
ori $5,123
ori $6,123

next:
jal end
ori $8,$31,0
ori $9,$31,0
end:
ori $10,$31,0