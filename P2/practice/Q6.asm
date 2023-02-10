.data
	num: .word 1:1
				.word 0:999
	
.macro getnum(%ans,%place)
	sll $t9,%place,2
	lw %ans,0($t9)
.end_macro

.macro setnum(%num,%place)
	sll $t9,%place,2
	sw %num,0($t9)
.end_macro

.macro print(%place)
	getnum($a0,%place)
	li $v0,1
	syscall
.end_macro

.text
	li $v0,5
	syscall
	move $s0,$v0  # n
	li $s1,1  # m
	li $s2,0  # carry
	li $t3,10  # 10½øÖÆ
	
	li $t0,1  # i
	for_i_begin:	
		sgt $t2,$t0,$s0
		bnez $t2,loop2

		li $t1,0  # j
		li $t2,0 #num
		for_j_begin:
			getnum($t2,$t1)
			mult $t2,$t0
			mflo $t2
			add $t2,$t2,$s2  # number
			divu $t2,$t3
			mfhi $t2
			mflo $s2
			setnum($t2,$t1)
			addi $t1,$t1,1
			bne $t1,$s1,for_j_begin
		addi $t0,$t0,1
		beqz $s2,for_i_begin
		loop1:
			divu $s2,$t3
			mflo $s2
			mfhi $t4
			setnum($t4,$s1)
			addi $s1,$s1,1
			bnez $s2,loop1
		j for_i_begin


loop2:
	subi $s1,$s1,1
	sgt $t1,$0,$s1
	bnez $t1,end
	print($s1)
	j loop2

end:
li $v0,10
syscall
	
			
			
						
	