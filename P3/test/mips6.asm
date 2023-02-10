ori $t0,1234
ori $t1,5678

and $t2,$t0,$t1

sw $t2,0($0)

ori $t3,0xfff3
sh $t3,2($t0)
lb $t4,3($t0)

addu $t5,$t4,$t0