bgezal $t0,f1
ori $t0,10
ori $t1,20
nop
nop
f1:
lui $t2,0xffff
ori $t2,0xffff
bgezal $t2,f2
addu $k0,$t1,$t2
sw $t2,0($0)
f2:
ori $t4,$0,100
bgezal $t4,f3
subu $a1,$a2,$a3
nop
f3:
lw $a0,0($0)
addu $a1,$a0,$t2