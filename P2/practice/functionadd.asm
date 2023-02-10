.macro exit(%num)
	li $v0,1
	move $a0,%num
	syscall
	li $v0,10
	syscall
.end_macro

.text
	li $v0,5
	syscall
	move $s0,$v0
	li $t0,1
	beq $s0,$t0,true
	li $t0,2
	beq $s0,$t0,false
	
	li $t0,2
	for:
		sgt $t9,$s0,$t0
		beqz $t9,false
		divu $s0,$t0
		mfhi $t1
		beqz $t1,true
		addi $t0,$t0,1
		j for

true:
	exit($0)
false:
	li $t0,1
	exit($t0)
	
	
	