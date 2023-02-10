ori $2, 10
ori $3, 10
addu $1, $2, $3
subu $4, $1, $2
addu $1, $2, $3
ori $4, 1
addu $1, $2, $3
lui $1, 10
addu $1, $2, $3
ori $2, 10
sw $1, 0($0)
addu $1, $2, $3
sw $1, 4($0)
addu $1, $2, $3
addu $4, $2, $3
beq $1, $4 QAQ
ori $t0, 10
ori $t1, 10
QAQ:
ori $t2, 10
addu $1, $2, $3

ori $2, 10
ori $0, 10
addu $1, $0, $2
addu $0, $2, $1

ori $28,$0,123
ori $21,$0,324
ori $22,$0,643
ori $23,$0,235
j begin
ori $29,$0,134
ori $29,$0,138
ori $29,$0,139
begin:

ori $3,$0,123
ori $4,$0,123
beq $4,$3,nn
addu $9,$3,$3
addu $10,$5,$5
nn:
jal next
ori $5, $0,345
ori $6,$0,789
next:
ori $4,$0,1234567