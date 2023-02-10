.text
_main:
ori $t0,$0,0x3010
# PC unaligned
jalr $s1 $t0
nop
li $t0 0x41111111
sub $t0 $t0 $t0

addi $a0,$0,0x1234


nop
ori $t0,$0,0xff11
mtc0 $t0,$12
# SR
mfc0 $t1,$12
# W->M
addu $t2,$t1,$t1
# W->E
addu $t3,$t1,$t1

# Cause
mfc0 $t2,$13
# EPC
mfc0 $t3,$14
# PrID
# mfc0 $t4,$15

# RI
#mul $5, $1, $4

# LOAD
lui $s0,0x7fff
ori $s0,$s0,0xffff
sw $s0 0($0)

lw $t0 0($0)
lw $0 1($0)
addu $t1 $t0 $0

# OK
lw  $t0 0x0000($0)
lw  $t0 0x2FFC($0)

lh  $t0 0x0000($0)
lh  $t0 0x2ffe($0)

lb  $t0 0x0000($0)
lb  $t0 0x2fff($0)

lhu $t0 0x0000($0)
lhu $t0 0x2ffe($0)

lbu $t0 0x0000($0)
lbu $t0 0x2ffe($0)

# ADEL overflow
lw  $t0 1($s0)
# ADEL unaligned
lw  $t0 1($0)
# ADEL out of range
lw  $t0 0x3000($0)

# STORE
lui $s0 0x7fff
ori $s0 $s0 0xffff
# OK
sw  $s0 0x0000($0)
sw  $s0 0x2FFC($0)

sh  $s0 0x0000($0)
sh  $s0 0x2ffe($0)

sb  $s0 0x0000($0)
sb  $s0 0x2fff($0)

# ADES overflow
sw  $s0 1($s0)
# ADES unaligned
sw  $s0 1($0)
# ADES out of range
sw  $s0 0x3000($0)

# OV
lui $s0 0x7fff
ori $s0 $s0 0xffff
# add
add $s0 $s0 $s0
addi    $s0 $s0 1

lui $s0 0x8000

sub $s0 $0 $s0

# OV delay slot 
beq $0,$0,L2
add $t0,$t0,$t0

L1:
nop
L2:
nop

# ADES Delay slot
jal L3
sw $0,1($0)
# addi $a0,$0,0x1234
# nop
L3:
nop

addi $v1,$v1,1

addi $a1,$a1,0x1234

nop
nop

.ktext 0x00004180
mfc0 $k0 $12
mfc0 $k0 $14
mfc0 $k0 $13
srl $k0 $k0 2
andi $k0 $k0 0x1f
bne $k0 $0 EXCEPTION
nop
INT:
sw $0,0x7F00($0)
sw $0,0x7F10($0)
mfc0 $k1,$14
addiu $k1,$k1,4
mtc0 $k1,$14
eret
addi $k1,$k1,0x1234
EXCEPTION:
mfc0 $k1,$14
addiu $k1,$k1,4
mtc0 $k1,$14
eret