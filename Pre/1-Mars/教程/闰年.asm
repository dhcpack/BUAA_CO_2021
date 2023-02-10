.text
	li $v0,5
	syscall
	move $t0,$v0
	
	li $t1,4
	div $t0,$t1
	mfhi $t2   # n%4
	
	li $t1,100
	div $t0,$t1
	mfhi $t3  # n%100
	
	li $t1,400
	div $t0,$t1
	mfhi $t4  # n%400
	
	if:
		bnez $t2,if2
		beqz $t3,if2
		li $a0,1
		j result
	if2:
		bnez $t4,else
		li $a0,1
		j result
	else:
		li $a0,0
	result:
	
	li $v0,1
	syscall
	
	li $v0,10
	syscall
	

		
	
	
	