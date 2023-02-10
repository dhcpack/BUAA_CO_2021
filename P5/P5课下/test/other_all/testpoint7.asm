lui $8,234
lui $9,234
beq $8,$9,next
ori $4,$0,923
ori $5,$0,432
next:
ori $5,$9,123
lui $10,234
addu $11,$10,$5
sw $10, 0($0)
ori $15,$0,0x0000303c
sw $15,0($0)
lw $13, 0($0)
jr $13
addu $17,$17,$13
addu $17,$17,$13
addu $17,$17,$13

ori $t0,11
addu $t1,$t2,$t0
nop
addu $t2,$t1,$t0