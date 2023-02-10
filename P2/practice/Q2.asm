.data
string: .space 20

.macro savechar(%char,%i)
	sb %char,string(%i)
.end_macro

.macro savestring
	li $t0,0
	loop1:
		li $v0,12
		syscall
		savechar($v0,$t0)
		addi $t0,$t0,1
		bne $t0,$s0,loop1
.end_macro

.macro getchar(%ans,%index)
  		lb %ans,string(%index)
.end_macro

.macro exit(%ans)
	li $v0,1
	move $a0,%ans
	syscall
	li $v0,10
	syscall
.end_macro
		
.text
	li $v0,5
	syscall
	move $s0,$v0  # number
	
	savestring
	
	li $t0,0  # left
	subi $t1,$s0,1  # right
	loop1:
		getchar($t2,$t0)
		getchar($t3,$t1)
		bne $t2,$t3,false
		addi $t0,$t0,1
		subi $t1,$t1,1
		sgt $t2,$t1,$t0
		bnez $t2,loop1

li $t2,1
exit($t2)
false:
 	li $t2,0
 	exit($t2)