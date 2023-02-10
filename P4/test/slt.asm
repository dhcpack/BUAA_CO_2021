ori $t0,10
ori $t1,11
ori $t2,11

lui $t3,0xffff
lui $t4,0xffff
lui $t5,0xffff

ori $t3,0xffff
ori $t4,0xfffe
ori $t5,0xfffe

slt $s0,$t0,$t1
slt $s1,$t1,$t2
slt $s2,$t3,$t4
slt $s3,$t4,$t3
slt $s4,$t4,$t5


sw $s0,0($0)
sw $s1,4($0)
sw $s2,8($0)
sw $s3,12($0)
sw $s4,16($0)

