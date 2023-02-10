.data 
string: .space 20

.macro readchar(%ans)
	li $v0,12
	syscall
	move %ans, $v0
.end_macro


.text
li $v0,5
syscall
move $s0,$v0

li $t0,0  # —≠ª∑±‰¡ø
for_input_begin:
		beq $t0,$s0,for_input_end
		readchar($t1)
		sb $t1,string($t0)
		addi $t0,$t0,1
		j for_input_begin
for_input_end:

li $t0,0  # left
subi $t1,$s0,1  # right

for_compare_begin:
		beq $t0,$t1,true
		subi $t2,$t1,1
		beq $t0,$t2,first
		
		lb $t2,string($t0)
		lb $t3,string($t1)
		bne $t2,$t3,false
		addi $t0,$t0,1
		subi $t1,$t1,1
		j for_compare_begin

first:
	lb $t2,string($t0)
	lb $t3,string($t1)
	bne $t2,$t3,false
	j true

true:
	li $a0,1
	j exit
false:
	li $a0,0
exit:
	li $v0,1
	syscall
	li $v0,10
	syscall


		

