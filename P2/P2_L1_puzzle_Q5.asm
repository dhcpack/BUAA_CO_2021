.data
	array: .space 196
	directions: .word -1:1
							.word 0:2
							.word -1:1
							.word 1:1
							.word 0:2
							.word 1:1
# array: .word 0:256 初始化256个0
.macro input(%res)
	li $v0,5
	syscall
	move %res,$v0
.end_macro

.macro getindex(%ans,%row,%col,%rank)
	mult %row,%rank
	mflo %ans
	add %ans,%ans,%col
	sll %ans,%ans,2
.end_macro

.macro readmatrix
		li $t0,0  # i
		li $t1,0  # j
	loop1:
		input($t2)
		getindex($t3,$t0,$t1,$s1)
		sw $t2,array($t3)
		addi $t1,$t1,1
		bne $s1,$t1,loop1
		li $t1,0
		addi $t0,$t0,1
		bne $t0,$s0,loop1
.end_macro


.macro getnum(%ans,%row,%col)
	getindex(%ans,%row,%col,$s1)
	lw %ans,array(%ans)
.end_macro

.macro setnum(%row,%col,%num)
	getindex($t9,%row,%col,$s1)
	sw %num,array($t9)
.end_macro

.macro getdirections(%x,%y,%num)
	sll %y,%num,1
	sll %y,%y,2
	lw %x,directions(%y)
	addi %y,%y,4
	lw %y,directions(%y)
.end_macro

#.macro setdirections(%num,%i)
#	sll $t9,%i,2
#	sw %num,directions($t9)
#.end_macro

.macro judgex(%ans,%x)  # 成立是1 不成立是0
	li $t9,0
	slt $t9,%x,$t9
	bnez $t9,falsex
	slt $t9,%x,$s0
	beqz $t9,falsex

	li %ans,1
	j end
	falsex:
		li %ans,0
	end:
.end_macro
	
.macro judgey(%ans,%y)  # 成立是1 不成立是0
	li $t9,0
	slt $t9,%y,$t9
	bnez $t9,falsey
	slt $t9,%y,$s1
	beqz $t9,falsey

	li %ans,1
	j end
	falsey:
		li %ans,0
	end:
.end_macro

.macro save(%num)
	subi $sp,$sp,4
	sw %num,0($sp)
.end_macro

.macro load(%num)
	lw %num,0($sp)
	addi $sp,$sp,4
.end_macro
	
.text
	li $s7,0
	input($s0)  # n
	input($s1)  # m
	readmatrix
	#li $t0,0
	#li $t1,0
	#setdirections($t1,$t0)
	#li $t0,1
	#li $t1,1
	#setdirections($t1,$t0)
	#li $t0,2
	#li $t1,0
	#setdirections($t1,$t0)
	#li $t0,3
	#li $t1,-1
	#setdirections($t1,$t0)
	#li $t0,4
	#li $t1,1
	#setdirections($t1,$t0)
	#li $t0,5
	#li $t1,0
	#setdirections($t1,$t0)
	#li $t0,6
	#li $t1,-1
	#setdirections($t1,$t0)
	#li $t0,7
	#li $t1,0
	#setdirections($t1,$t0)
	
	
	
	
	input($s2)
	input($s3)
	input($s4)
	input($s5)
	subi $s2,$s2,1  # startx
	subi $s3,$s3,1  # starty
	subi $s4,$s4,1  # endx
	subi $s5,$s5,1  # endy
	
	
	li $t0,2
	setnum($s2,$s3,$t0)
	
	move $a0,$s2
	move $a1,$s3
	jal dfs
	
	move $a0,$s7
	li $v0,1
	syscall
	li $v0,10
	syscall
	


dfs:
	bne $a0,$s4,dfselse
	bne $a1,$s5,dfselse
	addi $s7,$s7,1
	jr $ra

dfselse:
	li $t0,0  # 循环变量i
	li $s6,4  # 四个方向
	save($ra)
loop2:	
	getdirections($t2,$t3,$t0)
	add $t2,$a0,$t2  # newx
	add $t3,$a1,$t3  # newy
	
	judgex($t4,$t2)
	beqz $t4,else
	judgey($t4,$t3)
	beqz $t4,else
	getnum($t4,$t2,$t3)
	bnez $t4,else  # 三个判断条件
	
	li $t4,2
	setnum($t2,$t3,$t4)
	
	save($t0)  # i
	save($a0)  # currentx
	save($a1)  # currenty
	save($t2)  # newx
	save($t3)  # newy
	
	move $a0,$t2
	move $a1,$t3
	jal dfs
	
	load($t3)
	load($t2)
	load($a1)
	load($a0)
	load($t0)
	
	li $t4,0
	setnum($t2,$t3,$t4)
else:
	addi $t0,$t0,1
	bne $t0,$s6,loop2
	
load($ra)
jr $ra

	
	




# .macro getdirections(%x,%y,%num)
# .macro getnum(%ans,%row,%col)
# .macro setnum(%row,%col,%num)
