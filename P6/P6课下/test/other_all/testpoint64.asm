ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance93
nop
entrance93:
jal block93
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit93
nop
block93:

lh $10 1112($0)
addi $18 $10 2247
sw $18 1116($0)

lh $10 1116($0)
nop
addi $21 $10 3436
sw $21 1120($0)

lh $10 1120($0)
nop
nop
addi $20 $10 3171
sw $20 1124($0)

jalr $2, $ra
nop
exit93:


j entrance94
nop
entrance94:
jal block94
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit94
nop
block94:

lh $5 660($0)
addiu $17 $5 2207
sw $17 1128($0)

lh $5 1128($0)
nop
addiu $16 $5 83
sw $16 1132($0)

lh $5 100($0)
nop
nop
addiu $17 $5 3251
sw $17 1136($0)

jr $ra
nop
exit94:


j entrance95
nop
entrance95:
jal block95
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit95
nop
block95:

lh $5 1136($0)
andi $21 $5 469
sw $21 1140($0)

lh $5 1140($0)
nop
andi $21 $5 1297
sw $21 1144($0)

lh $5 1144($0)
nop
nop
andi $20 $5 2258
sw $20 1148($0)

jr $ra
nop
exit95:


j entrance96
nop
entrance96:
jal block96
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit96
nop
block96:

lh $5 1148($0)
ori $21 $5 1046
sw $21 1152($0)

lh $5 1152($0)
nop
ori $21 $5 636
sw $21 1156($0)

lh $5 1156($0)
nop
nop
ori $22 $5 1053
sw $22 1160($0)

jr $ra
nop
exit96:


j entrance97
nop
entrance97:
jal block97
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit97
nop
block97:

lh $6 1160($0)
xori $17 $6 282
sw $17 1164($0)

lh $6 1164($0)
nop
xori $16 $6 1304
sw $16 1168($0)

lh $6 1168($0)
nop
nop
xori $19 $6 2974
sw $19 1172($0)

jr $ra
nop
exit97:


j entrance98
nop
entrance98:
jal block98
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit98
nop
block98:

lh $4 1172($0)
lui $23 3340
sw $23 1176($0)

lh $4 28($0)
nop
lui $16 1526
sw $16 1180($0)

lh $4 208($0)
nop
nop
lui $18 1599
sw $18 1184($0)

jr $ra
nop
exit98:


j entrance99
nop
entrance99:
jal block99
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit99
nop
block99:

lh $3 1184($0)
slt $1 $3 $3
sw $1 1188($0)

lh $3 1188($0)
nop
slt $1 $3 $3
sw $1 1192($0)

lh $3 1192($0)
nop
nop
slt $1 $3 $3
sw $1 1196($0)

jr $ra
nop
exit99:


j entrance100
nop
entrance100:
jal block100
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit100
nop
block100:

lh $4 1196($0)
slti $16 $4 875
sw $16 1200($0)

lh $4 1200($0)
nop
slti $20 $4 666
sw $20 1204($0)

lh $4 1204($0)
nop
nop
slti $19 $4 2180
sw $19 1208($0)

jr $ra
nop
exit100:


j entrance101
nop
entrance101:
jal block101
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit101
nop
block101:

lh $8 1208($0)
sltiu $21 $8 1268
sw $21 1212($0)

lh $8 1212($0)
nop
sltiu $18 $8 539
sw $18 1216($0)

lh $8 1216($0)
nop
nop
sltiu $19 $8 1832
sw $19 1220($0)

jalr $10, $ra
nop
exit101:


j entrance102
nop
entrance102:
jal block102
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit102
nop
block102:

lh $10 1220($0)
sltu $1 $10 $10
sw $1 1224($0)

lh $10 1224($0)
nop
sltu $1 $10 $10
sw $1 1228($0)

lh $10 1228($0)
nop
nop
sltu $1 $10 $10
sw $1 1232($0)

jalr $28, $ra
nop
exit102:


j entrance103
nop
entrance103:
jal block103
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit103
nop
block103:

lh $7 1232($0)
mthi $7
sw $7 1236($0)

lh $7 1236($0)
nop
mthi $7
sw $7 1240($0)

lh $7 1240($0)
nop
nop
mthi $7
sw $7 1244($0)

jr $ra
nop
exit103:


j entrance104
nop
entrance104:
jal block104
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit104
nop
block104:

lh $1 1244($0)
mtlo $1
sw $1 1248($0)

lh $1 1248($0)
nop
mtlo $1
sw $1 1252($0)

lh $1 1252($0)
nop
nop
mtlo $1
sw $1 1256($0)

jr $ra
nop
exit104:

ori $16 $0 3485
ori $17 $0 990
ori $18 $0 939
ori $19 $0 2328
ori $20 $0 2805
ori $21 $0 477
ori $22 $0 626
ori $23 $0 4109

j entrance105
nop
entrance105:
jal block105
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit105
nop
block105:

lhu $10 968($0)
lb $17 1256($0)
sw $17 1260($0)

lhu $10 1260($0)
nop
lb $21 1260($0)
sw $21 1264($0)

lhu $10 1264($0)
nop
nop
lb $23 1264($0)
sw $23 1268($0)

jalr $29, $ra
nop
exit105:


j entrance106
nop
entrance106:
jal block106
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit106
nop
block106:

lhu $10 48($0)
lbu $20 1268($0)
sw $20 1272($0)

lhu $10 1272($0)
nop
lbu $23 1272($0)
sw $23 1276($0)

lhu $10 1276($0)
nop
nop
lbu $18 1276($0)
sw $18 1280($0)

jalr $2, $ra
nop
exit106:


j entrance107
nop
entrance107:
jal block107
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit107
nop
block107:

lhu $6 1280($0)
lh $23 1280($0)
sw $23 1284($0)

lhu $6 1284($0)
nop
lh $17 1284($0)
sw $17 1288($0)

lhu $6 576($0)
nop
nop
lh $17 1288($0)
sw $17 1292($0)

jalr $25, $ra
nop
exit107:


j entrance108
nop
entrance108:
jal block108
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit108
nop
block108:

lhu $9 1292($0)
lhu $17 1292($0)
sw $17 1296($0)

lhu $9 292($0)
nop
lhu $16 1296($0)
sw $16 1300($0)

lhu $9 1300($0)
nop
nop
lhu $20 1300($0)
sw $20 1304($0)

jr $ra
nop
exit108:


j entrance109
nop
entrance109:
jal block109
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit109
nop
block109:

lhu $3 1304($0)
lw $23 1068($0)
sw $23 1308($0)

lhu $3 940($0)
nop
lw $16 1032($0)
sw $16 1312($0)

lhu $3 1312($0)
nop
nop
lw $19 1312($0)
sw $19 1316($0)

jr $ra
nop
exit109:


j entrance110
nop
entrance110:
jal block110
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit110
nop
block110:

lhu $14 420($0)
add $1 $14 $14
sw $1 1320($0)

lhu $14 1320($0)
nop
add $1 $14 $14
sw $1 1324($0)

lhu $14 1324($0)
nop
nop
add $1 $14 $14
sw $1 1328($0)

jr $ra
nop
exit110:


j entrance111
nop
entrance111:
jal block111
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit111
nop
block111:

lhu $14 1328($0)
addu $1 $14 $14
sw $1 1332($0)

lhu $14 1236($0)
nop
addu $1 $14 $14
sw $1 1336($0)

lhu $14 1336($0)
nop
nop
addu $1 $14 $14
sw $1 1340($0)

jr $ra
nop
exit111:


j entrance112
nop
entrance112:
jal block112
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit112
nop
block112:

lhu $3 1340($0)
sub $1 $3 $3
sw $1 1344($0)

lhu $3 1344($0)
nop
sub $1 $3 $3
sw $1 1348($0)

lhu $3 1348($0)
nop
nop
sub $1 $3 $3
sw $1 1352($0)

jr $ra
nop
exit112:


j entrance113
nop
entrance113:
jal block113
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit113
nop
block113:

lhu $7 380($0)
subu $1 $7 $7
sw $1 1356($0)

lhu $7 1356($0)
nop
subu $1 $7 $7
sw $1 1360($0)

lhu $7 1360($0)
nop
nop
subu $1 $7 $7
sw $1 1364($0)

jalr $4, $ra
nop
exit113:


j entrance114
nop
entrance114:
jal block114
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit114
nop
block114:

lhu $2 1364($0)
mult $2 $2
sw $2 1368($0)

lhu $2 1368($0)
nop
mult $2 $2
sw $2 1372($0)

lhu $2 1372($0)
nop
nop
mult $2 $2
sw $2 1376($0)

jr $ra
nop
exit114:


j entrance115
nop
entrance115:
jal block115
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit115
nop
block115:

lhu $7 1376($0)
multu $7 $7
sw $7 1380($0)

lhu $7 1380($0)
nop
multu $7 $7
sw $7 1384($0)

lhu $7 1384($0)
nop
nop
multu $7 $7
sw $7 1388($0)

jalr $21, $ra
nop
exit115:


j entrance116
nop
entrance116:
jal block116
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit116
nop
block116:

lhu $10 1388($0)
div $10 $10
sw $10 1392($0)

lhu $10 256($0)
nop
div $10 $10
sw $10 1396($0)

lhu $10 1396($0)
nop
nop
div $10 $10
sw $10 1400($0)

jalr $9, $ra
nop
exit116:


j entrance117
nop
entrance117:
jal block117
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit117
nop
block117:

lhu $13 1400($0)
divu $13 $13
sw $13 1404($0)

lhu $13 1404($0)
nop
divu $13 $13
sw $13 1408($0)

lhu $13 1408($0)
nop
nop
divu $13 $13
sw $13 1412($0)

jr $ra
nop
exit117:


j entrance118
nop
entrance118:
jal block118
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit118
nop
block118:

lhu $2 1412($0)
sll $2 $22 28
sw $1 1416($0)

lhu $2 1416($0)
nop
sll $2 $20 19
sw $1 1420($0)

lhu $2 1420($0)
nop
nop
sll $2 $21 14
sw $1 1424($0)

jr $ra
nop
exit118:


j entrance119
nop
entrance119:
jal block119
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit119
nop
block119:

lhu $3 1424($0)
srl $3 $19 22
sw $1 1428($0)

lhu $3 1428($0)
nop
srl $3 $21 12
sw $1 1432($0)

lhu $3 1108($0)
nop
nop
srl $3 $18 21
sw $1 1436($0)

jalr $23, $ra
nop
exit119:


j entrance120
nop
entrance120:
jal block120
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit120
nop
block120:

lhu $11 876($0)
sra $11 $19 13
sw $1 1440($0)

lhu $11 1016($0)
nop
sra $11 $21 27
sw $1 1444($0)

lhu $11 1444($0)
nop
nop
sra $11 $18 11
sw $1 1448($0)

jr $ra
nop
exit120:


j entrance121
nop
entrance121:
jal block121
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit121
nop
block121:

lhu $15 1448($0)
sllv $1 $15 $15
sw $1 1452($0)

lhu $15 92($0)
nop
sllv $1 $15 $15
sw $1 1456($0)

lhu $15 1456($0)
nop
nop
sllv $1 $15 $15
sw $1 1460($0)

jr $ra
nop
exit121:


j entrance122
nop
entrance122:
jal block122
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit122
nop
block122:

lhu $14 1460($0)
srlv $1 $14 $14
sw $1 1464($0)

lhu $14 1464($0)
nop
srlv $1 $14 $14
sw $1 1468($0)

lhu $14 1468($0)
nop
nop
srlv $1 $14 $14
sw $1 1472($0)

jr $ra
nop
exit122:


j entrance123
nop
entrance123:
jal block123
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit123
nop
block123:

lhu $15 384($0)
srav $1 $15 $15
sw $1 1476($0)

lhu $15 1476($0)
nop
srav $1 $15 $15
sw $1 1480($0)

lhu $15 1480($0)
nop
nop
srav $1 $15 $15
sw $1 1484($0)

jalr $16, $ra
nop
exit123: