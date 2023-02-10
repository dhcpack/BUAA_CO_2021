ori $t0,10
ori $t1,11
slt $t2,$t0,$t1
bgtz $t2,end

addu $t3,$t1,$t2

end:

slt $t4,$t1,$t0
bgtz $t4,end2

addu $t5,$t1,$t2

end2:
