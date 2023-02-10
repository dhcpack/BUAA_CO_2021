ori $t0,1
sll $t0,$t0,2
sw $t0,0($0)

lw $t1,0($0)
sll $t2,$t1,2
beq $t1,$t2,end
sll $s0,$t1,5
beq $t0,$t1,end
sll $t3,$t1,1

end:
addu $t0,$t1,$t3
sll $t4,$t0,2
sw $t4,4($0)
