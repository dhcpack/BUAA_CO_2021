ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925
j entrance0
nop
entrance0:
jal block0
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit0
nop
block0:

lb $6 0($0)
lb $17 0($0)
sw $17 0($0)

lb $6 0($0)
nop
lb $18 0($0)
sw $18 4($0)

lb $6 4($0)
nop
nop
lb $22 4($0)
sw $22 8($0)

jr $ra
nop
exit0:


j entrance1
nop
entrance1:
jal block1
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit1
nop
block1:

lb $9 8($0)
lbu $23 8($0)
sw $23 12($0)

lb $9 12($0)
nop
lbu $21 12($0)
sw $21 16($0)

lb $9 16($0)
nop
nop
lbu $18 16($0)
sw $18 20($0)

jr $ra
nop
exit1:


j entrance2
nop
entrance2:
jal block2
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit2
nop
block2:

lb $11 20($0)
lh $23 20($0)
sw $23 24($0)

lb $11 24($0)
nop
lh $21 24($0)
sw $21 28($0)

lb $11 28($0)
nop
nop
lh $17 28($0)
sw $17 32($0)

jr $ra
nop
exit2:


j entrance3
nop
entrance3:
jal block3
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit3
nop
block3:

lb $12 32($0)
lhu $16 32($0)
sw $16 36($0)

lb $12 36($0)
nop
lhu $21 36($0)
sw $21 40($0)

lb $12 40($0)
nop
nop
lhu $18 40($0)
sw $18 44($0)

jr $ra
nop
exit3:


j entrance4
nop
entrance4:
jal block4
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit4
nop
block4:

lb $15 44($0)
lw $22 44($0)
sw $22 48($0)

lb $15 48($0)
nop
lw $17 48($0)
sw $17 52($0)

lb $15 52($0)
nop
nop
lw $18 52($0)
sw $18 56($0)

jalr $20, $ra
nop
exit4:


j entrance5
nop
entrance5:
jal block5
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit5
nop
block5:

lb $14 56($0)
add $1 $14 $14
sw $1 60($0)

lb $14 60($0)
nop
add $1 $14 $14
sw $1 64($0)

lb $14 64($0)
nop
nop
add $1 $14 $14
sw $1 68($0)

jr $ra
nop
exit5:


j entrance6
nop
entrance6:
jal block6
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit6
nop
block6:

lb $12 68($0)
addu $1 $12 $12
sw $1 72($0)

lb $12 72($0)
nop
addu $1 $12 $12
sw $1 76($0)

lb $12 76($0)
nop
nop
addu $1 $12 $12
sw $1 80($0)

jr $ra
nop
exit6:


j entrance7
nop
entrance7:
jal block7
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit7
nop
block7:

lb $7 80($0)
sub $1 $7 $7
sw $1 84($0)

lb $7 84($0)
nop
sub $1 $7 $7
sw $1 88($0)

lb $7 88($0)
nop
nop
sub $1 $7 $7
sw $1 92($0)

jr $ra
nop
exit7:


j entrance8
nop
entrance8:
jal block8
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit8
nop
block8:

lb $4 92($0)
subu $1 $4 $4
sw $1 96($0)

lb $4 96($0)
nop
subu $1 $4 $4
sw $1 100($0)

lb $4 100($0)
nop
nop
subu $1 $4 $4
sw $1 104($0)

jr $ra
nop
exit8:


j entrance9
nop
entrance9:
jal block9
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit9
nop
block9:

lb $9 104($0)
mult $9 $9
sw $9 108($0)

lb $9 108($0)
nop
mult $9 $9
sw $9 112($0)

lb $9 112($0)
nop
nop
mult $9 $9
sw $9 116($0)

jr $ra
nop
exit9:


j entrance10
nop
entrance10:
jal block10
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit10
nop
block10:

lb $9 116($0)
multu $9 $9
sw $9 120($0)

lb $9 120($0)
nop
multu $9 $9
sw $9 124($0)

lb $9 124($0)
nop
nop
multu $9 $9
sw $9 128($0)

jr $ra
nop
exit10:


j entrance11
nop
entrance11:
jal block11
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit11
nop
block11:

lb $13 128($0)
div $13 $13
sw $13 132($0)

lb $13 132($0)
nop
div $13 $13
sw $13 136($0)

lb $13 136($0)
nop
nop
div $13 $13
sw $13 140($0)

jr $ra
nop
exit11:


j entrance12
nop
entrance12:
jal block12
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit12
nop
block12:

lb $4 140($0)
divu $4 $4
sw $4 144($0)

lb $4 144($0)
nop
divu $4 $4
sw $4 148($0)

lb $4 148($0)
nop
nop
divu $4 $4
sw $4 152($0)

jr $ra
nop
exit12:


j entrance13
nop
entrance13:
jal block13
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit13
nop
block13:

lb $2 152($0)
sll $2 $20 25
sw $1 156($0)

lb $2 156($0)
nop
sll $2 $19 2
sw $1 160($0)

lb $2 160($0)
nop
nop
sll $2 $21 18
sw $1 164($0)

jalr $11, $ra
nop
exit13:


j entrance14
nop
entrance14:
jal block14
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit14
nop
block14:

lb $13 164($0)
srl $13 $23 17
sw $1 168($0)

lb $13 168($0)
nop
srl $13 $17 23
sw $1 172($0)

lb $13 172($0)
nop
nop
srl $13 $23 7
sw $1 176($0)

jr $ra
nop
exit14:


j entrance15
nop
entrance15:
jal block15
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit15
nop
block15:

lb $2 176($0)
sra $2 $23 2
sw $1 180($0)

lb $2 180($0)
nop
sra $2 $18 20
sw $1 184($0)

lb $2 184($0)
nop
nop
sra $2 $17 23
sw $1 188($0)

jr $ra
nop
exit15:


j entrance16
nop
entrance16:
jal block16
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit16
nop
block16:

lb $14 188($0)
sllv $1 $14 $14
sw $1 192($0)

lb $14 192($0)
nop
sllv $1 $14 $14
sw $1 196($0)

lb $14 196($0)
nop
nop
sllv $1 $14 $14
sw $1 200($0)

jalr $11, $ra
nop
exit16:


j entrance17
nop
entrance17:
jal block17
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit17
nop
block17:

lb $15 200($0)
srlv $1 $15 $15
sw $1 204($0)

lb $15 204($0)
nop
srlv $1 $15 $15
sw $1 208($0)

lb $15 208($0)
nop
nop
srlv $1 $15 $15
sw $1 212($0)

jr $ra
nop
exit17:


j entrance18
nop
entrance18:
jal block18
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit18
nop
block18:

lb $11 212($0)
srav $1 $11 $11
sw $1 216($0)

lb $11 216($0)
nop
srav $1 $11 $11
sw $1 220($0)

lb $11 220($0)
nop
nop
srav $1 $11 $11
sw $1 224($0)

jr $ra
nop
exit18:


j entrance19
nop
entrance19:
jal block19
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit19
nop
block19:

lb $4 224($0)
and $1 $4 $4
sw $1 228($0)

lb $4 228($0)
nop
and $1 $4 $4
sw $1 232($0)

lb $4 232($0)
nop
nop
and $1 $4 $4
sw $1 236($0)

jr $ra
nop
exit19:


j entrance20
nop
entrance20:
jal block20
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit20
nop
block20:

lb $4 236($0)
or $1 $4 $4
sw $1 240($0)

lb $4 240($0)
nop
or $1 $4 $4
sw $1 244($0)

lb $4 244($0)
nop
nop
or $1 $4 $4
sw $1 248($0)

jr $ra
nop
exit20:


j entrance21
nop
entrance21:
jal block21
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit21
nop
block21:

lb $3 248($0)
xor $1 $3 $3
sw $1 252($0)

lb $3 252($0)
nop
xor $1 $3 $3
sw $1 256($0)

lb $3 256($0)
nop
nop
xor $1 $3 $3
sw $1 260($0)

jalr $17, $ra
nop
exit21:


j entrance22
nop
entrance22:
jal block22
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit22
nop
block22:

lb $9 260($0)
nor $1 $9 $9
sw $1 264($0)

lb $9 264($0)
nop
nor $1 $9 $9
sw $1 268($0)

lb $9 268($0)
nop
nop
nor $1 $9 $9
sw $1 272($0)

jr $ra
nop
exit22:


j entrance23
nop
entrance23:
jal block23
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit23
nop
block23:

lb $6 272($0)
addi $22 $6 4056
sw $22 276($0)

lb $6 68($0)
nop
addi $23 $6 2953
sw $23 280($0)

lb $6 280($0)
nop
nop
addi $18 $6 2874
sw $18 284($0)

jr $ra
nop
exit23:


j entrance24
nop
entrance24:
jal block24
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit24
nop
block24:

lb $11 284($0)
addiu $20 $11 3257
sw $20 288($0)

lb $11 288($0)
nop
addiu $21 $11 2915
sw $21 292($0)

lb $11 292($0)
nop
nop
addiu $23 $11 2054
sw $23 296($0)

jalr $24, $ra
nop
exit24:


j entrance25
nop
entrance25:
jal block25
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit25
nop
block25:

lb $3 296($0)
andi $23 $3 1562
sw $23 300($0)

lb $3 300($0)
nop
andi $19 $3 2590
sw $19 304($0)

lb $3 304($0)
nop
nop
andi $17 $3 596
sw $17 308($0)

jr $ra
nop
exit25:


j entrance26
nop
entrance26:
jal block26
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit26
nop
block26:

lb $6 308($0)
ori $18 $6 3487
sw $18 312($0)

lb $6 312($0)
nop
ori $17 $6 3149
sw $17 316($0)

lb $6 316($0)
nop
nop
ori $22 $6 1299
sw $22 320($0)

jalr $18, $ra
nop
exit26:


j entrance27
nop
entrance27:
jal block27
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit27
nop
block27:

lb $11 320($0)
xori $17 $11 2305
sw $17 324($0)

lb $11 324($0)
nop
xori $22 $11 2994
sw $22 328($0)

lb $11 328($0)
nop
nop
xori $21 $11 1056
sw $21 332($0)

jr $ra
nop
exit27:


j entrance28
nop
entrance28:
jal block28
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit28
nop
block28:

lb $3 332($0)
lui $23 2595
sw $23 336($0)

lb $3 336($0)
nop
lui $21 674
sw $21 340($0)

lb $3 340($0)
nop
nop
lui $22 2539
sw $22 344($0)

jr $ra
nop
exit28:


j entrance29
nop
entrance29:
jal block29
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit29
nop
block29:

lb $7 344($0)
slt $1 $7 $7
sw $1 348($0)

lb $7 348($0)
nop
slt $1 $7 $7
sw $1 352($0)

lb $7 352($0)
nop
nop
slt $1 $7 $7
sw $1 356($0)

jr $ra
nop
exit29:


j entrance30
nop
entrance30:
jal block30
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit30
nop
block30:

lb $8 356($0)
slti $20 $8 3596
sw $20 360($0)

lb $8 244($0)
nop
slti $23 $8 3968
sw $23 364($0)

lb $8 364($0)
nop
nop
slti $18 $8 1709
sw $18 368($0)

jr $ra
nop
exit30: