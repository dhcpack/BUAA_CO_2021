.text
lui $3,0x7fff
ori $3,$3,0xffff
sw $1,4($3) #Òç³ö
lui $22,0x2345
lui $2,0x7fff
ori $2,$2,0xffff
lw $2,12($2) #Òç³ö
lui $22,0x3456
nop
nop
lui $3,0x7fff
ori $3,$3,0xffff
sh $2,2($3)
lui $22,0x1234
nop
lui $3,0x7fff
ori $3,$3,0xffff
sb $2,1($3)
lui $2,0x7fff
ori $2,$2,0xffff
lh $2,10($2)
lui $2,0x7fff
ori $2,$2,0xffff
lb $22,12($2)
nop
nop

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