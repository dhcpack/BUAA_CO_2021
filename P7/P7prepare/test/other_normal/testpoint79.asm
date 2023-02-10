beq $0 $0 L1
lw $0 1($0)
L1:
nop

.ktext 0x00004180
mfc0 $k1,$12
mfc0 $k1,$13
mfc0 $k1,$14
addiu $k1,$k1,4
mtc0 $k1,$14
eret