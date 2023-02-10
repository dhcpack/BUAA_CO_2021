.data
	array: .word 0:100
	space: .asciiz " "

.macro getnum(%num,%index)
	sll $t9,%index,2
	lw %num,array($t9)
.end_macro

.macro setnum(%num,%index)
	sll $t9,%index,2
	sw %num,array($t9)
.end_macro

.macro loadarray
	li $t0,0  # i
	loop1:
		li $v0,5
		syscall
		setnum($v0,$t0)
		addi $t0,$t0,1
		bne $t0,$s0,loop1
.end_macro

.macro printarray
	li $t0,0  # i
	loop2:
		li $v0,1
		getnum($a0,$t0)
		syscall
		li $v0,4
		la $a0,space
		syscall
		addi $t0,$t0,1
		bne $t0,$s0,loop2
.end_macro

.text
	li $v0,5
	syscall
	move $s0,$v0
	
	loadarray
	
	li $t0,0  # i
	li $t1,0  # j
	subi $s1,$s0,1
	subi $s2,$s0,1
	loop:
		getnum($t2,$t1)
		addi $t3,$t1,1
		getnum($t4,$t3)
		sgt $t5,$t2,$t4
		beqz $t5,loopelse
		setnum($t4,$t1)
		setnum($t2,$t3)
	loopelse:	
		addi $t1,$t1,1
		bne $t1,$s1,loop
		li $t1,0
		subi $s1,$s1,1
		addi $t0,$t0,1
		bne $t0,$s2,loop
	
	printarray