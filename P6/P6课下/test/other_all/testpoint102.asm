ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance1271
nop
entrance1271:
jal block1271
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1271
nop
block1271:

mtlo $19
div $14 $14
sw $14 11252($0)

mtlo $21
nop
div $14 $14
sw $14 11256($0)

mtlo $18
nop
nop
div $14 $14
sw $14 11260($0)

jr $ra
nop
exit1271:


j entrance1272
nop
entrance1272:
jal block1272
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit1272
nop
block1272:

mtlo $16
divu $1 $1
sw $1 11264($0)

mtlo $18
nop
divu $1 $1
sw $1 11268($0)

mtlo $18
nop
nop
divu $1 $1
sw $1 11272($0)

jalr $29, $ra
nop
exit1272:


j entrance1273
nop
entrance1273:
jal block1273
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit1273
nop
block1273:

mtlo $17
sll $7 $18 3
sw $1 11276($0)

mtlo $20
nop
sll $7 $19 13
sw $1 11280($0)

mtlo $20
nop
nop
sll $7 $23 10
sw $1 11284($0)

jalr $29, $ra
nop
exit1273:


j entrance1274
nop
entrance1274:
jal block1274
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit1274
nop
block1274:

mtlo $23
srl $4 $21 15
sw $1 11288($0)

mtlo $20
nop
srl $4 $19 12
sw $1 11292($0)

mtlo $16
nop
nop
srl $4 $17 12
sw $1 11296($0)

jr $ra
nop
exit1274:


j entrance1275
nop
entrance1275:
jal block1275
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit1275
nop
block1275:

mtlo $16
sra $3 $21 22
sw $1 11300($0)

mtlo $19
nop
sra $3 $20 22
sw $1 11304($0)

mtlo $17
nop
nop
sra $3 $18 17
sw $1 11308($0)

jalr $21, $ra
nop
exit1275:


j entrance1276
nop
entrance1276:
jal block1276
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1276
nop
block1276:

mtlo $17
sllv $1 $11 $11
sw $1 11312($0)

mtlo $16
nop
sllv $1 $11 $11
sw $1 11316($0)

mtlo $21
nop
nop
sllv $1 $11 $11
sw $1 11320($0)

jalr $20, $ra
nop
exit1276:


j entrance1277
nop
entrance1277:
jal block1277
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit1277
nop
block1277:

mtlo $16
srlv $1 $5 $5
sw $1 11324($0)

mtlo $20
nop
srlv $1 $5 $5
sw $1 11328($0)

mtlo $20
nop
nop
srlv $1 $5 $5
sw $1 11332($0)

jalr $4, $ra
nop
exit1277:


j entrance1278
nop
entrance1278:
jal block1278
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit1278
nop
block1278:

mtlo $19
srav $1 $5 $5
sw $1 11336($0)

mtlo $18
nop
srav $1 $5 $5
sw $1 11340($0)

mtlo $21
nop
nop
srav $1 $5 $5
sw $1 11344($0)

jalr $26, $ra
nop
exit1278:


j entrance1279
nop
entrance1279:
jal block1279
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit1279
nop
block1279:

mtlo $19
and $1 $1 $1
sw $1 11348($0)

mtlo $21
nop
and $1 $1 $1
sw $1 11352($0)

mtlo $16
nop
nop
and $1 $1 $1
sw $1 11356($0)

jr $ra
nop
exit1279:


j entrance1280
nop
entrance1280:
jal block1280
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit1280
nop
block1280:

mtlo $18
or $1 $4 $4
sw $1 11360($0)

mtlo $16
nop
or $1 $4 $4
sw $1 11364($0)

mtlo $18
nop
nop
or $1 $4 $4
sw $1 11368($0)

jalr $22, $ra
nop
exit1280:


j entrance1281
nop
entrance1281:
jal block1281
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit1281
nop
block1281:

mtlo $17
xor $1 $15 $15
sw $1 11372($0)

mtlo $22
nop
xor $1 $15 $15
sw $1 11376($0)

mtlo $18
nop
nop
xor $1 $15 $15
sw $1 11380($0)

jr $ra
nop
exit1281:


j entrance1282
nop
entrance1282:
jal block1282
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1282
nop
block1282:

mtlo $16
nor $1 $11 $11
sw $1 11384($0)

mtlo $17
nop
nor $1 $11 $11
sw $1 11388($0)

mtlo $18
nop
nop
nor $1 $11 $11
sw $1 11392($0)

jalr $25, $ra
nop
exit1282:


j entrance1283
nop
entrance1283:
jal block1283
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit1283
nop
block1283:

mtlo $21
addi $22 $10 1108
sw $22 11396($0)

mtlo $16
nop
addi $18 $10 448
sw $18 11400($0)

mtlo $21
nop
nop
addi $20 $10 895
sw $20 11404($0)

jr $ra
nop
exit1283:


j entrance1284
nop
entrance1284:
jal block1284
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit1284
nop
block1284:

mtlo $19
addiu $17 $6 137
sw $17 11408($0)

mtlo $16
nop
addiu $19 $6 1501
sw $19 11412($0)

mtlo $21
nop
nop
addiu $16 $6 1943
sw $16 11416($0)

jr $ra
nop
exit1284:


j entrance1285
nop
entrance1285:
jal block1285
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1285
nop
block1285:

mtlo $17
andi $16 $11 2550
sw $16 11420($0)

mtlo $17
nop
andi $18 $11 1569
sw $18 11424($0)

mtlo $21
nop
nop
andi $23 $11 2822
sw $23 11428($0)

jr $ra
nop
exit1285:


j entrance1286
nop
entrance1286:
jal block1286
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit1286
nop
block1286:

mtlo $19
ori $21 $7 1537
sw $21 11432($0)

mtlo $20
nop
ori $19 $7 3975
sw $19 11436($0)

mtlo $17
nop
nop
ori $22 $7 55
sw $22 11440($0)

jr $ra
nop
exit1286:


j entrance1287
nop
entrance1287:
jal block1287
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit1287
nop
block1287:

mtlo $22
xori $21 $2 2755
sw $21 11444($0)

mtlo $22
nop
xori $22 $2 184
sw $22 11448($0)

mtlo $22
nop
nop
xori $22 $2 3870
sw $22 11452($0)

jr $ra
nop
exit1287:


j entrance1288
nop
entrance1288:
jal block1288
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit1288
nop
block1288:

mtlo $19
lui $20 1398
sw $20 11456($0)

mtlo $20
nop
lui $21 1667
sw $21 11460($0)

mtlo $20
nop
nop
lui $16 3187
sw $16 11464($0)

jr $ra
nop
exit1288:


j entrance1289
nop
entrance1289:
jal block1289
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1289
nop
block1289:

mtlo $20
slt $1 $2 $2
sw $1 11468($0)

mtlo $17
nop
slt $1 $2 $2
sw $1 11472($0)

mtlo $23
nop
nop
slt $1 $2 $2
sw $1 11476($0)

jalr $3, $ra
nop
exit1289:


j entrance1290
nop
entrance1290:
jal block1290
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1290
nop
block1290:

mtlo $23
slti $18 $5 3900
sw $18 11480($0)

mtlo $22
nop
slti $17 $5 166
sw $17 11484($0)

mtlo $23
nop
nop
slti $22 $5 2366
sw $22 11488($0)

jr $ra
nop
exit1290:


j entrance1291
nop
entrance1291:
jal block1291
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit1291
nop
block1291:

mtlo $16
sltiu $18 $6 3004
sw $18 11492($0)

mtlo $20
nop
sltiu $19 $6 1835
sw $19 11496($0)

mtlo $16
nop
nop
sltiu $23 $6 1614
sw $23 11500($0)

jr $ra
nop
exit1291:


j entrance1292
nop
entrance1292:
jal block1292
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit1292
nop
block1292:

mtlo $23
sltu $1 $3 $3
sw $1 11504($0)

mtlo $21
nop
sltu $1 $3 $3
sw $1 11508($0)

mtlo $18
nop
nop
sltu $1 $3 $3
sw $1 11512($0)

jalr $21, $ra
nop
exit1292:


j entrance1293
nop
entrance1293:
jal block1293
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1293
nop
block1293:

mtlo $16
mthi $2
sw $2 11516($0)

mtlo $22
nop
mthi $2
sw $2 11520($0)

mtlo $22
nop
nop
mthi $2
sw $2 11524($0)

jalr $25, $ra
nop
exit1293:


j entrance1294
nop
entrance1294:
jal block1294
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1294
nop
block1294:

mtlo $20
mtlo $9
sw $9 11528($0)

mtlo $17
nop
mtlo $9
sw $9 11532($0)

mtlo $22
nop
nop
mtlo $9
sw $9 11536($0)

jr $ra
nop
exit1294: