.text
ori $3,$0, 0x0c01
mtc0 $3,$12
li $3,9
sw $3,0x7f00($0)
li $3,20
sw $3,0x7f04($0)

.ktext 0x4180
mfc0	$1, $12
mfc0	$1, $13
mfc0	$1, $14
li $k0,9
sw $k0,0x7f00($0)
eret