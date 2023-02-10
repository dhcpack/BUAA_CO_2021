.data
array1: .word 0:64
array2: .word 0:64
space: .asciiz " "
enter: .asciiz "\n"

.macro readnum(%num)
	li $v0,5
	syscall
	move %num,$v0
.end_macro

.macro getindex(%ans,%i,%j)
	multu %i,$s0
	mflo %ans
	add %ans,%ans,%j
	sll %ans,%ans,2
.end_macro

.macro readmatrix(%lable)
	li $t0,0  # i
	li $t1,0  # j
	loop1:	
		getindex($t2,$t0,$t1)
		readnum($t3)
		sw $t3,%lable($t2)
		addi $t1,$t1,1
		bne $t1,$s0,loop1
		li $t1,0
		addi $t0,$t0,1
		bne $t0,$s0,loop1
.end_macro

.macro getnum(%ans,%i,%j,%lable)
	getindex($t9,%i,%j)
	lw %ans,%lable($t9)
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
	readnum($s0)	
	readmatrix(array1)
	readmatrix(array2)
	
	li $t0,0  # i
	li $t1,0  # j
	li $t2,0  # k
	

loop2:  # 矩阵乘法需要三个for循环，前两个连在一起可以合并
	li $s1,0  # num
	loop3:

	getnum($t3,$t0,$t2,array1)  # array[i][k]
	getnum($t4,$t2,$t1,array2)  # array[k][j]
	mult $t3,$t4
	mflo $t3
	add $s1,$s1,$t3
	addi $t2,$t2,1
	bne $t2,$s0,loop3
	
	printnum($s1)
	printchar(space)
	li $t2,0
	addi $t1,$t1,1
	bne $t1,$s0,loop2
	
	printchar(enter)
	li $t1,0
	addi $t0,$t0,1
	bne $t0,$s0,loop2
		
#.macro readnum(%num)
#.macro getindex(%ans,%i,%j)
#.macro getnum(%ans,%i,%j,%lable)
#.macro readmatrix(%lable)
#.macro printnum(%num)
#.macro printchar(%char)	
