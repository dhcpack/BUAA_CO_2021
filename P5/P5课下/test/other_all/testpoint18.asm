lui $t0 0xf65b
ori $t1 $0 0xabfe
ori $t2 $0 0x3000
lui $t3 0x49bf
addu $t5 $t1 $t3
addu $t4 $t1 $t3
beq $t5 $t4 end
subu $t6 $t2 $t3
ori $1 $0 4
subu $31 $31 $1
end: subu $t6 $t3 $t1
sw $t6 0($0)
lw $s0 0($0)
end1:lw $s1 0($0)
beq $s0 $s1 end1
ori $s0 $s1 0x619f

ori $t2 $0 0x3000
lui $t3 0x49bf
addu $t5 $t1 $t3
sw $t5 0($0)
ori $t1 $0 0xabfe
lw $t4 0($0)
addu $t1 $t1 $t4
ori $t0 $0 0x0008
sw $t0 4($t0)
lw $t0 4($t0)
sw $t1 8($t0)

ori $t2 $0 0x3000
lui $t3 0x49bf
addu $t5 $t1 $t3
sw $t5 0($0)
ori $t1 $0 0xabfe
lw $t4 0($0)
addu $t1 $t4 $t1
ori $t0 $0 0x0008