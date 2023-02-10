.text
li $5, 0x0000ff11
mtc0  $5, $12
li $2, 0x7fffffff
li $3, 0x5ff
add $2, $3, $2
lui $16, 0xabcd
lui $17, 0x1234

.ktext 0x4180
kstart:
li $k0, 0xe01c
mfc0 $k0, $12
mfc0 $k0, $13
mfc0 $k1, $14
addiu $k1, $k1, 4
mtc0 $k1, $14
eret
j kstart