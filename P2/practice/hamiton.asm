.data
	map: .word 0:100
	flag: .word 0:10

.macro input(%num)
	li $v0,5
	syscall
	move %num,$v0
.end_macro

.macro getindex(%ans,%i,%j)
	li $t9,10
	mult %i,$t9
	mflo %ans
	add %ans,%ans,%j
	sll %ans,%ans,2
.end_macro 
	
.macro getmapnum(%ans,%i,%j)
	getindex(%ans,%i,%j)
	lw %ans,map(%ans)
.end_macro

.macro setmapnum(%num,%i,%j)
	getindex($t9,%i,%j)
	sw %num,map($t9)
.end_macro


.macro getflagnum(%ans,%index)
	sll $t9,%index,2
	lw %ans,flag($t9)
.end_macro

.macro setflagnum(%num,%index)
	sll $t9,%index,2
	sw %num,flag($t9)
.end_macro

.macro getmap
	li $t0,0
	li $s2,1
	loop1:
		input($t1)
		input($t2)
		setmapnum($s2,$t1,$t2)
		setmapnum($s2,$t2,$t1)
		addi $t0,$t0,1
		bne $t0,$s1,loop1
.end_macro
	
.macro save(%ans)
	subi $sp,$sp,4
	sw %ans,0($sp)
.end_macro

.macro load(%ans)
	lw %ans,0($sp)
	addi $sp,$sp,4
.end_macro
	
	
	
.text
	input($s0)  # nµ„
	input($s1)  # mœﬂ
	
	getmap
	
	li $s2,0  # ans=0
	li $s3,1  # num=1
	li $a1,1  # now=1
	jal judge
	
	move $a0,$s2
	li $v0,1
	syscall
	li $v0,10
	syscall

judge:
	bne $s3,$s0,else  # num==n
	li $t0,1
	getmapnum($t1,$a1,$t0)  # map[num][1]
	bne $t0,$t1,else
	li $s2,1
	jr $ra
	
	else:
		li $t0,1
		setflagnum($t0,$a1)
		save($ra)
		li $t0,1  # i
		for_begin:
			sgt $t1,$t0,$s0
			bnez $t1,for_end
			getmapnum($t1,$a1,$t0)
			li $t2,1
			bne $t1,$t2,for_else
			getflagnum($t1,$t0)
			bnez $t1,for_else
			addi $s3,$s3,1
			
			save($s3)  # num
			save($t0)  # i
			save($a1)  # now
			move $a1,$t0
			jal judge
			
			load($a1)
			load($t0)
			load($s3)
			subi $s3,$s3,1
			for_else:
				addi $t0,$t0,1
				j for_begin
		for_end:
		li $t0,0
		setflagnum($t0,$a1)
		load($ra)
		jr $ra
			
#.macro input(%num)
#.macro getindex(%ans,%i,%j)
#.macro getmapnum(%ans,%i,%j)
#.macro setmapnum(%num,%i,%j)
#.macro getflagnum(%ans,%index)
#.macro setflagnum(%ans,%index)
#.macro getmap
