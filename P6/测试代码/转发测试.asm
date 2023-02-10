lui $t0,0xffff
ori $t0,$t0,0xffff
lui $t1,10
ori $t1,$t1,100

addu $t3,$t1,$t0
subu $t4,$t0,$t3
addu $t5,$t3,$t4
sw $t5,0($0)

ori $t6,$t6,100
sw $6,4($0)
lui $t7,100
sw $t7,8($0)

jal f1
sw $ra,12($0)

f1:
jal f2
addu $s0,$t7,$ra

f2:
jal f3
sw $ra,24($0)
addu $k0,$ra,5


f3:
sw $s2,16($0)
ori $s3,100
ori $s4,100
beq $s3,$s4,f4
ori $s5,$s5,235
ori $s6,$s6,794

f4:
sw $s6,20($0)
