ori $2, 10
ori $3, 5
subu $1, $3, $2
addu $4, $1, $2
subu $4, $3, $2
ori $4, 1
subu $1, $2, $3
lui $1, 10
subu $1, $2, $3
ori $2, 10
sw $1, 0($0)
subu $1, $2, $3
sw $1, 4($0)
subu $1, $2, $3
subu $4, $2, $3
beq $1, $4 QAQ
ori $t0, 10
ori $t1, 10
QAQ:
ori $t2, 10
subu $1, $2, $3

ori $2, 10
ori $0, 10
subu $1, $0, $2
subu $0, $2, $1

ori $3,$0,123
ori $5, $0, 234
ori $4,$0,123
beq $4,$3,next
addu $30,$30,$5
addu $31,$31,$5
next:
addu $t6,$6,$5

lui $3, 203
lui $4, 203
beq $3,$4 next2
ori $5,123
ori $6,123

next2:
jal end
ori $8,$31,0
ori $9,$31,0
end:
ori $10,$31,0