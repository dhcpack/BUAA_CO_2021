main:
		li $v0,5
		syscall
		
		move $s0,$v0
		move $a0,$s0
		
		jal factorial  # 步入函数
		
		move $a0,$v0
		li $v0,1
		syscall
		
		li $v0,10
		syscall

factorial:  # 输入参数$a0,返回参数$v0
			move $t0,$a0
		
			bne $t0,1,	else  # $t0等于1时，直接返回1
			li $v0,1
			jr $ra


else:
		subi $sp,$sp,4
		sw $t0,0($sp)
		subi $sp,$sp,4
		sw $ra,0($sp)
		
		sub $t0,$t0,1
		move $a0,$t0
		jal factorial  # 调用函数之前，将参数准备好，例如这里的参数需要$a0，就要把$t0传到$a0中
		
		lw $ra,0($sp)
		addi $sp,$sp,4
		lw $t0,0($sp)
		addi $sp,$sp,4
		
		mult $v0,$t0
		mflo $v0
		
		jr $ra
		