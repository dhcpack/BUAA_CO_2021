li $v0,5
syscall
move $s0,$v0  # n

li $t0,1   # i
li $t1,1   # currentres
li $a0,1   # res

for1:
	sgt $t2,$s0,$t0
	beqz $t2,for1else
	addi $t0,$t0,1
	multu $t1,$t0
	mflo $t1
	add $a0,$a0,$t1
	j for1
for1else:
	li $v0,1
	syscall
	li $v0,10
	syscall
	
	