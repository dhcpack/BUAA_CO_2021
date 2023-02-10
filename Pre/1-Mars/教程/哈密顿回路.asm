.data
		array: .space 400
		flag: .space 40

.macro getarrayindex(%ans,%row,%col)
		li $s5,10
		mult %row,$s5
		mflo %ans
		add %ans,%ans,%col
		sll %ans,%ans,2
	.end_macro
	
.macro getflagindex(%ans,%num)
		sll %ans,%num,2
	.end_macro

.macro input(%ans)
		li $v0,5
		syscall
		move %ans,$v0
	.end_macro

.macro exit
		li $a0,1
		li $v0,1
		syscall
		li $v0,10
		syscall
	.end_macro
		

# $s0=n		
.text

inputarray:
		li $t6,1
		li $t7,0  # 定义constant
		
		input($s0)  # $s0=n
		
		input($t0) # $t0=m
		
		li $t1,0  # 循环变量$t1
		for_input_begin:
				beq $t1,$t0,for_input_end
				
				input($t2)
				input($t3)  #a,b
				
				getarrayindex($t4,$t2,$t3)
				sw $t6,array($t4)
				getarrayindex($t4,$t3,$t2)
				sw $t6,array($t4)
				
				addi $t1,$t1,1
				j for_input_begin
		for_input_end:
				li $a1,1
				li $a2,1
				li $a3,0  # ans
				jal judge  # 参数：$s0=n,$a1=now,$a2=num;返回值：$a3(0 or 1)
				
				move $a0,$a3
				li $v0,1
				syscall
				
				li $v0,10
				syscall

judge:
		move $t1,$a1  # now
		move $t2,$a2  # num
		
		bne $t2,$s0,judge_else
		
		getarrayindex($t3,$a1,$t6)
		lw $t4,array($t3)

		bne $t4,$t6,judge_else
		
		exit
		# li $a3,1
		# jr $ra
		
judge_else:
#  $s0=n,$t6=1,$t7=0
		getflagindex($t3,$t1)  # flag[now]=1 now对应的是$t1和$a1
		sw $t6,flag($t3)  # $t3保留为地址
		
		li $t4,1  # $t4作为循环变量i
# $t1=now $t2=num
		slt $t5,$t2,$s0
		bne $t5,1,for_judge_end
		
		
		for_judge_begin:
				sgt $t5,$t4,$s0
				beq $t5,1,for_judge_end
				
				getflagindex($t5,$t4)
				lw $s1,flag($t5)
				bnez $s1,else
				getarrayindex($t5,$t1,$t4)
				lw $s2,array($t5)
				bne $s2,$t6,else
				
				# 满足条件，开始存数据  $t4=i,$t3=flagaddress,$t1=now,$ra
				subi $sp,$sp,4
				sw $t4,0($sp)
				subi $sp,$sp,4
				sw $t1,0($sp)
				subi $sp,$sp,4
				sw $ra,0($sp)
				
				addi $t2,$t2,1
 # judge参数：$s0=n,$a1=now,$a2=num
 				move $a2,$t2
 				
 				move $a1,$t4
 				jal judge
 				
 				subi $t2,$t2,1
 				move $a2,$t2
 				
 				lw $ra,0($sp)
 				addi $sp,$sp,4
 				lw $t1,0($sp)
 				addi $sp,$sp,4
 				lw $t4,0($sp)
 				addi $sp,$sp,4
 		else:		
 				addi $t4,$t4,1
 				j for_judge_begin
 		for_judge_end:
 		
 		getflagindex($t3,$t1)
 		
 		
 		sw $t7,flag($t3)
 		jr $ra
 				
				
		
		

				
				
		
		
		
