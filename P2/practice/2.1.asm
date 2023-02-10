.macro input(%ans)
	li $v0,5
	syscall
	move %ans,$v0
.end_macro

.macro print(%ans)
	li $v0,1
	move $a0,%ans
	syscall
.end_macro

.text
	input($s0)
	input($s1)
	
	loop:
		divu $s0,$s1
		move $s0,$s1
		mfhi $s1
		bnez $s1,loop
	
	print($s0)
	
	li $v0,10
	syscall