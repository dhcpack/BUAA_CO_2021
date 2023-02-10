# MIPS assembly code
# $s0 = a, $s1 = b, $s2 = c, $s3 = f, $s4 = g, $s5 = h
# $s6 = i, $s7 = j
# a=b-c
# f=(g+h)-(i+j)
#	sub	$s0,$s1,$s2
#	add $t0,$s4,$s5
#	add $t1,$s6,$s7
#	sub $s3,$t0,$t1

lw	$s3, 4($0) # read memory word4 into $s3
sw 	$s7, 4($0) # write $7 to memory word4
lw	$s0, 0($0)
lw	$s1, 8($0)
lw 	$s2, 0xC($0)
sw 	$s3, 4($0)
sw 	$s4, 0x20($0)
sw	$s5, 400($0)

addi $s0, $s0, 4
addi $s1, $s0, -12

