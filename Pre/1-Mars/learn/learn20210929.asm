main:
		li $v0,5
		syscall
		
		move $s0,$v0
		move $a0,$s0
		
		jal factorial  # ���뺯��
		
		move $a0,$v0
		li $v0,1
		syscall
		
		li $v0,10
		syscall

factorial:  # �������$a0,���ز���$v0
			move $t0,$a0
		
			bne $t0,1,	else  # $t0����1ʱ��ֱ�ӷ���1
			li $v0,1
			jr $ra


else:
		subi $sp,$sp,4
		sw $t0,0($sp)
		subi $sp,$sp,4
		sw $ra,0($sp)
		
		sub $t0,$t0,1
		move $a0,$t0
		jal factorial  # ���ú���֮ǰ��������׼���ã���������Ĳ�����Ҫ$a0����Ҫ��$t0����$a0��
		
		lw $ra,0($sp)
		addi $sp,$sp,4
		lw $t0,0($sp)
		addi $sp,$sp,4
		
		mult $v0,$t0
		mflo $v0
		
		jr $ra
		