lui $t0,0xffff
ori $t0,0x1234
sw $t0,0($0)
sh $t0,6($0)
lw $t1,0($0)
lb $t2,7($0)