.data
	array:  .word 1:1
					.word 0:199

.macro getnum(%num,%place)
	sll %num,%place,2
	lw %num,array(%num)
.end_macro

.macro setnum(%num,%place)
	sll $t9,%place,2
	sw %num,array($t9)
.end_macro

.macro printnum(%num)
	li $v0,1
	move $a0,%num
	syscall
.end_macro

.macro printzero
	li $a0,0
	li $v0,1
	syscall
.end_macro

.macro printfive(%num)
	li $t9,9999
	sgt $t9,%num,$t9
	bnez $t9,end
	printzero
	li $t9,999
	sgt $t9,%num,$t9
	bnez $t9,end
	printzero
	li $t9,99
	sgt $t9,%num,$t9
	bnez $t9,end
	printzero
	li $t9,9
	sgt $t9,%num,$t9
	bnez $t9,end
	printzero
end:
	printnum(%num)
.end_macro

	

.text
	li $v0,5
	syscall
	bnez $v0,begin
	li $t1,1
	printnum($t1)
	li $v0,10
	syscall
	
begin:	
	move $s0,$v0
	addi $s0,$s0,1  # n
	li $s1,1  #m
	
	li $s2,0  # carry
	li $t0,1  # i
	li $t1,0  # j
	li $t3,100000  # 进位常数
	loop1:
		getnum($t2,$t1)  # number
		mult $t0,$t2
		mflo $t2
		add $t2,$t2,$s2  # number
		divu $t2,$t3
		mflo $s2  # carry
		mfhi $t2  # number
		setnum($t2,$t1)
		addi $t1,$t1,1
		bne $t1,$s1,loop1
		
		li $t1,0
		addi $t0,$t0,1	
		beqz $s2,else1
		
		setnum($s2,$s1)
		li $s2,0
		addi $s1,$s1,1
	#loop4:
		#li $t3,100000
		#divu $s2,$t3
		#mflo $s2
		#mfhi $t2
		#setnum($t2,$s1)
		#addi $s1,$s1,1
		#bnez $s2,loop4
else1:
		bne $t0,$s0,loop1
	
	
	subi $t0,$s1,1
	beqz $t0,printonce
	
	
	getnum($t1,$t0)
	printnum($t1)
	subi $t0,$t0,1
	loop2:
		beqz $t0,else
		getnum($t1,$t0)
		printfive($t1)
		subi $t0,$t0,1
		j loop2

else:
	getnum($t1,$t0)
	printfive($t1)
	j endpro


printonce:
	getnum($t1,$t0)
	printnum($t1)

endpro:
	
	li $v0,10
	syscall
		
		
