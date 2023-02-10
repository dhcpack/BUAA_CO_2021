.data
	string: .space 1000
	endinput: .asciiz "\n"

.macro getnum(%num,%index)
	lb %num,string(%index)
.end_macro

.macro setnum(%num,%index)
	sb %num,string(%index)
.end_macro

.macro input(%num)
	li $v0,12
	syscall
	move %num,$v0
.end_macro

.macro print
	li $t0,0
	loop1:
		getnum($t1,$t0)
		lb $t2,endinput
		beq $t1,$t2,loop1end
		li $v0,11
		move $a0,$t1
		syscall
		addi $t0,$t0,1
		j loop1
	loop1end:
.end_macro

.text

	li $v0,8
	la $a0,string
	li $a1,1001
	syscall
	
	li $v0,5
	syscall
	move $s0,$v0  #É¾³ý¸öÊýn
	
	li $t0,0   #i
	for:
		addi $t1,$t0,1
		getnum($t2,$t1)   #s[i+1]
		lb $t3,endinput
		beq $t2,$t3,for_end
		beqz $s0,for_end
		if:
			getnum($t3,$t0)   #s[i]
			sgt $t4,$t3,$t2   # s[i]>s[i+1]
			beqz $t4,else
			move $t1,$t0  # $t1=j
			lb $t3,endinput
			loop:	
				getnum($t2,$t1)  # a[j]
				beq $t2,$t3,loopend
				addi $t4,$t1,1  # j+1
				getnum($t5,$t4)   # a[j+1]
				setnum($t5,$t1)
				addi $t1,$t1,1
				j loop
			loopend:
				subi $s0,$s0,1
				li $t0,0
			else:	
				addi $t0,$t0,1
				j for
		for_end:
		beq $s0,$0,end
		sub $s1,$t0,$s0
		addi $s1,$s1,1
		lb $t1,endinput
		setnum($t1,$s1)
	end:

#	li $v0,4
#	la $a0,string
#	syscall
	print
	li $v0,10
	syscall
		
		
				
		