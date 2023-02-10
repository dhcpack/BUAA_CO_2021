.text
li $5,0x98765432
li $6,0xfedcba98
div $6,$5
add $5,$5,$5
mfhi $7

.ktext 0x4180
mfc0 $t9, $12
mfc0 $t9, $13
mfc0 $t9, $14
addiu $t9, $t9, 4
mtc0 $t9, $14
eret
sh $2, 42($0)