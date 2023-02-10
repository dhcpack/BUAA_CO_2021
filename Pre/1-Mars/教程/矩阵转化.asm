.data
	array: .space 10000
	space: .asciiz " "
	enter: .asciiz "\n"
.macro getindex(%ans,%a,%b)
	li $t0,50
	mult %a,$t0
	mflo %ans
	add %ans,%ans,%b
	sll %ans,%ans,2  # 别忘记地址要乘上4
.end_macro
	
.text

	li $v0,5
	syscall
	move $s1,$v0  # $s1行数
	li $t1,0  # current 行数
	
	li $v0,5
	syscall
	move $s2,$v0  # $s2列数
	li $t2,0  # current列数
	
	
	for_i_begin:
		beq  $t1,$s1,for_i_end
		li $t2,0
		for_j_begin:
			beq $t2,$s2,for_j_end
		
			getindex($t5,$t1,$t2)
		
			li $v0,5
			syscall
			sw $v0,array($t5)
		
			addi $t2,$t2,1
			j for_j_begin
		
		for_j_end:
		addi $t1,$t1,1
		j for_i_begin
	for_i_end:
	
	subi $s1,$s1,1
	subi $s2,$s2,1
	
	move $t1,$s1
	move $t2,$s2
	
	for_ibegin:
		bltz $t1,for_iend
		move $t2,$s2
		for_jbegin:
			bltz $t2,for_jend
			
			getindex($t5,$t1,$t2)
			
			lw $t6,array($t5)
			if:
				beqz $t6,else
				
				li $v0,1
				addi $t3,$t1,1
				move $a0,$t3
				syscall
				
				li $v0,4
				la $a0,space
				syscall
				
				li $v0,1
				addi $t3,$t2,1
				move $a0,$t3
				syscall
				
				li $v0,4
				la $a0,space
				syscall
				
				li $v0,1
				move $a0,$t6
				syscall
				
				li $v0,4
				la $a0,enter
				syscall
				
				
			else:
				subi $t2,$t2,1
				j for_jbegin
			
			for_jend:
			subi $t1,$t1,1
			j for_ibegin
		for_iend:
		
	li $v0,10
	syscall
	

	