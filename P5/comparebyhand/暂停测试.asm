ori $t0,$t0,4
ori $t1,$t1,4
beq $t0,$t1,f1
nop
ori $s0,10

f1:
ori $s0,100
jal f2
ori $t2,$s0,320

f2:
beq $ra,$t2,f3
nop
f3:
sw $t0,0($0)
sw $t1,4($0)
sw $s0,8($0)
sw $t2,12($0)

lw $t3,0($0)
lw $t4,4($0)
beq $t3,$t4,f4
nop

f4:
lw $s5,8($0)
lw $s6,12($0)
addu $k0,$s5,$s6

lw $s5,0($0)
sw $s6,0($s5)

lw $t0,4($0)
lw $t1,8($0)
sw $t1,0($t0)