jal QAQ
subu $31, $0, $31
ori $2, 1
QAQ:
ori $1, 1

jal QAQ2
ori $31, 10
QAQ2:

jal QAQ3
lui $31, 10
QAQ3:
ori $10, 4
jal QAQ4
sw $31, 0($10)
QAQ4:
lw $t0, 0($10)

jal QAQ5
lw $t0, 0($10)
QAQ5:
ori $t1, 0

jal QAQ6
addu $0, $31, $31
j endend
nop
QAQ6:
jr $ra
endend:

ori $a0,$0,1999
ori $a1,$a0,111
lui $a2,12345
lui $a3,0xffff
lui $t0,0xffff
beq $a3,$t0,eee
addu $s7,$0,$a0
nop
ori $a3,$a3,0xffff
addu $s0,$a0,$a1
addu $s1,$a3,$a3
addu $s2,$a3,$s0
beq $s2,$s3,eee
subu $s0,$a0,$s2
subu $s1,$a3,$a3
eee:
subu $s2,$a3,$a0
subu $s3,$s2,$s1
ori $t0,$0,0x0000
sw $a0,0($t0)
nop
sw $a1,4($t0)
sw $s0,8($t0)
sw $s1,12($t0)
sw $s2,16($t0)
sw $s5,20($t0)
lw $t1,20($t0)
lw $t7,0($t0)
lw $t6,20($t0)
sw $t6,24($t0)
lw $t5,12($t0)
jal end
ori $t0,$t0,1
ori $t1,$t1,1
ori $t2,$t2,2
beq $t0,$t2,eee
lui $t3,1111
jal out
end:
addu $t0,$t0,$t7
jr $ra
out:
addu $t0,$t0,$t3
ori $t2,$t0,0
beq $t0,$t2,qqq
lui $v0,10
qqq:
lui $v0,11
j www
nop
www:
lui $ra,100

ori $a0,$0,111
jal endendendend
nop
nop
nop
j out2
nop
endendendend:
jr $ra
nop
out2:
ori $a1,$0,10

addu $a0,$0,$0
ori $t1,$0,1
ori $t2,$0,2
ori $t3,$0,3
addu $t4,$t1,$t2
subu $t5,$t1,$t2
jal out3
addu $t3,$t4,$0
out3:
ori $a0,$0,11
beq $a0,$a1,end1
lui $a2,111
jr $ra
ori $a1,$0,11
end1:
nop

ori $a1,$0,111
ori $a2,$0,112
beq $a1,$a2,end46
ori $a1,$a1,111
beq $a1,$a1,out345
nop
end46:
nop
out345:
addu $a0,$a0,$a1

ori $a0,$a0,110
ori $a1,$a0,111
ori $a2,$a0,112
lui $a3,0xffff
lui $t0,1
addu $a2,$a0,$a1
subu $a2,$a1,$a0
jal loop
addu $t2,$s0,$a0
j end123
subu $t2,$t2,$t2
loop:
subu $a0,$a0,$t2
jr $ra
lui $a0,111
subu $a0,$a0,$a2
addu $a2,$a2,$a0
ori $a0,$0,1
ori $a1,$a0,2
ori $a2,$a1,3
beq $a2,$a1,end123
addu $a0,$a0,$a0
addu $a0,$a0,$a0
end123:

addi $1,$0,0
addi $2,$0,0
addi $3,$0,0
addi $4,$0,0
addi $5,$0,0
addi $6,$0,0
addi $7,$0,0
addi $8,$0,0
addi $9,$0,0
addi $10,$0,0
addi $11,$0,0
addi $12,$0,0
addi $13,$0,0
addi $14,$0,0
addi $15,$0,0
addi $16,$0,0
addi $17,$0,0
addi $18,$0,0
addi $19,$0,0
addi $20,$0,0
addi $21,$0,0
addi $22,$0,0
addi $23,$0,0
addi $24,$0,0
addi $25,$0,0
addi $26,$0,0
addi $27,$0,0
addi $28,$0,0
addi $29,$0,0
addi $30,$0,0

ori $a1,$0,112
ori $a2,$a0,116
addu $0,$a1,$a2
subu $a2,$a1,$0

ori $31,4
addu $30,$31,$31
ori $29,$30,0x12
ori $28,$30,0x16
ori $27,$30,0x20
ori $26,$30,0x4
addu $25,$26,$31
subu $24,$25,$31
subu $23,$25,$24
subu $22,$25,$23
subu $17,$25,$2
addu $21,$22,$31
subu $20,$0,$21
subu $19,$20,$21
subu $18,$19,$21

subu $16,$18,$21
addu $30,$16,$26
sw $30,0($0)
sw $30,4($0)
sw $30,8($0)
sw $30,12($0)
addu $15,$30,$0
beq $15,$30,beq1
nop
beq2:ori $1,1
addu $2,$1,$0
nop
nop
beq $2,$1,beq3
nop
beq1:ori $1,2
addu $2,$1,$0
nop
beq $2,$1,beq2
nop
beq3:ori $1,3
addu $4,$1,$0
nop
nop

nop
beq $4,$1,beq4
nop
addu $5,$5,$5
beq4:
ori $5,0x3288
ori $6,4
addu $7,$5,$6
jr $7
nop
addu $5,$5,$5
ori $5,0x3278
addu $8,$5,$6
nop
nop
jr $8
nop
addu $5,$5,$5
ori $5,0x3278
addu $9,$5,$6
nop
nop
nop
jr $9

nop 
addu $5,$5,$5
ori $6,$0,5
subu $15,$15,$15
ori $11,4
addu $15,$0,$11
sw $8,0($15)
sw $8,4($15)
sw $8,8($15)
ori $4,$0,0
ori $3,4
addu $4,$4,$3
lw $5,0($4)
lw $6,4($4)
lw $7,8($4)

ori $t1,$t1,1
ori $t2,$t2,2
addu $t0,$t1,$t2
nop
sw $t0,0($0)

ori $a1,$0,111
ori $a2,$a0,112
addu $0,$a1,$a2
subu $a2,$a1,$0