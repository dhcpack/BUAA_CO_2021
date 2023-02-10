.text
ori $s1, $s1, 0x3000
ori $s0, $0, 15
sw $s0,0x30($0)
ori $s0, $0, 16
sw $s0,0x40($0)
ori $s0, $0, 17
sw $s0,0x54($0)
jal loop
subu $t1, $ra, $s1
ori $t0, $0, 1
loop:
lw $s3,0($t1)
jal loop2
subu $t1, $ra, $s1
ori $t0, $0, 1
loop2:
nop
lw $s4,0($t1)
jal loop3
subu $t1, $ra, $s1
ori $t0, $0, 1
loop3:
nop
nop
lw $s5,0($t1)