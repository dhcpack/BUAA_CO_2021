ori $a0,0
ori $a1,2

ori $t0,999
ori $t1,83

sh $t0,0($a0)
sh $t0,0($a1)
sh $t1,4($a1)