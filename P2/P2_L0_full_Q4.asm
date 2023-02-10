.data
	symbol: .space 28
	array: .space 28
	space: .asciiz " "
	enter: .asciiz "\n"
	

.macro printchar(%lable)
	la $a0,%lable
	li $v0,4
	syscall
.end_macro

.macro printint(%place,%lable)
	getnum($a0,%place,%lable)
	li $v0,1
	syscall
.end_macro

.macro input(%num)
	li $v0,5
	syscall
	move %num,$v0
.end_macro

.macro getnum(%num,%place,%lable)
	move $t7,%place
	sll $t7,$t7,2
	lw %num,%lable($t7)
.end_macro

.macro setnum(%place,%lable,%newnum)
	move $t7,%place
	sll $t7,$t7,2
	sw %newnum,%lable($t7)
.end_macro
	

	
	
.text

main:
	input($s0)  #n
	li $a0,0
	jal fullarray
	li $v0,10
	syscall


fullarray:
	move $t0,$a0  # index
	sgt $t1,$s0,$t0
	bnez $t1,loop1
	li $t0,0  # 循环变量
	printloop:
			printint($t0,array)
			printchar(space)
			addi $t0,$t0,1
			bne $t0,$s0,printloop
			printchar(enter)
			jr $ra
	
loop1:
	subi $sp,$sp,4
	sw $ra,0($sp)
	
	li $t1,0  # 循环变量i
	loop2:
		getnum($t2,$t1,symbol)		# $t1=symbol[i]
		bnez $t2,else
		addi $t2,$t1,1
		setnum($a0,array,$t2)  # array[index]=i+1
		li $t2,1
		setnum($t1,symbol,$t2)  # symbol[i]=1
		
		subi $sp,$sp,4
		sw $t1,0($sp)  # 存i
		subi $sp,$sp,4  # 存index
		sw $a0,0($sp) 
		
		addi $a0,$a0,1
		jal fullarray
		
		lw $a0,0($sp)  #读index
		addi $sp,$sp,4 
		lw $t1,0($sp)  # 读i
		addi $sp,$sp,4
		
		li $t2,0
		setnum($t1,symbol,$t2)  # symbol[i]=0
		else:
		addi $t1,$t1,1 # i=i+1
		bne $t1,$s0,loop2  # 继续循环
	
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra
	
	
		
		
	#getnum(%num,%place,%lable)
	#setnum(%place,%lable,%newnum)








