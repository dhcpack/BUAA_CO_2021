.data
	# 变量的声明和分配
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
		move $t0,$v0  # 数组长度
		li $t1,0  # 循环变量i
	
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
	
	move $v0,$t0  # 返回元素总个数
	jr $ra


sort:
	addiu $sp,$sp,-32
	move $t0,$a0  # 参数为元素的个数
	li $t1,0  # 循环变量
	for_4_begin:
		slt $t2,$t1,$t0
		beqz $t2, for_4_end
		
		la $t3,array
		sll $t2,$t1,2
		add $t2,$t2,$t3
		
		move $a0,$t0  # 元素个数
		move $a1,$t1  # 当前位置
		
		
		sw $t2,28($sp)
		sw $t1,24($sp)
		sw $t0,20($sp)
		sw $ra,16($sp)
			
		jal findmin
		
		lw $t2,28($sp)
		lw $t1,24($sp)
		lw $t0,20($sp)
		lw $ra,16($sp)
		
		lw $t3,0($v0)  # $v0是最小值的地址
		lw $t4,0($t2)  # $t2是当前元素的位置
		
		sw $t3,0($t2)  # 数值交换
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
	li $t1,0  # 循环变量i
	
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
		
		# 得到最后一个元素的地址
		la $t0,array
		sll $a0,$a0,2
		subi $a0,$a0,4
		addu $t0,$t0,$a0  # 最大地址
		
		lw $t1,0($t0)  # 初始化$t1为最后一个元素的值
		move $t2,$t0  # 初始化$t2为最后一个元素的地址($t1和$t2是相互对应的)
		
		move $t3,$t0  # 循环变量
		
		la $t0,array
		sll $a1,$a1,2
		addu $t0,$t0,$a1  # 当前地址
		
		
		for_3_begin:
				sge $t4,$t3,$t0
				beqz $t4,for_3_end
				
				lw $t5,0($t3)
				slt $t6,$t5,$t1
				beqz $t6,if_else
				move $t1,$t5  # 更新数值
				move $t2,$t3  # 更新地址
				if_else:
					subi $t3,$t3,4
					j for_3_begin
		for_3_end:
				move $v0,$t2  # 返回最小数值所在地址
				jr $ra
			
main:
	la $sp,stack
	addiu $sp,$sp,100  # 栈指针移动到栈顶
	addiu $sp,$sp,-20
	jal input
	move $t0,$v0  # 返回值为元素的个数
	
	move $a0,$t0  # 参数为元素的个数

	sw $t0,12($sp)  # 调用者维护$t0
	
	jal sort
	nop	
	lw $t0,12($sp)
	
	move $a0,$t0
	jal output
	
	addiu $sp,$sp,20
	
	li $v0,10
	syscall