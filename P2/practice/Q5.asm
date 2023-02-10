.data
 	array: .word 0:49
 	directions: .word 0:1
 							.word 1:2
 							.word 0:2
 							.word -1:2
 							.word 0:1
.macro input(%num)
	li $v0,5
	syscall
	move %num,$v0
.end_macro

.macro getindex(%ans,%i,%j,%col)
	mult %i,%col
	mflo %ans
	add %ans,%ans,%j
	sll %ans,%ans,2
.end_macro

.macro getnum(%num,%i,%j,%col)
	getindex(%num,%i,%j,%col)
	lw %num,array(%num)
.end_macro

.macro setnum(%num,%i,%j,%col)
	getindex($t9,%i,%j,%col)
	sw %num,array($t9)
.end_macro

.macro getmatrix
	li $t0,0  # i
	li $t1,0  # j
	loop:
		input($t2)
		setnum($t2,$t0,$t1,$s1)
		addi $t1,$t1,1
		bne $t1,$s1,loop
		li $t1,0
		addi $t0,$t0,1
		bne $t0,$s0,loop
.end_macro

.macro judge(%ans,%max,%num)
	sgt $t9,$0,%num
	bnez $t9,false
	sgt $t9,%max,%num
	beqz $t9,false
	li %ans,1
	j end
	false:
		li %ans,0
	end:
.end_macro
		
.macro getdirections(%addx,%addy,%index)
	sll $t9,%index,1
	addi $t8,$t9,1
	sll $t9,$t9,2
	sll $t8,$t8,2
	lw %addx,directions($t9)
	lw %addy,directions($t8)
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
	input($s0)  # n
	input($s1)  # m
	
	getmatrix
	
	input($s2)  # startx
	input($s3)  # starty
	input($s4)  # endx
	input($s5)  # endy
	li $a0,0  # cnt
	
	subi $s2,$s2,1
	subi $s3,$s3,1
	subi $s4,$s4,1
	subi $s5,$s5,1
	
	li $t0,2
	setnum($t0,$s2,$s3,$s1)
	
	move $a2,$s2
	move $a3,$s3  # 两个参数
	jal dfs
	
	li $v0,1
	syscall
	li $v0,10
	syscall

dfs:
	bne $a2,$s4,dfselse
	bne $a3,$s5,dfselse
	addi $a0,$a0,1
	jr $ra
dfselse:
	save($ra)
	li $t0,0  # i
	forloop:
		getdirections($t1,$t2,$t0)
		add $t3,$a2,$t1
		add $t4,$a3,$t2
		judge($t5,$s0,$t3)
		beqz $t5,forelse
		judge($t5,$s1,$t4)
		beqz $t5,forelse
		getnum($t5,$t3,$t4,$s1)
		sgt $t6,$t5,$0
		bnez $t6,forelse  # 三个判断条件
		
		save($a2)
		save($a3)
		save($t0)
		save($t3)
		save($t4)
		li $t5,2
		setnum($t5,$t3,$t4,$s1)
		move $a2,$t3
		move $a3,$t4
		jal dfs
		load($t4)
		load($t3)
		load($t0)
		load($a3)
		load($a2)
		
		setnum($0,$t3,$t4,$s1)
	forelse:
		addi $t0,$t0,1
		li $t1,4
		bne $t0,$t1,forloop
	load($ra)
	jr $ra
		
		

#.macro input(%num)
#.macro getindex(%ans,%i,%j,%col)
#.macro getnum(%num,%i,%j,%col)
#.macro setnum(%num,%i,%j,%col)
#.macro getmatrix
#.macro judge(%ans,%max,%num)
#.macro getdirections(%addx,%addy,%index)
#.macro save(%re)
#.macro load(%re)




	
