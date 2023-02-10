.data
	a1: .word 0:200
	b1: .word 0:200
	c1: .word 0:400
	a: .space 200
	b: .space 200
	zero: .asciiz "0"

.macro input(%num)
	li $v0,5
	syscall
	move %num,$v0
.end_macro

.macro len(%ans,%lable)
	li $t0,0
	loop1:
		lb $t1,%lable($t0)
		addi $t0,$t0,1
		bnez $t1,loop1
	subi %ans,$t0,2
.end_macro

.macro saveword(%place,%num,%lable)
	sll $t9,%place,2
	sw %num,%lable($t9)
.end_macro

.macro getword(%place,%num,%lable)
	sll $t9,%place,2
	lw %num,%lable($t9)
.end_macro
	
.macro 	change(%lable1,%lable2,%length)
	li $t0,0  # i
	subi $t1,%length,1
	for_loop:
		lb $t2,%lable1($t1)
		la $t3,zero
		sub $t3,$t2,$t3
		saveword($t0,$t3,%lable2)
		addi $t0,$t0,1
		subi $t1,$t1,1
		bne $t0,%length,for_loop
.end_macro

.macro print(%place)
	getword(%place,$t9,c1)
	move $a0,$t9
	li $v0,1
	syscall
.end_macro
		
		
.text
	li $v0,8
	la $a0,a
	li $a1,200
	syscall
	li $v0,8
	la $a0,b
	li $a1,200
	syscall
	len($s0,a)  # alen
	len($s1,b)  # blen
	
	change(a,a1,$s0)
	change(b,b1,$s1)
	
	li $t0,0  # i
	li $t1,0  # j
	loop2:
		add $t2,$t0,$t1
		getword($t0,$t3,a1)  # a1[i]
		getword($t1,$t4,b1)   #b1[j]
		
		mult $t3,$t4
		mflo $t5
		getword($t2,$t6,c1)
		add $t5,$t5,$t6
		saveword($t2,$t5,c1)
		addi $t1,$t1,1
		bne $t1,$s1,loop2
		li $t1,0
		addi $t0,$t0,1
		bne $t0,$s0,loop2
		
		li $t0,0  # i
		add $t1,$s0,$s1  # alen+blen
	loop3:
			getword($t0,$t2,c1)
			li $t3,10
			bgt $t3,$t2,else1
			divu $t2,$t3
			mflo $t2  # ษฬ
			mfhi $t3  #  ำเสý
			saveword($t0,$t3,c1)
			addi $t5,$t0,1
			getword($t5,$t4,c1)
			add $t4,$t4,$t2
			saveword($t5,$t4,c1)
			else1:
			addi $t0,$t0,1
			bne $t0,$t1,loop3
	# $t0=i
	while:
		getword($t0,$t1,c1)
		bnez $t1,break
		subi $t0,$t0,1
		beqz $t0,break
		j while
	break:
		for:
			slt $t1,$t0,$0
			bnez $t1,end
			print($t0)
			subi $t0,$t0,1
			j for
	end:
		li $v0,10
		syscall
