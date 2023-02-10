ori $t0,$0,1
ori $t1,$0,1
beq $t0,$t1,f1
nop
f1:
ori $t2,$0,2
beq $t0,$t2,f2
nop
f2:
ori $t3,$0,4