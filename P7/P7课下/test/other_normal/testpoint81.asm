.text
_main:

ori $t0,$0,0x3010
# PC unaligned
jalr $s1 $t0
nop

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
srav $5, $1, $4

# LOAD
lui $s0,0x7fff
ori $s0,$s0,0xffff
# OK
lw  $t0 0x7F00($0)
lw  $t0 0x7F04($0)
lw  $t0 0x7F08($0)
lw  $t0 0x7F10($0)
lw  $t0 0x7F14($0)
lw  $t0 0x7F18($0)

# ADEL out of range
# lw  $t0 0x7F0C($0)
# lw  $t0 0x7F1C($0)
# ADEL timer
# lh  $t0 0x7F08($0)
# lhu $t0 0x7F08($0)
# lb  $t0 0x7F08($0)
# lbu $t0 0x7F08($0)

# STORE
lui $s0 0x7fff
ori $s0 $s0 0xffff
# OK
sw  $0  0x7F00($0)
sw  $0  0x7F04($0)
sw  $0  0x7F10($0)
sw  $0  0x7F14($0)

# ADES out of range
# sw  $s0 0x7F0C($0)
# sw  $s0 0x7F1C($0)
# ADES timer
# sw  $0  0x7F08($0)
# sw  $0  0x7F18($0)

# sh  $0 0x7F00($0)
# sh  $0 0x7F10($0)

# sb  $0 0x7F00($0)
# sb  $0 0x7F10($0)

# Open timer0
ori $t0,$0,3
sw $t0,0x7F04($0)
ori $t0,$0,0x000b #mode 1
sw $t0,0x7F00($0)
sw $0,0($0)
nop
nop #lw $t7,0x7F08($0)
nop
mult $t0 $t0 # INT override ADES
nop
nop #lw $t7,0x7F08($0)

# Open timer1
ori $t0,$0,10
sw $t0,0x7F14($0)
ori $t0,$0,0x0009 #mode 0
sw $t0,0x7F10($0)
sw $0,0($0)
nop
nop #lw $t7,0x7F18($0)
jal end
mtlo $t0 # INT
nop
nop #lw $t7,0x7F18($0)
# lw $t0,-1($0)
end:

addi $v1,$v1,1

# addi $v0,$v0,1

addi $a1,$a1,0x1234


.ktext 0x00004180
mflo $k0
mfc0 $k0 $14
mfc0 $k0 $12
mfc0 $k0 $13
srl $k0 $k0 2
andi $k0 $k0 0x1f
bne $k0 $0 EXCEPTION
nop
INT:
#sw $0,0x7F00($0)
#sw $0,0x7F10($0)
mfc0 $k1,$14
addiu $k1,$k1,0
mtc0 $k1,$14
eret
addi $k1,$k1,0x1234
EXCEPTION:
mfc0 $k0 $13
srl $k0 $k0 31
beq $k0 $0 NODB
nop
DB:
eret
NODB:
mfc0 $k1,$14
addiu $k1,$k1,4
mtc0 $k1,$14
eret