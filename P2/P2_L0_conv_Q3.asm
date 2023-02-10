.data 
	array1: .space 484
	array2: .space 484
	space: .asciiz " "
	enter: .asciiz "\n"

.macro getindex(%ans,%i,%j)
		li $t8, 11
		mult $t8, %i
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
	for_row_begin:
		beq $t0,%row,for_row_end
		li $t1,0
		for_col_begin:
			beq $t1,%col,for_col_end
			input($t2)
			getindex($t3,$t0,$t1)
			sw $t2,%lable($t3)
			addi $t1,$t1,1
			j for_col_begin
		for_col_end:
			addi $t0,$t0,1
			j for_row_begin
	for_row_end:
.end_macro

.macro multiply(%ans,%i,%j)
	li $t4,0  # row(array2)
	li $t5,0  # col(array2)
	li $s4,0  # res
	for_mult_row_begin:
		beq $t4,$s2,for_mult_row_end
		li $t5,0
		move $s5,%i
		move $s6,%j
		for_mult_col_begin:
			beq $s3,$t5,for_mult_col_end
			add $s5,$s5,$t4  # array1
			add $s6,$s6,$t5 # array1
			getindex($t3,$t4,$t5)
			lw $t3,array2($t3)
			getindex($t2,$s5,$s6)
			lw $t2,array1($t2)
			mult $t2,$t3
			mflo $t3
			add $s4,$s4,$t3
			addi $t5,$t5,1
			j for_mult_col_begin
		for_mult_col_end:
		addi $t4,$t4,1
		j for_mult_row_begin
	for_mult_row_end:
		move %ans,$s4
.end_macro

.macro print(%num)
		li $v0,1
		move $a0,%num
		syscall
		li $v0,4
		la $a0,space
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
	move $s6,$t6
	sub $t7,$s1,$s3
	addi $t7,$t7,1
	move $s7,$t7

li $t0,0  # firstrow
li $t1,0  # firstcol
for_first_row:
	beq $t0,$s6,for_first_row_end
	li $t1,0
	for_first_col:
		beq $t1,$s7,for_first_col_end
		li $t2,0  # addrow
		li $t3,0  # addcol
		li $s5,0  #ans
		for_multiple_row:
				beq $t2,$s2,for_multiple_rowend
				li $t3,0
				for_multiple_col:
					beq $t3,$s3,for_multiplecolend
					getindex($t4,$t2,$t3)
					lw $t4,array2($t4)
					add $t5,$t0,$t2
					add $t6,$t1,$t3
					getindex($t7,$t5,$t6)
					lw $t7,array1($t7)
					mult $t4,$t7
					mflo $t7
					add $s5,$s5,$t7
					addi $t3,$t3,1
					j for_multiple_col
				for_multiplecolend:
				addi $t2,$t2,1
				j for_multiple_row
			for_multiple_rowend:
		print($s5)
		addi $t1,$t1,1
		j for_first_col
	for_first_col_end:
	addi $t0,$t0,1
	la $a0,enter
	li $v0,4
	syscall
	j for_first_row
for_first_row_end:
	li $v0,10
	syscall
		
		
	

	
	

