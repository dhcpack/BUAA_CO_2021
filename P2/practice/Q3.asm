.data 
	array1: .word 0:100
	array2: .word 0:100
	space: .asciiz " "
	enter: .asciiz "\n"

.macro getindex(%ans,%i,%j,%col)
	mult %i,%col
	mflo %ans
	add %ans,%ans,%j
	sll %ans,%ans,2
.end_macro

.macro getnum(%num,%i,%j,%col,%lable)
	getindex($t9,%i,%j,%col)
	lw %num,%lable($t9)
.end_macro

.macro input(%num)
	li $v0,5
	syscall
	move %num,$v0
.end_macro

.macro readmatrix(%row,%col,%lable)
	li $t0,0  # i
	li $t1,0  # j
	loop1:
		input($t2)
		getindex($t3,$t0,$t1,%col)
		sw $t2,%lable($t3)
		addi $t1,$t1,1
		bne $t1,%col,loop1
		li $t1,0
		addi $t0,$t0,1
		bne $t0,%row,loop1
.end_macro

.macro printnum(%num)
		li $v0,1
		move $a0,%num
		syscall
.end_macro

.macro printchar(%char)
	li $v0,4
	la $a0,%char
	syscall
.end_macro


.text
	input($s0)
	input($s1)
	input($s2)  # kerx
	input($s3)  # kery
	
	readmatrix($s0,$s1,array1)
	readmatrix($s2,$s3,array2)
	
	sub $s4,$s0,$s2
	addi $s4,$s4,1  # startx
	sub $s5,$s1,$s3
	addi $s5,$s5,1  # starty
	
	li $t0,0  # i
	li $t1,0  # j
	li $t2,0  # m
	li $t3,0  # n
	
	li $s6,0  # ans

	loop3:
		add $t4,$t0,$t2
		add $t5,$t1,$t3
		getnum($t6,$t4,$t5,$s1,array1)
		getnum($t7,$t2,$t3,$s3,array2)
		
		multu $t6,$t7
		mflo $t6
		add $s6,$s6,$t6
		
		addi $t2,$t2,1
		bne $t2,$s2,loop3
		li $t2,0
		addi $t3,$t3,1
		bne $t3,$s3,loop3
		
		printnum($s6)
		printchar(space)
		li $s6,0
		li $t3,0
		
		addi $t1,$t1,1
		bne $t1,$s5,loop3
		printchar(enter)
		li $t1,0
		addi $t0,$t0,1
		bne $t0,$s4,loop3

#.macro getindex(%ans,%i,%j,%col)		
#.macro getnum(%num,%i,%j,%col,%lable)
#.macro input(%num)
#.macro readmatrix(%row,%col,%lable)
#.macro printnum(%num)
#.macro printchar(%char)