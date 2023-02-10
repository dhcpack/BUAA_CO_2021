ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance1240
nop
entrance1240:
jal block1240
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1240
nop
block1240:

mthi $22
sra $15 $22 29
sw $1 10880($0)

mthi $16
nop
sra $15 $18 13
sw $1 10884($0)

mthi $18
nop
nop
sra $15 $21 27
sw $1 10888($0)

jalr $9, $ra
nop
exit1240:


j entrance1241
nop
entrance1241:
jal block1241
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1241
nop
block1241:

mthi $23
sllv $1 $15 $15
sw $1 10892($0)

mthi $16
nop
sllv $1 $15 $15
sw $1 10896($0)

mthi $20
nop
nop
sllv $1 $15 $15
sw $1 10900($0)

jr $ra
nop
exit1241:


j entrance1242
nop
entrance1242:
jal block1242
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit1242
nop
block1242:

mthi $20
srlv $1 $13 $13
sw $1 10904($0)

mthi $16
nop
srlv $1 $13 $13
sw $1 10908($0)

mthi $23
nop
nop
srlv $1 $13 $13
sw $1 10912($0)

jalr $4, $ra
nop
exit1242:


j entrance1243
nop
entrance1243:
jal block1243
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1243
nop
block1243:

mthi $18
srav $1 $1 $1
sw $1 10916($0)

mthi $21
nop
srav $1 $1 $1
sw $1 10920($0)

mthi $16
nop
nop
srav $1 $1 $1
sw $1 10924($0)

jalr $7, $ra
nop
exit1243:


j entrance1244
nop
entrance1244:
jal block1244
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1244
nop
block1244:

mthi $21
and $1 $9 $9
sw $1 10928($0)

mthi $19
nop
and $1 $9 $9
sw $1 10932($0)

mthi $20
nop
nop
and $1 $9 $9
sw $1 10936($0)

jalr $12, $ra
nop
exit1244:


j entrance1245
nop
entrance1245:
jal block1245
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit1245
nop
block1245:

mthi $23
or $1 $15 $15
sw $1 10940($0)

mthi $21
nop
or $1 $15 $15
sw $1 10944($0)

mthi $23
nop
nop
or $1 $15 $15
sw $1 10948($0)

jr $ra
nop
exit1245:


j entrance1246
nop
entrance1246:
jal block1246
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1246
nop
block1246:

mthi $22
xor $1 $12 $12
sw $1 10952($0)

mthi $19
nop
xor $1 $12 $12
sw $1 10956($0)

mthi $20
nop
nop
xor $1 $12 $12
sw $1 10960($0)

jalr $10, $ra
nop
exit1246:


j entrance1247
nop
entrance1247:
jal block1247
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1247
nop
block1247:

mthi $21
nor $1 $2 $2
sw $1 10964($0)

mthi $22
nop
nor $1 $2 $2
sw $1 10968($0)

mthi $20
nop
nop
nor $1 $2 $2
sw $1 10972($0)

jr $ra
nop
exit1247:


j entrance1248
nop
entrance1248:
jal block1248
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit1248
nop
block1248:

mthi $23
addi $19 $1 791
sw $19 10976($0)

mthi $21
nop
addi $21 $1 247
sw $21 10980($0)

mthi $23
nop
nop
addi $22 $1 3103
sw $22 10984($0)

jr $ra
nop
exit1248:


j entrance1249
nop
entrance1249:
jal block1249
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit1249
nop
block1249:

mthi $23
addiu $18 $1 2303
sw $18 10988($0)

mthi $21
nop
addiu $21 $1 1638
sw $21 10992($0)

mthi $20
nop
nop
addiu $21 $1 249
sw $21 10996($0)

jr $ra
nop
exit1249:


j entrance1250
nop
entrance1250:
jal block1250
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit1250
nop
block1250:

mthi $16
andi $22 $7 1542
sw $22 11000($0)

mthi $23
nop
andi $21 $7 1184
sw $21 11004($0)

mthi $19
nop
nop
andi $22 $7 3239
sw $22 11008($0)

jalr $1, $ra
nop
exit1250:


j entrance1251
nop
entrance1251:
jal block1251
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit1251
nop
block1251:

mthi $16
ori $22 $9 3837
sw $22 11012($0)

mthi $21
nop
ori $17 $9 2799
sw $17 11016($0)

mthi $19
nop
nop
ori $19 $9 3234
sw $19 11020($0)

jr $ra
nop
exit1251:


j entrance1252
nop
entrance1252:
jal block1252
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1252
nop
block1252:

mthi $21
xori $23 $11 844
sw $23 11024($0)

mthi $21
nop
xori $22 $11 653
sw $22 11028($0)

mthi $19
nop
nop
xori $22 $11 2212
sw $22 11032($0)

jr $ra
nop
exit1252:


j entrance1253
nop
entrance1253:
jal block1253
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit1253
nop
block1253:

mthi $23
lui $20 440
sw $20 11036($0)

mthi $21
nop
lui $20 2810
sw $20 11040($0)

mthi $23
nop
nop
lui $22 1905
sw $22 11044($0)

jr $ra
nop
exit1253:


j entrance1254
nop
entrance1254:
jal block1254
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit1254
nop
block1254:

mthi $22
slt $1 $1 $1
sw $1 11048($0)

mthi $17
nop
slt $1 $1 $1
sw $1 11052($0)

mthi $22
nop
nop
slt $1 $1 $1
sw $1 11056($0)

jr $ra
nop
exit1254:


j entrance1255
nop
entrance1255:
jal block1255
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit1255
nop
block1255:

mthi $21
slti $17 $7 2434
sw $17 11060($0)

mthi $16
nop
slti $23 $7 710
sw $23 11064($0)

mthi $20
nop
nop
slti $21 $7 5
sw $21 11068($0)

jr $ra
nop
exit1255:


j entrance1256
nop
entrance1256:
jal block1256
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit1256
nop
block1256:

mthi $19
sltiu $18 $3 1415
sw $18 11072($0)

mthi $21
nop
sltiu $18 $3 2336
sw $18 11076($0)

mthi $21
nop
nop
sltiu $23 $3 2033
sw $23 11080($0)

jr $ra
nop
exit1256:


j entrance1257
nop
entrance1257:
jal block1257
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit1257
nop
block1257:

mthi $20
sltu $1 $14 $14
sw $1 11084($0)

mthi $18
nop
sltu $1 $14 $14
sw $1 11088($0)

mthi $17
nop
nop
sltu $1 $14 $14
sw $1 11092($0)

jalr $26, $ra
nop
exit1257:


j entrance1258
nop
entrance1258:
jal block1258
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1258
nop
block1258:

mthi $20
mthi $9
sw $9 11096($0)

mthi $17
nop
mthi $9
sw $9 11100($0)

mthi $23
nop
nop
mthi $9
sw $9 11104($0)

jr $ra
nop
exit1258:


j entrance1259
nop
entrance1259:
jal block1259
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit1259
nop
block1259:

mthi $16
mtlo $15
sw $15 11108($0)

mthi $23
nop
mtlo $15
sw $15 11112($0)

mthi $23
nop
nop
mtlo $15
sw $15 11116($0)

jalr $2, $ra
nop
exit1259:

ori $16 $0 2445
ori $17 $0 4405
ori $18 $0 914
ori $19 $0 3160
ori $20 $0 591
ori $21 $0 2940
ori $22 $0 2136
ori $23 $0 3199

j entrance1260
nop
entrance1260:
jal block1260
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1260
nop
block1260:

mtlo $18
lb $23 3660($0)
sw $23 11120($0)

mtlo $17
nop
lb $19 5308($0)
sw $19 11124($0)

mtlo $22
nop
nop
lb $16 4248($0)
sw $16 11128($0)

jr $ra
nop
exit1260:


j entrance1261
nop
entrance1261:
jal block1261
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1261
nop
block1261:

mtlo $22
lbu $21 4692($0)
sw $21 11132($0)

mtlo $19
nop
lbu $17 6856($0)
sw $17 11136($0)

mtlo $19
nop
nop
lbu $19 3448($0)
sw $19 11140($0)

jr $ra
nop
exit1261:


j entrance1262
nop
entrance1262:
jal block1262
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit1262
nop
block1262:

mtlo $22
lh $20 6400($0)
sw $20 11144($0)

mtlo $21
nop
lh $18 5940($0)
sw $18 11148($0)

mtlo $20
nop
nop
lh $22 6044($0)
sw $22 11152($0)

jr $ra
nop
exit1262:


j entrance1263
nop
entrance1263:
jal block1263
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1263
nop
block1263:

mtlo $23
lhu $21 5508($0)
sw $21 11156($0)

mtlo $18
nop
lhu $19 24($0)
sw $19 11160($0)

mtlo $16
nop
nop
lhu $19 7312($0)
sw $19 11164($0)

jr $ra
nop
exit1263:


j entrance1264
nop
entrance1264:
jal block1264
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit1264
nop
block1264:

mtlo $21
lw $22 6540($0)
sw $22 11168($0)

mtlo $21
nop
lw $20 1064($0)
sw $20 11172($0)

mtlo $22
nop
nop
lw $18 2336($0)
sw $18 11176($0)

jalr $15, $ra
nop
exit1264:


j entrance1265
nop
entrance1265:
jal block1265
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1265
nop
block1265:

mtlo $23
add $1 $7 $7
sw $1 11180($0)

mtlo $23
nop
add $1 $7 $7
sw $1 11184($0)

mtlo $20
nop
nop
add $1 $7 $7
sw $1 11188($0)

jalr $12, $ra
nop
exit1265:


j entrance1266
nop
entrance1266:
jal block1266
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1266
nop
block1266:

mtlo $16
addu $1 $7 $7
sw $1 11192($0)

mtlo $20
nop
addu $1 $7 $7
sw $1 11196($0)

mtlo $17
nop
nop
addu $1 $7 $7
sw $1 11200($0)

jalr $20, $ra
nop
exit1266:


j entrance1267
nop
entrance1267:
jal block1267
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit1267
nop
block1267:

mtlo $20
sub $1 $13 $13
sw $1 11204($0)

mtlo $23
nop
sub $1 $13 $13
sw $1 11208($0)

mtlo $20
nop
nop
sub $1 $13 $13
sw $1 11212($0)

jr $ra
nop
exit1267:


j entrance1268
nop
entrance1268:
jal block1268
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1268
nop
block1268:

mtlo $16
subu $1 $11 $11
sw $1 11216($0)

mtlo $23
nop
subu $1 $11 $11
sw $1 11220($0)

mtlo $20
nop
nop
subu $1 $11 $11
sw $1 11224($0)

jalr $23, $ra
nop
exit1268:


j entrance1269
nop
entrance1269:
jal block1269
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit1269
nop
block1269:

mtlo $19
mult $1 $1
sw $1 11228($0)

mtlo $16
nop
mult $1 $1
sw $1 11232($0)

mtlo $16
nop
nop
mult $1 $1
sw $1 11236($0)

jr $ra
nop
exit1269:


j entrance1270
nop
entrance1270:
jal block1270
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1270
nop
block1270:

mtlo $16
multu $2 $2
sw $2 11240($0)

mtlo $17
nop
multu $2 $2
sw $2 11244($0)

mtlo $20
nop
nop
multu $2 $2
sw $2 11248($0)

jalr $3, $ra
nop
exit1270: