ori $t0,0x3024
jalr $t1,$t0
sw $t1,4($0)
ori $t2,0x3000
sw $t0,0($0)
sw $t1,8($0)
addu $t2,$t0,$t1
beq $0,$0,end
sll $t2,$t2,3

ori $t3,4
jr $t1
lw $t1,4($0)
end:
slt $t2,$t3,$t2