.data
	string: .space 1000

.macro getchar(%ans,%index)
	lb %ans,string(%index)
.end_macro

.macro setchar(%char,%index)
	sb %char,string(%index)
.end_macro

.macro input(%ans)
	li $v0,5
	syscall
	move %ans,$v0
.end_macro

.text
	input($s0)  # n
	input($s1)  # left
	input($s2)  # right
	
	# inputstring
	la $a0,string
	li $a1,1001
	li $v0,8
	syscall
	
	loop3:
		getchar($t1,$s1)
		getchar($t2,$s2)
		setchar($t1,$s2)
		setchar($t2,$s1)
		addi $s1,$s1,1
		subi $s2,$s2,1
		sgt $t0,$s2,$s1
		bnez $t0,loop3
	
	#outputstring
	la $a0,string
	li $v0,4
	syscall
	
	li $v0,10
	syscall
		
		
	
