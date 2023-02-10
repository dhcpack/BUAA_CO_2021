.data
 	array1:  .space 400
 	array2: .space 400
 	space: .asciiz " "
 	enter: .asciiz "\n"
 
.macro getindex(%ans,%i,%j)
		li $s2,8
		mult %i,$s2
		mflo %ans
		add %ans, %ans, %j
		sll %ans, %ans, 2
.end_macro

.macro input(%num)
	li $v0,5
	syscall
	move %num,$v0
.end_macro

.macro print(%num)
	li $v0,1
	move $a0,%num
	syscall
.end_macro

.text
		input($s0)  # n
		li $t1,0  # 行数
		li $t2,0  # 列数
				for_input_row_1:
						beq $t1,$s0,for_input_row_end_1
						li $t2,0
						for_input_col_1:
							beq $t2,$s0,for_input_col_end_1
							getindex($t5,$t1,$t2)
							input($t6)
							sw $t6,array1($t5)
							addi $t2,$t2,1
							j for_input_col_1
						for_input_col_end_1:
							addi $t1,$t1,1
							j for_input_row_1
					for_input_row_end_1:
		
		li $t2,0
		li $t1,0

				for_input_row_2:
						beq $t1,$s0,for_input_row_end_2
						li $t2,0
						for_input_col_2:
							beq $t2,$s0,for_input_col_end_2
							getindex($t5,$t1,$t2)
							input($t6)
							sw $t6,array2($t5)
							addi $t2,$t2,1
							j for_input_col_2
						for_input_col_end_2:
							addi $t1,$t1,1
							j for_input_row_2
					for_input_row_end_2:


	li $t0,0  # 前矩阵行
	li $t1,0  # 后矩阵列
for_row_begin:
	beq $t0,$s0,for_row_end
	li $t1,0
	for_col_begin:
		beq $t1,$s0,for_col_end
		li $t7,0
		li $a0,0
		for_mult_begin:
			beq $t7,$s0,for_mult_end
			getindex($t2,$t0,$t7)
			lw $t3,array1($t2)
			getindex($t4,$t7,$t1)
			lw $t5,array2($t4)
			mult $t3,$t5
			mflo $a1
			add $a0,$a0,$a1
			addi $t7,$t7,1
			j for_mult_begin
		for_mult_end:
		print($a0)
		la $a0,space
		li $v0,4
		syscall
		addi $t1,$t1,1
		j for_col_begin
	for_col_end:
	la $a0,enter
	li $v0,4
	syscall
	addi $t0,$t0,1
	j for_row_begin
for_row_end:
	li $v0,10
	syscall
		
		
		
			
				
		
