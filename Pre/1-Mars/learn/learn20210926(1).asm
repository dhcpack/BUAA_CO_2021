.data
	# �����������ͷ���
	array: .space 400
	message_input_n: .asciiz"Please input an integer as the length of the sequence:\n"
	message_input_array: .asciiz"Please input an integer followed with a line break:\n"
	message_output_array:.asciiz"The sorted sequence is:\n"
	space:.asciiz" "
	stack: .space 100
	
.globl main
.text

	
input:
		la $a0,message_input_n
		li $v0,4
		syscall
	
		li $v0,5
		syscall
		move $t0,$v0  # ���鳤��
		li $t1,0  # ѭ������i
	
	for_begin:
		slt $t2,$t1,$t0
		beqz $t2,for_end
	
		la $a0,message_input_array
		li $v0,4
		syscall
	
		li $v0,5
		syscall
		sll $t3,$t1,2
		sw $v0,array($t3)
	
		addi $t1,$t1,1
		j for_begin
	for_end:
	
	move $v0,$t0  # ����Ԫ���ܸ���
	jr $ra


sort:
	addiu $sp,$sp,-32
	move $t0,$a0  # ����ΪԪ�صĸ���
	li $t1,0  # ѭ������
	for_4_begin:
		slt $t2,$t1,$t0
		beqz $t2, for_4_end
		
		la $t3,array
		sll $t2,$t1,2
		add $t2,$t2,$t3
		
		move $a0,$t0  # Ԫ�ظ���
		move $a1,$t1  # ��ǰλ��
		
		
		sw $t2,28($sp)
		sw $t1,24($sp)
		sw $t0,20($sp)
		sw $ra,16($sp)
			
		jal findmin
		
		lw $t2,28($sp)
		lw $t1,24($sp)
		lw $t0,20($sp)
		lw $ra,16($sp)
		
		lw $t3,0($v0)  # $v0����Сֵ�ĵ�ַ
		lw $t4,0($t2)  # $t2�ǵ�ǰԪ�ص�λ��
		
		sw $t3,0($t2)  # ��ֵ����
		sw $t4,0($v0)
		
		addi $t1,$t1,1
		j for_4_begin
		
	for_4_end:
	addiu $sp,$sp,32
	jr $ra
		
		
		
		
		
output:
	move $t0,$a0
	
	la $a0,message_output_array
	li $v0,4
	syscall
	li $t1,0  # ѭ������i
	
	for_2_begin:
		slt $t2,$t1,$t0
		beqz $t2, for_2_end
		
		sll $t3,$t1,2
		li $v0,1
		lw $a0,array($t3)
		syscall
		
		la $a0,space
		li $v0,4
		syscall
		
		addi $t1,$t1,1
		j for_2_begin
	
	for_2_end:
	
findmin:
		
		# �õ����һ��Ԫ�صĵ�ַ
		la $t0,array
		sll $a0,$a0,2
		subi $a0,$a0,4
		addu $t0,$t0,$a0  # ����ַ
		
		lw $t1,0($t0)  # ��ʼ��$t1Ϊ���һ��Ԫ�ص�ֵ
		move $t2,$t0  # ��ʼ��$t2Ϊ���һ��Ԫ�صĵ�ַ($t1��$t2���໥��Ӧ��)
		
		move $t3,$t0  # ѭ������
		
		la $t0,array
		sll $a1,$a1,2
		addu $t0,$t0,$a1  # ��ǰ��ַ
		
		
		for_3_begin:
				sge $t4,$t3,$t0
				beqz $t4,for_3_end
				
				lw $t5,0($t3)
				slt $t6,$t5,$t1
				beqz $t6,if_else
				move $t1,$t5  # ������ֵ
				move $t2,$t3  # ���µ�ַ
				if_else:
					subi $t3,$t3,4
					j for_3_begin
		for_3_end:
				move $v0,$t2  # ������С��ֵ���ڵ�ַ
				jr $ra
			
main:
	la $sp,stack
	addiu $sp,$sp,100  # ջָ���ƶ���ջ��
	addiu $sp,$sp,-20
	jal input
	move $t0,$v0  # ����ֵΪԪ�صĸ���
	
	move $a0,$t0  # ����ΪԪ�صĸ���

	sw $t0,12($sp)  # ������ά��$t0
	
	jal sort
	nop	
	lw $t0,12($sp)
	
	move $a0,$t0
	jal output
	
	addiu $sp,$sp,20
	
	li $v0,10
	syscall