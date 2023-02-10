.data
	A: .asciiz "A"
	B: .asciiz "B"
	C: .asciiz "C"
	arrow: .asciiz "->"
	enter: .asciiz "\n"

.macro printchar(%char)
	move $a0,%char
	li $v0,4
	syscall
.end_macro

.macro printarrow
	la $a0,arrow
	li $v0,4
	syscall
.end_macro

.macro printenter
	la $a0,enter
	li $v0,4
	syscall
.end_macro

.macro print(%from,%to)
	printchar(%from)
	printarrow
	printchar(%to)
	printenter
.end_macro

.macro save(%re)
	subi $sp,$sp,4
	sw %re,0($sp)
.end_macro

.macro load(%re)
	lw %re,0($sp)
	addi $sp,$sp,4
.end_macro

.macro saveall(%1,%2,%3,%4)
	save(%1)
	save(%2)
	save(%3)
	save(%4)
.end_macro

.macro loadall(%1,%2,%3,%4)
	load(%4)
	load(%3)
	load(%2)
	load(%1)
.end_macro

.macro exchange(%1,%2)
	move $t9,%1
	move %1,%2
	move %2,$t9
.end_macro

.text
	li $v0,5
	syscall
	move $s0,$v0  # num
	la $s1,A  # from
	la $s2,C  # to
	la $s3,B  # mid
	jal hanio
	li $v0,10
	syscall

hanio:
	li $t0,1
	bne $s0,$t0,else
	print($s1,$s3)
	print($s3,$s2)
	jr $ra
else:
	save($ra)
	
	saveall($s0,$s1,$s2,$s3)
	subi $s0,$s0,1
	jal hanio
	loadall($s0,$s1,$s2,$s3)
	print($s1,$s3)
	
	saveall($s0,$s1,$s2,$s3)
	subi $s0,$s0,1
	exchange($s1,$s2)
	jal hanio
	loadall($s0,$s1,$s2,$s3)
	print($s3,$s2)
	
	subi $s0,$s0,1
	jal hanio
	
	load($ra)
	jr $ra
	
	
	
	
	