ori $t0,$t0,4
ori $t1,$t1,5
ori $t2,$t2,4

beq $t0,$t1,f1
addu $s0,$t0,$t2
addu $s1,$t1,$t3

f1:
subu $t4,$t1,$t0
jal f2
lui $t5,100
ori $t5,300
beq $0,$0,end

f2:
addu $t6,$ra,$t2
ori $k0,$k0,10
ori $k1,$k1,20

f3:
beq $k0,$k1,f4
addu $t6,$t5,$k0
addu $k0,$k0,$k0
j f3
subu $t7,$t6,$k1
ori $a0,$a0,10
f4:
jr $ra
sw $ra,0($0)
lw $ra,4($0)

end:
sw $t0,0($0)


