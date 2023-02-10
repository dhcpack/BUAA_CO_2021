ori $t0,1
bgtz $t0,f1
lui $t1,0xffff
ori $s1,4

f1:
slt $t2,$t0,$t1
bgtz $t2,f2
sw $t2,0($0)
ori $s2,5

f2:
lw $t2,0($0)
bgtz $t1,f3
nop
subu $s3,$s2,$s1

f3:
bgtz $t0,f4
sw $t1,4($0)
lui $t0,1000

f4:
subu $a0,$t1,$t3