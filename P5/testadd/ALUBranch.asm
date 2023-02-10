ori $t1,10
ori $t2,15
ori $t4,20
ori $t5,5
addu $t0,$t1,$t2
addu $t3,$t4,$t5
beq $t0,$t3,lable
ori $t6,10
ori $t7,20
lable:
	sw $t6,0($0)
	sw $t7,4($0)