	ori 	$2, $0, 0x1001
	mtc0 	$2, $12
	ori	$28, $0, 0x0000
	ori	$29, $0, 0x0000
	lui	$8, 0x7fff
	lui	$9, 0x7fff
	add	$10, $8, $9
	or	$10, $8, $9

.ktext 0x4180
mfc0 $1,$12
mfc0 $1,$13
mfc0 $1,$14
addi $1,$1,4
mtc0 $1,$14
li $5,0x98765432
li $6,0xfedcba98
div $5,$6
eret
mflo $7
eret