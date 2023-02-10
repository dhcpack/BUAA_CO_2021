ori $t0,0
ori $t1,1
slt $t2,$t0,$t1
ori $t2,1
slt $t3,$t2,$t1

lui $t4,0xffff
ori $t4,0xffff

lui $t5,0xffff
ori $t5,0xfffe

slt $t6,$t4,$t5
slt $t7,$t5,$t4
slt $t8,$t7,$t7