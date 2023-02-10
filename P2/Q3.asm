.data 
	array1: .space 484
	array2: .space 484
	space: .asciiz " "
	enter: .asciiz "\n"

.macro getindex(%ans,%i,%j,%col)
		mult %col, %i
		mflo %ans
		add %ans,%ans,%j
		sll %ans,%ans,2
.end_macro
		
.macro input(%num)
	li $v0,5
	syscall
	move %num,$v0
.end_macro

.macro getmatrix(%lable,%row,%col)
	li $t0,0  # row
	li $t1,0  # col
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

.macro print(%num)
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
	input($s2)
	input($s3)
	
	getmatrix(array1,$s0,$s1)
	getmatrix(array2,$s2,$s3)
	
	sub $t6,$s0,$s2
	addi $t6,$t6,1
	move $s6,$t6  # row
	sub $t7,$s1,$s3
	addi $t7,$t7,1
	move $s7,$t7  # col

li $t0,0  # firstrow
li $t1,0  # firstcol
loop2:
		li $t2,0  # addrow
		li $t3,0  # addcol
		li $s5,0  #ans
		loop3:
				getindex($t4,$t2,$t3,$s3)
				lw $t4,array2($t4)
				add $t5,$t0,$t2
				add $t6,$t1,$t3
				getindex($t7,$t5,$t6,$s1)
				lw $t7,array1($t7)
				mult $t4,$t7
				mflo $t7
				add $s5,$s5,$t7
				addi $t3,$t3,1
				bne $s3,$t3,loop3  # 列数不够直接跳回
				addi $t2,$t2,1  # 列数够了，行数加一，列数归零
				li $t3,0
				bne $s2,$t2,loop3  # 行数不够直接跳回，行数够了顺序跳出循环
		print($s5)
		printchar(space)
		addi $t1,$t1,1
		bne $t1,$s7,loop2
		addi $t0,$t0,1
		li $t1,0
		printchar(enter)
		bne $t0,$s6,loop2
		
li $v0,10
syscall
		
		
	

	
	

