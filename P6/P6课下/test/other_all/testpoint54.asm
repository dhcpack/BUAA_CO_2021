lui $s0,0xffff
lui $s3,0x1234
ori $s2,$s2,1234
div $s3,$s2
mfhi $t1
add $t9,$t1,$t1
mflo $t2
add $t5,$t5,$t5
div $s3,$s2
add $t4,$s2,$s2
nop
add $t4,$t4,$t4
add $t4,$t4,$t4
nop
nop
add $t4,$t4,$t4
add $t4,$t4,$t4
nop
mfhi $t1
div $s3,$s2
mult $t1,$t2
mflo $t9
addu $t9,$t9,$t9
nop
mflo $t9
nop
addu $t9,$t9,$t9
mflo $t9
nop
nop
addu $t9,$t9,$t9

ori $1,12
ori $2,2
mult $1,$2
mflo $2
add $3,$1,$2
mflo $1
mult $1,$2
add $2,$2,$3
ori $4,$0,14
mflo $1
div $1,$2
mflo $4
mfhi $5
lui $1,0xffff
ori $1,0xffff
addu $2,$1,$0
mult $2,$1
mflo $3
mfhi $4
multu $1,$2
mflo $5
mfhi $6

ori $t1 $0 10
ori $t2 $0 -3
div $t1 $t2
nop
nop