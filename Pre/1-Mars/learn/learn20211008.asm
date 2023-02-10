.data
num : .space 4
string: .asciiz "please enter an integer£∫"

.text 
li $t0,1  # —≠ª∑±‰¡øi
la $a0,string
li $v0,4
syscall
li $v0,5
syscall
li $a0,0  # result

move $t1,$v0  # max
for_begin:
	sgt $t2,$t0,$t1
	li $t3,1
	beq $t2,$t3,for_end
	add $a0,$a0,$t0
	addi $t0,$t0,1
	j for_begin
for_end:
	li $v0,1
	syscall
	li $v0,10
	syscall
	
	
	