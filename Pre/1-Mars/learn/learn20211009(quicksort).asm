.data
	array: .space 4000
	char1: .asciiz "["
	char2: .asciiz "]"
	douhao: .asciiz ","

.macro place(%ans,%i)
	sll %ans,%i,2
.end_macro

.macro input(%ans)
	li $v0,5
	syscall
	move %ans,$v0
.end_macro

.macro exchange(%i,%j)
	sll $t7,%i,2
	sll $t6,%j,2
	lw $t5,array($t6)
	sw $t5,array($t7)
.end_macro

.macro print(%i)
	li $v0,1
	lw $a0,array(%i)
	syscall
.end_macro

.text
	# main
	li $v0,5
	syscall
	move $s0,$v0  # 数组长度
	li $t0,0  # 循环变量i
	
	input_begin:
		slt $t1,$t0,$s0
		beqz $t1,input_end
		input($t2)  # 输入
		place($t3,$t0)  # $t3 place
		sw $t2,array($t3)
		addi $t0,$t0,1
		j input_begin
	
	input_end:
	move $a0,$0
	subi $t0,$s0,1
	move $a1,$t0  # quicksort两个参数 $a0=i $a1=j
	
	jal quicksort
	jal output
	
	li $v0,10
	syscall


quicksort:
	move $t0,$a0  # $t0=i
	move $t1,$a1  # $t1=j
	slt $t2,$t0,$t1
	bnez $t2,quick_else
	jr $ra

quick_else:
	subi $sp,$sp,4
	sw $ra,0($sp)
	subi $sp,$sp,4
	sw $t1,0($sp)
	subi $sp,$sp,4
	sw $t0,0($sp)
	
	move $a0,$t0
	move $a1,$t1  # 给getstandard传参数
	
	jal getstandard  # standard 返回值$v0
	subi $t2,$v0,1  # standard-1
	addi $t3,$v0,1  # standard+1
	
	lw $t0,0($sp)  # low
	addi $sp,$sp,4
	
	move $a0,$t0
	move $a1,$t2  # 传参数
	jal quicksort
	
	lw $t1,0($sp)  # high
	addi $sp,$sp,4
	
	move $a0,$t3
	move $a1,$t1  # 传参数
	
	jal quicksort
	
	lw $ra,0($sp)
	addi $sp,$sp,4  # $ra
	
	jr $ra


getstandard:
	move $t0,$a0  # i
	move $t1,$a1  # j
	
	place($t2,$t0)
	lw $s1,array($t2)  # key=$s1
	
	while_all_begin:
		slt $t2,$t0,$t1
		beqz $t2,while_all_end
		while_left_begin:
			slt $t2,$t0,$t1
			beqz $t2,while_left_end  # first limit
			place($t2,$t1)
			lw $t3,array($t2)  # $t3=array[j]
			slt $t4,$t3,$s1
			bnez $t4,while_left_end  # second limit
			subi $t1,$t1,1  # j-=1
			j while_left_begin
		while_left_end:
		slt $t2,$t0,$t1
		beqz $t2,else1
		
		# array[i]=array[j]
		exchange($t0,$t1)
		
		else1:
		
			while_right_begin:
				slt $t2,$t0,$t1
				beqz $t2,while_right_end  # first limit
				place($t2,$t0)
				lw $t3,array($t2)  # $t3=array[i]
				sgt $t4,$t3,$s1
				bnez $t4,while_right_end  # second limit
				addi $t0,$t0,1  # i+=1
				j while_right_begin
			while_right_end:
			slt $t2,$t0,$t1
			beqz $t2,else2
			
			# array[j]=array[i]
			exchange($t1,$t0)
			
		else2:
			j while_all_begin
	
	while_all_end:
		place($t2,$t0)
		sw $s1,array($t2)
		move $v0,$t0
		jr $ra


output:
	la $a0,char1
	li $v0,4
	syscall  # "["
	
	move $t0,$s0  # n
	li $t1,0  # 循环变量
	output_begin:
		slt $t2,$t1,$t0
		beqz $t2,output_end
		place($t2,$t1)
		print($t2)  # number
		
		addi $t1,$t1,1
		slt $t2,$t1,$t0
		beqz $t2,output_end
		la $a0,douhao
		li $v0,4
		syscall
		j output_begin
	
	output_end:
			la $a0,char2
			li $v0,4
			syscall
			jr $ra
		
		
				
				
		
		
		
	
	
		
		
		