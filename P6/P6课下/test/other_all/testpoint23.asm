ori    $t0, $t0, 11
jal    L1
addu   $t0, $ra, $0
L1:ori    $t0, $t0, 11
jal    L2
ori    $t0, $ra, 11
L2:ori    $t0, $t0, 11
addu   $t1, $t2, $t0
nop
addu   $t2, $t1, $t0
ori    $t0, $t0, 11
addu   $t1, $t2, $t0
nop
ori    $t0, $t1, 1
addu   $a0, $0, $0
nop
lw     $t0, 0($a0)
ori    $t0, $t0, 111
addu   $a0, $0, $0
nop
sw     $t0, 0($a0)
ori    $t1, $t1, 1
addu   $t2, $t1, $0
nop
beq    $t2, $t1, L3
nop
L3:nop
ori    $t1, $0, 12416
addu   $t2, $t1, $0
nop
jr     $t2
nop
ori    $t0, $t0, 11
ori    $t1, $t2, 0
nop
addu   $t2, $t1, $t0
ori    $t0, $t0, 11
ori    $t1, $t2, 0
nop
ori    $t0, $t1, 1
ori    $a0, $0, 0
nop
lw     $t0, 0($a0)
ori    $t0, $t0, 111
ori    $a0, $0, 0
nop
sw     $t0, 0($a0)
ori    $t1, $t1, 1
ori    $t2, $t1, 0
nop
beq    $t2, $t1, L4
nop
L4:nop
ori    $t1, $0, 12520
ori    $t2, $t1, 0
nop
jr     $t2
nop
ori    $t0, $t0, 11
jal    L5
nop
addu   $t0, $ra, $0
L5:ori    $t0, $t0, 11
jal    L6
nop
ori    $t0, $ra, 11
L6:ori    $a0, $0, 12288
jal    L7
subu   $ra, $ra, $a0
L7:lw     $t1, 0($ra)
ori    $t1, $t1, 1
ori    $a0, $0, 12288
jal    L8
subu   $ra, $ra, $a0
L8:sw     $t1, 0($ra)
ori    $t0, $t0, 11
addu   $t1, $t2, $t0
nop
nop
addu   $t2, $t1, $t0
ori    $t0, $t0, 11
addu   $t1, $t2, $t0
nop
nop
ori    $t0, $t1, 1
addu   $a0, $0, $0
nop
nop
lw     $t0, 0($a0)
ori    $t0, $t0, 111
addu   $a0, $0, $0
nop
nop
sw     $t0, 0($a0)
ori    $t1, $t1, 1
addu   $t2, $t1, $0
nop
nop
beq    $t2, $t1, L9
nop
L9:nop
ori    $t1, $0, 12716
addu   $t2, $t1, $0
nop
nop
jr     $t2
nop
ori    $t0, $t0, 11
ori    $t1, $t2, 0
nop
nop
addu   $t2, $t1, $t0
ori    $t0, $t0, 11
ori    $t1, $t2, 0
nop
nop
ori    $t0, $t1, 1
ori    $a0, $0, 0
nop
nop
lw     $t0, 0($a0)
ori    $t0, $t0, 111
ori    $a0, $0, 0
nop
nop
sw     $t0, 0($a0)
ori    $t1, $t1, 1
ori    $t2, $t1, 0
nop
nop
beq    $t2, $t1, L10
nop
L10:nop
ori    $t1, $0, 12844
ori    $t2, $t1, 0
nop
nop
jr     $t2
nop
ori    $t1, $t1, 1
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
nop
addu   $t2, $t1, $t0
ori    $t1, $t1, 1
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
nop
ori    $t0, $t1, 1
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
nop
ori    $t1, $0, 0
lw     $t0, 0($t1)
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
nop
ori    $t1, $0, 0
sw     $t0, 0($t1)
ori    $t1, $t1, 1
ori    $t0, $0, 0
lw     $t1, 0($t0)
ori    $t2, $t1, 0
nop
beq    $t1, $t2, L11
nop
L11:nop
ori    $t0, $0, 0
ori    $t2, $0, 13004
sw     $t2, 0($t0)
lw     $t1, 0($t0)
nop
nop
jr     $t1
nop
ori    $t0, $t0, 11
jal    L12
nop
nop
addu   $t0, $ra, $0
L12:ori    $t0, $t0, 11
jal    L13
nop
nop
ori    $t0, $ra, 11
L13:ori    $a0, $0, 12288
jal    L14
subu   $ra, $ra, $a0
L14:nop
lw     $t1, 0($ra)
ori    $t1, $t1, 1
ori    $a0, $0, 12288
jal    L15
subu   $ra, $ra, $a0
L15:nop
sw     $t1, 0($ra)
ori    $t0, $0, 11
jal    L16
addu   $t0, $0, $ra
L16:ori    $t0, $0, 11
addu   $t1, $t2, $t0
nop
addu   $t2, $t0, $t1
ori    $t0, $0, 111
addu   $a0, $t0, $0
nop
sw     $a0, 0($0)
ori    $t1, $0, 1
addu   $t2, $t1, $0
nop
beq    $t1, $t2, L17
nop
L17:nop
ori    $t0, $0, 11
ori    $t1, $t2, 0
nop
addu   $t2, $t0, $t1
ori    $a0, $0, 111
nop
sw     $a0, 0($0)
ori    $t1, $0, 1
ori    $t2, $t1, 0
nop
beq    $t1, $t2, L18
nop
L18:nop
ori    $t0, $0, 11
jal    L19
nop
addu   $t0, $0, $ra
L19:ori    $t1, $0, 1
ori    $a0, $0, 12288
jal    L20
subu   $ra, $ra, $a0
L20:sw     $ra, 0($0)
ori    $t0, $0, 11
addu   $t1, $t2, $t0
nop
nop
addu   $t2, $t0, $t1
ori    $t0, $0, 111
addu   $a0, $0, $0
nop
nop
sw     $a0, 0($0)
ori    $t1, $0, 1
addu   $t2, $t1, $0
nop
nop
beq    $t1, $t2, L21
nop
L21:nop
ori    $t0, $0, 11
ori    $t1, $t2, 0
nop
nop
addu   $t2, $t0, $t1
ori    $t0, $0, 111
ori    $a0, $0, 0
nop
nop
sw     $a0, 0($0)
ori    $t1, $0, 1
ori    $t2, $t1, 0
nop
nop
beq    $t1, $t2, L22
nop
L22:nop
ori    $t1, $0, 1
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
nop
addu   $t2, $t0, $t1
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
nop
sw     $t1, 0($0)
ori    $t1, $0, 1
ori    $t0, $0, 0
lw     $t1, 0($t0)
ori    $t2, $t1, 0
nop
beq    $t2, $t1, L23
nop
L23:nop
ori    $t0, $0, 11
jal    L24
nop
nop
addu   $t0, $0, $ra
L24:ori    $t1, $0, 1
ori    $a0, $0, 12288
jal    L25
subu   $ra, $ra, $a0
L25:nop
sw     $ra, 0($0)
ori    $t2, $0, 111
addu   $t1, $t2, $t3
subu   $t4, $t1, $0
ori    $t2, $0, 111
subu   $t4, $t2, $0
ori    $t2, $t4, 111
addu   $t1, $t2, $t3
ori    $t1, $0, 0
lw     $t2, 0($t1)
addu   $t1, $t2, $t3
ori    $t1, $0, 0
sw     $t2, 0($t1)
ori    $t2, $0, 111
ori    $t1, $t2, 0
subu   $t4, $t1, $0
ori    $t2, $0, 111
ori    $t4, $t2, 0
ori    $t1, $t2, 3
ori    $t1, $0, 0
lw     $t2, 0($t1)
ori    $t1, $t2, 3
ori    $t1, $0, 0
sw     $t2, 0($t1)
jal    L26
subu   $t1, $ra, $t2
L26:jal    L27
lui    $t8, 11
L27:jal    L28
lw     $0, 0($0)
L28:jal    L29
sw     $0, 0($0)
L29:ori    $t2, $0, 111
addu   $t1, $t2, $t3
nop
subu   $t4, $t1, $0
ori    $t2, $0, 111
subu   $t4, $t2, $0
nop
ori    $t2, $t4, 111
addu   $t1, $t2, $t3
nop
ori    $t1, $0, 0
lw     $t2, 0($t1)
addu   $t1, $t2, $t3
nop
sw     $t2, 0($t1)
ori    $t2, $0, 111
ori    $t1, $t2, 0
nop
subu   $t4, $t1, $0
ori    $t2, $0, 111
nop
ori    $t4, $t2, 0
ori    $t1, $t2, 3
nop
ori    $t1, $0, 0
lw     $t2, 0($t1)
ori    $t1, $t2, 3
nop
ori    $t1, $0, 0
sw     $t2, 0($t1)
ori    $t1, $0, 1
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
addu   $t2, $t1, $t0
ori    $t1, $0, 1
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
ori    $t0, $t1, 1
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
lw     $t0, 0($t1)
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
sw     $t0, 0($t1)
jal    L30
nop
L30:subu   $t1, $ra, $t2
jal    L31
nop
L31:lui    $ra, 111
ori    $t1, $0, 12288
jal    L32
L32:subu   $ra, $ra, $t1
lw     $0, 0($0)
ori    $t1, $0, 12288
jal    L33
L33:subu   $ra, $ra, $t1
sw     $0, 0($0)
ori    $t2, $0, 111
addu   $t1, $t2, $t3
subu   $t4, $0, $t1
addu   $t1, $t2, $t3
ori    $t2, $0, 0
sw     $t1, 0($t2)
ori    $t2, $0, 111
ori    $t1, $t2, 0
subu   $t4, $0, $t1
ori    $t1, $t2, 100
ori    $t1, $0, 0
sw     $t1, 0($t1)
jal    L34
subu   $t1, $t2, $ra
L34:jal    L35
sw     $ra, 0($0)
L35:ori    $t2, $0, 111
addu   $t1, $t2, $t3
nop
subu   $t4, $0, $t1
addu   $t1, $t2, $t3
nop
ori    $t2, $0, 0
sw     $t1, 0($t2)
ori    $t2, $0, 111
ori    $t1, $t2, 0
nop
subu   $t4, $0, $t1
ori    $t1, $t2, 3
nop
ori    $t2, $0, 0
sw     $t1, 0($t2)
ori    $t1, $0, 1
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
addu   $t2, $t0, $t1
ori    $t0, $0, 0
lw     $t1, 0($t0)
nop
sw     $t1, 0($t0)
jal    L36
nop
L36:subu   $t1, $t2, $ra
ori    $t1, $0, 12288
jal    L37
subu   $ra, $ra, $t1
L37:sw     $ra, 0($0)
ori    $t2, $0, 10
addu   $t1, $t2, $t3
sw     $t1, 0($0)
ori    $t2, $0, 10
ori    $t1, $t2, 10
sw     $t1, 0($0)
ori    $t2, $0, 10
lw     $t2, 0($0)
sw     $t2, 0($0)
ori    $t2, $0, 10
jal    L38
sw     $ra, 0($0)
L38:ori    $s0, $0, 1
addu   $s1, $s0, $0
beq    $s0, $s1, L39
nop
L39:nop
ori    $s0, $0, 1
ori    $s1, $s0, 2
beq    $s1, $s0, L40
nop
L40:nop
ori    $s0, $0, 10
lw     $s1, 0($0)
beq    $s1, $s0, L41
nop
L41:nop
ori    $s0, $0, 10
lw     $s1, 0($0)
nop
beq    $s1, $s0, L42
nop
L42:addu   $t0, $t0, $t0
lw     $t2, 0($0)
addu   $t2, $t2, $t2
lw     $t2, 0($0)
ori    $t2, $t2, 100
lw     $t2, 0($0)
ori    $t2, $0, 0
lw     $t3, 0($t2)
lw     $t2, 0($0)
ori    $t2, $0, 0
sw     $t3, 0($t2)
ori    $t3, $0, 12300
lui    $at, 0
ori    $at, $at, 14260
addu   $t2, $0, $at
jr     $t2
nop
ori    $t3, $0, 14276
ori    $t2, $t3, 0
jr     $t2
nop
ori    $t3, $0, 14296
sw     $t3, 0($0)
lw     $t2, 0($0)
jr     $t2
nop
ori    $t3, $0, 14320
sw     $t3, 0($0)
lw     $t2, 0($0)
nop
jr     $t2
nop
ori    $t1, $t1, 1