.data
	symbol: .word 0:6
	array: .word 0:6
	space: .asciiz " "
	enter: .asciiz "\n"

.macro getindex(%ans,%index)
	sll %ans,%index,2
.end_macro

.macro getnum(%ans,%index,%lable)
	getindex(%ans,%index)
	lw %ans,%lable(%ans)
.end_macro

.macro setnum(%num,%index,%lable)
	sll $t9,%index,2
	sw %num,%lable($t9)
.end_macro

.macro printnum(%num)
	li $v0,1
	move $a0,%num
	syscall
.end_macro

.macro printchar(%char)
	la $a0,%char
	li $v0,4
	syscall
.end_macro

.macro save(%re)
	subi $sp,$sp,4
	sw %re,0($sp)
.end_macro

.macro load(%re)
	lw %re,0($sp)
	addi $sp,$sp,4
.end_macro

.text
	li $v0,5
	syscall
	move $s0,$v0  # n
	
	li $a1,0  # index
	jal fullarray
	li $v0,10
	syscall

fullarray:
	sgt $t0,$s0,$a1
	bnez $t0,else
	li $t0,0
	loop1:
		getnum($t1,$t0,array)
		printnum($t1)
		printchar(space)
		addi $t0,$t0,1
		bne $t0,$s0,loop1
		printchar(enter)
		jr $ra
	else:
		save($ra)
		li $t0,0
		for_loop:	
			getnum($t1,$t0,symbol)  # symbol[i]
			bnez $t1,for_else
			add $t1,$t0,1  # i+1
			setnum($t1,$a1,array)  # array[index]=i+1
			li $t1,1
			setnum($t1,$t0,symbol)  # symbol[i]=1
			
			save($t0)
			save($a1)  # 存数据
			
			# 准备参数
			add $a1,$a1,1
			jal fullarray
			
			load($a1)
			load($t0)
			setnum($0,$t0,symbol)
		for_else:	
			addi $t0,$t0,1
			bne $t0,$s0,for_loop
		load($ra)
		jr $ra
			
			





#.macro getindex(%ans,%index)
#.macro getnum(%ans,%index,%lable)
#.macro setnum(%num,%index,%lable)
#.macro save(%re)
#.macro load(%re)
#.macro printnum(%num)
#.macro printchar(%char)
