.text
ori $t0,$0,3
sw $t0,0x7F14($0)
ori $t0,$0,0x0009 #mode 0
sw $t0,0x7F10($0)
nop
nop

.ktext 0x4180
mfc0 $k0,$12
mfc0 $k0,$14
mfc0 $k0,$13
ori $k0,$0,3
sw $k0,0x7F14($0)
ori $k0,$0,0x0009 #mode 0
sw $k0,0x7F10($0)
eret