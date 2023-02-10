.text
ori $t0, $0, 4
lui $t1, 15
sw $t1,0($t0)
lw $t2,0($t0)
lw $t3,0($t0)
lw $t4,0($t0)
lw $t5,0($t0)

ori $t0, $0, 4
ori $t1, $0, 8
ori $t2, $0, 12
ori $t3, $0, 16
lui $s1, 17
lui $s2, 18
lui $s3, 19
lui $s4, 20
lui $s5, 21

sw $s1,0
lw $s2,0
sw $s2,0($t0)
sw $s2,0($t1)
sw $s2,0($t2)
sw $s2,0($t3)

sw $t0,0
lw $t1,0
sw $s1,0($t1)

sw $t2,0
lw $t1,0
nop
sw $s2,0($t1)

sw $t2,0
lw $t1,0
nop
nop
sw $s2,0($t1)

sw $t3,0
lw $t1,0
nop
nop
nop
sw $s2,0($t1)