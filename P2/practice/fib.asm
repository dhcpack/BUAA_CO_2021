.macro save(%re)
	subi $sp,$sp,4
	sw %re,0($sp)
.end_macro

.macro load(%re)
	lw %re,0($sp)
	addi $sp,$sp,4
.end_macro

.text
	li $v0,5
	syscall
	move $a0,$v0
	jal fib
	move $a0,$v0
	li $v0,1
	syscall
	li $v0,10
	syscall

fib:
	li $t0,1
	sgt $t1,$a0,$t0
	bnez $t1,else
	li $v0,1
	jr $ra
else:	
	save($ra)
	save($a0)
	li $t0,0  # res
	subi $a0,$a0,1
	jal fib
	move $t0,$v0
	load($a0)
	save($t0)
	subi $a0,$a0,2
	jal fib
	load($t0)
	add $v0,$v0,$t0
	load($ra)
	jr $ra





li $t0,1  # fib0
li $t1,1  # fib1