# y=$s0
main:
	addi $a0,$0,2
	addi $a1,$0,3
	addi $a2,$0,4
	addi $a3,$0,5
	jal diffofsums
	add $s0,$v0,$0

# $s0=result
diffofsums:
	add $t0,$a0,$a1
	add $t1,$a2,$a3
	sub $s0,$t0,$t1
	add $v0,$s0,$0
	jr	$ra
