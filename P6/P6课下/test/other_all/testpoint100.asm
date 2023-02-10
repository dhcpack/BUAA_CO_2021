ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance1209
nop
entrance1209:
jal block1209
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1209
nop
block1209:

mflo $10
and $1 $10 $10
sw $1 10508($0)

mflo $10
nop
and $1 $10 $10
sw $1 10512($0)

mflo $10
nop
nop
and $1 $10 $10
sw $1 10516($0)

jr $ra
nop
exit1209:


j entrance1210
nop
entrance1210:
jal block1210
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit1210
nop
block1210:

mflo $1
or $1 $1 $1
sw $1 10520($0)

mflo $1
nop
or $1 $1 $1
sw $1 10524($0)

mflo $1
nop
nop
or $1 $1 $1
sw $1 10528($0)

jr $ra
nop
exit1210:


j entrance1211
nop
entrance1211:
jal block1211
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit1211
nop
block1211:

mflo $4
xor $1 $4 $4
sw $1 10532($0)

mflo $4
nop
xor $1 $4 $4
sw $1 10536($0)

mflo $4
nop
nop
xor $1 $4 $4
sw $1 10540($0)

jalr $22, $ra
nop
exit1211:


j entrance1212
nop
entrance1212:
jal block1212
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1212
nop
block1212:

mflo $13
nor $1 $13 $13
sw $1 10544($0)

mflo $13
nop
nor $1 $13 $13
sw $1 10548($0)

mflo $13
nop
nop
nor $1 $13 $13
sw $1 10552($0)

jr $ra
nop
exit1212:


j entrance1213
nop
entrance1213:
jal block1213
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit1213
nop
block1213:

mflo $3
addi $18 $3 452
sw $18 10556($0)

mflo $3
nop
addi $22 $3 3160
sw $22 10560($0)

mflo $3
nop
nop
addi $21 $3 3731
sw $21 10564($0)

jr $ra
nop
exit1213:


j entrance1214
nop
entrance1214:
jal block1214
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit1214
nop
block1214:

mflo $15
addiu $16 $15 3720
sw $16 10568($0)

mflo $15
nop
addiu $16 $15 342
sw $16 10572($0)

mflo $15
nop
nop
addiu $23 $15 2871
sw $23 10576($0)

jr $ra
nop
exit1214:


j entrance1215
nop
entrance1215:
jal block1215
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit1215
nop
block1215:

mflo $9
andi $22 $9 1161
sw $22 10580($0)

mflo $9
nop
andi $20 $9 257
sw $20 10584($0)

mflo $9
nop
nop
andi $23 $9 3257
sw $23 10588($0)

jr $ra
nop
exit1215:


j entrance1216
nop
entrance1216:
jal block1216
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit1216
nop
block1216:

mflo $14
ori $16 $14 3456
sw $16 10592($0)

mflo $14
nop
ori $19 $14 1523
sw $19 10596($0)

mflo $14
nop
nop
ori $22 $14 2813
sw $22 10600($0)

jalr $18, $ra
nop
exit1216:


j entrance1217
nop
entrance1217:
jal block1217
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1217
nop
block1217:

mflo $1
xori $22 $1 437
sw $22 10604($0)

mflo $1
nop
xori $20 $1 1418
sw $20 10608($0)

mflo $1
nop
nop
xori $16 $1 2464
sw $16 10612($0)

jr $ra
nop
exit1217:


j entrance1218
nop
entrance1218:
jal block1218
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit1218
nop
block1218:

mflo $12
lui $22 3970
sw $22 10616($0)

mflo $12
nop
lui $16 2259
sw $16 10620($0)

mflo $12
nop
nop
lui $20 3934
sw $20 10624($0)

jr $ra
nop
exit1218:


j entrance1219
nop
entrance1219:
jal block1219
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit1219
nop
block1219:

mflo $8
slt $1 $8 $8
sw $1 10628($0)

mflo $8
nop
slt $1 $8 $8
sw $1 10632($0)

mflo $8
nop
nop
slt $1 $8 $8
sw $1 10636($0)

jalr $21, $ra
nop
exit1219:


j entrance1220
nop
entrance1220:
jal block1220
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1220
nop
block1220:

mflo $6
slti $17 $6 3758
sw $17 10640($0)

mflo $6
nop
slti $21 $6 685
sw $21 10644($0)

mflo $6
nop
nop
slti $22 $6 3407
sw $22 10648($0)

jr $ra
nop
exit1220:


j entrance1221
nop
entrance1221:
jal block1221
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1221
nop
block1221:

mflo $14
sltiu $16 $14 3483
sw $16 10652($0)

mflo $14
nop
sltiu $18 $14 2443
sw $18 10656($0)

mflo $14
nop
nop
sltiu $21 $14 4115
sw $21 10660($0)

jalr $7, $ra
nop
exit1221:


j entrance1222
nop
entrance1222:
jal block1222
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit1222
nop
block1222:

mflo $13
sltu $1 $13 $13
sw $1 10664($0)

mflo $13
nop
sltu $1 $13 $13
sw $1 10668($0)

mflo $13
nop
nop
sltu $1 $13 $13
sw $1 10672($0)

jr $ra
nop
exit1222:


j entrance1223
nop
entrance1223:
jal block1223
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit1223
nop
block1223:

mflo $8
mthi $8
sw $8 10676($0)

mflo $8
nop
mthi $8
sw $8 10680($0)

mflo $8
nop
nop
mthi $8
sw $8 10684($0)

jr $ra
nop
exit1223:


j entrance1224
nop
entrance1224:
jal block1224
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit1224
nop
block1224:

mflo $4
mtlo $4
sw $4 10688($0)

mflo $4
nop
mtlo $4
sw $4 10692($0)

mflo $4
nop
nop
mtlo $4
sw $4 10696($0)

jr $ra
nop
exit1224:

ori $16 $0 3555
ori $17 $0 231
ori $18 $0 2314
ori $19 $0 4322
ori $20 $0 1050
ori $21 $0 1643
ori $22 $0 3147
ori $23 $0 2771

j entrance1225
nop
entrance1225:
jal block1225
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit1225
nop
block1225:

mthi $23
lb $23 7948($0)
sw $23 10700($0)

mthi $20
nop
lb $21 3456($0)
sw $21 10704($0)

mthi $23
nop
nop
lb $21 3084($0)
sw $21 10708($0)

jr $ra
nop
exit1225:


j entrance1226
nop
entrance1226:
jal block1226
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1226
nop
block1226:

mthi $17
lbu $20 3216($0)
sw $20 10712($0)

mthi $22
nop
lbu $22 4068($0)
sw $22 10716($0)

mthi $23
nop
nop
lbu $21 1700($0)
sw $21 10720($0)

jr $ra
nop
exit1226:


j entrance1227
nop
entrance1227:
jal block1227
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit1227
nop
block1227:

mthi $23
lh $19 984($0)
sw $19 10724($0)

mthi $19
nop
lh $23 2132($0)
sw $23 10728($0)

mthi $20
nop
nop
lh $21 968($0)
sw $21 10732($0)

jalr $2, $ra
nop
exit1227:


j entrance1228
nop
entrance1228:
jal block1228
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit1228
nop
block1228:

mthi $20
lhu $19 7484($0)
sw $19 10736($0)

mthi $19
nop
lhu $19 2992($0)
sw $19 10740($0)

mthi $19
nop
nop
lhu $22 3592($0)
sw $22 10744($0)

jalr $8, $ra
nop
exit1228:


j entrance1229
nop
entrance1229:
jal block1229
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit1229
nop
block1229:

mthi $18
lw $23 7552($0)
sw $23 10748($0)

mthi $17
nop
lw $17 7712($0)
sw $17 10752($0)

mthi $19
nop
nop
lw $20 2892($0)
sw $20 10756($0)

jr $ra
nop
exit1229:


j entrance1230
nop
entrance1230:
jal block1230
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit1230
nop
block1230:

mthi $19
add $1 $6 $6
sw $1 10760($0)

mthi $18
nop
add $1 $6 $6
sw $1 10764($0)

mthi $18
nop
nop
add $1 $6 $6
sw $1 10768($0)

jr $ra
nop
exit1230:


j entrance1231
nop
entrance1231:
jal block1231
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1231
nop
block1231:

mthi $21
addu $1 $2 $2
sw $1 10772($0)

mthi $22
nop
addu $1 $2 $2
sw $1 10776($0)

mthi $17
nop
nop
addu $1 $2 $2
sw $1 10780($0)

jr $ra
nop
exit1231:


j entrance1232
nop
entrance1232:
jal block1232
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit1232
nop
block1232:

mthi $23
sub $1 $12 $12
sw $1 10784($0)

mthi $21
nop
sub $1 $12 $12
sw $1 10788($0)

mthi $19
nop
nop
sub $1 $12 $12
sw $1 10792($0)

jalr $18, $ra
nop
exit1232:


j entrance1233
nop
entrance1233:
jal block1233
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit1233
nop
block1233:

mthi $20
subu $1 $3 $3
sw $1 10796($0)

mthi $16
nop
subu $1 $3 $3
sw $1 10800($0)

mthi $18
nop
nop
subu $1 $3 $3
sw $1 10804($0)

jr $ra
nop
exit1233:


j entrance1234
nop
entrance1234:
jal block1234
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit1234
nop
block1234:

mthi $17
mult $14 $14
sw $14 10808($0)

mthi $16
nop
mult $14 $14
sw $14 10812($0)

mthi $22
nop
nop
mult $14 $14
sw $14 10816($0)

jr $ra
nop
exit1234:


j entrance1235
nop
entrance1235:
jal block1235
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1235
nop
block1235:

mthi $20
multu $13 $13
sw $13 10820($0)

mthi $22
nop
multu $13 $13
sw $13 10824($0)

mthi $23
nop
nop
multu $13 $13
sw $13 10828($0)

jr $ra
nop
exit1235:


j entrance1236
nop
entrance1236:
jal block1236
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1236
nop
block1236:

mthi $21
div $4 $4
sw $4 10832($0)

mthi $22
nop
div $4 $4
sw $4 10836($0)

mthi $23
nop
nop
div $4 $4
sw $4 10840($0)

jalr $9, $ra
nop
exit1236:


j entrance1237
nop
entrance1237:
jal block1237
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit1237
nop
block1237:

mthi $20
divu $7 $7
sw $7 10844($0)

mthi $18
nop
divu $7 $7
sw $7 10848($0)

mthi $17
nop
nop
divu $7 $7
sw $7 10852($0)

jalr $15, $ra
nop
exit1237:


j entrance1238
nop
entrance1238:
jal block1238
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit1238
nop
block1238:

mthi $17
sll $7 $23 17
sw $1 10856($0)

mthi $16
nop
sll $7 $21 6
sw $1 10860($0)

mthi $16
nop
nop
sll $7 $16 0
sw $1 10864($0)

jalr $13, $ra
nop
exit1238:


j entrance1239
nop
entrance1239:
jal block1239
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1239
nop
block1239:

mthi $17
srl $10 $20 27
sw $1 10868($0)

mthi $17
nop
srl $10 $17 5
sw $1 10872($0)

mthi $18
nop
nop
srl $10 $20 11
sw $1 10876($0)

jr $ra
nop
exit1239: