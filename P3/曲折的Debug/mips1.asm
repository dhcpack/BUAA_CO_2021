ori $a0,$0,123
ori $a1,$a0,456

lui $a2,123  # +
lui $t0,1000
lui $t1,1111
lui $t3,4589

lui $a3,0xffff
ori $a3,$a3,0xffff  # -

addu $s0,$a0,$a2  # ++
addu $s1,$a0,$a3  # +-
addu $s2,$a3,$a3  # --
subu $s3,$a1,$a2
subu $at,$a3,$a1

ori $t0,$0,0x0000
sw $a0,0($t0)
sw $a1,4($t0)
sw $a2,8($t0)
sw $a3,12($t0)
sw $s0,16($t0)
sw $s1,20($t0)
sw $s2,24($t0)

lw $s2,4($t0)
lw $v0,0($t0)
