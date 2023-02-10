ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance1178
nop
entrance1178:
jal block1178
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit1178
nop
block1178:

mfhi $6
addi $23 $6 3728
sw $23 10136($0)

mfhi $6
nop
addi $19 $6 2726
sw $19 10140($0)

mfhi $6
nop
nop
addi $17 $6 1748
sw $17 10144($0)

jr $ra
nop
exit1178:


j entrance1179
nop
entrance1179:
jal block1179
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1179
nop
block1179:

mfhi $15
addiu $22 $15 2867
sw $22 10148($0)

mfhi $15
nop
addiu $16 $15 3354
sw $16 10152($0)

mfhi $15
nop
nop
addiu $20 $15 1567
sw $20 10156($0)

jalr $9, $ra
nop
exit1179:


j entrance1180
nop
entrance1180:
jal block1180
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1180
nop
block1180:

mfhi $1
andi $20 $1 1421
sw $20 10160($0)

mfhi $1
nop
andi $18 $1 1492
sw $18 10164($0)

mfhi $1
nop
nop
andi $17 $1 1929
sw $17 10168($0)

jalr $3, $ra
nop
exit1180:


j entrance1181
nop
entrance1181:
jal block1181
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit1181
nop
block1181:

mfhi $5
ori $21 $5 3217
sw $21 10172($0)

mfhi $5
nop
ori $21 $5 1873
sw $21 10176($0)

mfhi $5
nop
nop
ori $19 $5 3261
sw $19 10180($0)

jr $ra
nop
exit1181:


j entrance1182
nop
entrance1182:
jal block1182
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit1182
nop
block1182:

mfhi $15
xori $20 $15 1215
sw $20 10184($0)

mfhi $15
nop
xori $18 $15 1410
sw $18 10188($0)

mfhi $15
nop
nop
xori $23 $15 2617
sw $23 10192($0)

jr $ra
nop
exit1182:


j entrance1183
nop
entrance1183:
jal block1183
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit1183
nop
block1183:

mfhi $6
lui $19 3293
sw $19 10196($0)

mfhi $6
nop
lui $16 714
sw $16 10200($0)

mfhi $6
nop
nop
lui $18 698
sw $18 10204($0)

jr $ra
nop
exit1183:


j entrance1184
nop
entrance1184:
jal block1184
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit1184
nop
block1184:

mfhi $3
slt $1 $3 $3
sw $1 10208($0)

mfhi $3
nop
slt $1 $3 $3
sw $1 10212($0)

mfhi $3
nop
nop
slt $1 $3 $3
sw $1 10216($0)

jr $ra
nop
exit1184:


j entrance1185
nop
entrance1185:
jal block1185
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1185
nop
block1185:

mfhi $1
slti $22 $1 3689
sw $22 10220($0)

mfhi $1
nop
slti $17 $1 2582
sw $17 10224($0)

mfhi $1
nop
nop
slti $17 $1 3229
sw $17 10228($0)

jalr $25, $ra
nop
exit1185:


j entrance1186
nop
entrance1186:
jal block1186
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit1186
nop
block1186:

mfhi $14
sltiu $19 $14 2089
sw $19 10232($0)

mfhi $14
nop
sltiu $22 $14 2985
sw $22 10236($0)

mfhi $14
nop
nop
sltiu $18 $14 511
sw $18 10240($0)

jr $ra
nop
exit1186:


j entrance1187
nop
entrance1187:
jal block1187
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit1187
nop
block1187:

mfhi $1
sltu $1 $1 $1
sw $1 10244($0)

mfhi $1
nop
sltu $1 $1 $1
sw $1 10248($0)

mfhi $1
nop
nop
sltu $1 $1 $1
sw $1 10252($0)

jr $ra
nop
exit1187:


j entrance1188
nop
entrance1188:
jal block1188
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1188
nop
block1188:

mfhi $10
mthi $10
sw $10 10256($0)

mfhi $10
nop
mthi $10
sw $10 10260($0)

mfhi $10
nop
nop
mthi $10
sw $10 10264($0)

jalr $25, $ra
nop
exit1188:


j entrance1189
nop
entrance1189:
jal block1189
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit1189
nop
block1189:

mfhi $9
mtlo $9
sw $9 10268($0)

mfhi $9
nop
mtlo $9
sw $9 10272($0)

mfhi $9
nop
nop
mtlo $9
sw $9 10276($0)

jr $ra
nop
exit1189:

ori $16 $0 3323
ori $17 $0 2910
ori $18 $0 1964
ori $19 $0 1406
ori $20 $0 547
ori $21 $0 960
ori $22 $0 2813
ori $23 $0 3012

j entrance1190
nop
entrance1190:
jal block1190
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1190
nop
block1190:

mflo $9
lb $23 1336($0)
sw $23 10280($0)

mflo $9
nop
lb $19 2336($0)
sw $19 10284($0)

mflo $9
nop
nop
lb $17 5708($0)
sw $17 10288($0)

jr $ra
nop
exit1190:


j entrance1191
nop
entrance1191:
jal block1191
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1191
nop
block1191:

mflo $7
lbu $17 1404($0)
sw $17 10292($0)

mflo $7
nop
lbu $18 4524($0)
sw $18 10296($0)

mflo $7
nop
nop
lbu $16 1708($0)
sw $16 10300($0)

jr $ra
nop
exit1191:


j entrance1192
nop
entrance1192:
jal block1192
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit1192
nop
block1192:

mflo $12
lh $16 5052($0)
sw $16 10304($0)

mflo $12
nop
lh $22 2824($0)
sw $22 10308($0)

mflo $12
nop
nop
lh $22 2136($0)
sw $22 10312($0)

jr $ra
nop
exit1192:


j entrance1193
nop
entrance1193:
jal block1193
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1193
nop
block1193:

mflo $14
lhu $20 7996($0)
sw $20 10316($0)

mflo $14
nop
lhu $18 2248($0)
sw $18 10320($0)

mflo $14
nop
nop
lhu $23 5788($0)
sw $23 10324($0)

jr $ra
nop
exit1193:


j entrance1194
nop
entrance1194:
jal block1194
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1194
nop
block1194:

mflo $3
lw $18 6052($0)
sw $18 10328($0)

mflo $3
nop
lw $21 1344($0)
sw $21 10332($0)

mflo $3
nop
nop
lw $21 3032($0)
sw $21 10336($0)

jr $ra
nop
exit1194:


j entrance1195
nop
entrance1195:
jal block1195
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit1195
nop
block1195:

mflo $4
add $1 $4 $4
sw $1 10340($0)

mflo $4
nop
add $1 $4 $4
sw $1 10344($0)

mflo $4
nop
nop
add $1 $4 $4
sw $1 10348($0)

jalr $8, $ra
nop
exit1195:


j entrance1196
nop
entrance1196:
jal block1196
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1196
nop
block1196:

mflo $6
addu $1 $6 $6
sw $1 10352($0)

mflo $6
nop
addu $1 $6 $6
sw $1 10356($0)

mflo $6
nop
nop
addu $1 $6 $6
sw $1 10360($0)

jr $ra
nop
exit1196:


j entrance1197
nop
entrance1197:
jal block1197
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit1197
nop
block1197:

mflo $10
sub $1 $10 $10
sw $1 10364($0)

mflo $10
nop
sub $1 $10 $10
sw $1 10368($0)

mflo $10
nop
nop
sub $1 $10 $10
sw $1 10372($0)

jalr $17, $ra
nop
exit1197:


j entrance1198
nop
entrance1198:
jal block1198
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit1198
nop
block1198:

mflo $5
subu $1 $5 $5
sw $1 10376($0)

mflo $5
nop
subu $1 $5 $5
sw $1 10380($0)

mflo $5
nop
nop
subu $1 $5 $5
sw $1 10384($0)

jr $ra
nop
exit1198:


j entrance1199
nop
entrance1199:
jal block1199
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1199
nop
block1199:

mflo $8
mult $8 $8
sw $8 10388($0)

mflo $8
nop
mult $8 $8
sw $8 10392($0)

mflo $8
nop
nop
mult $8 $8
sw $8 10396($0)

jr $ra
nop
exit1199:


j entrance1200
nop
entrance1200:
jal block1200
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1200
nop
block1200:

mflo $8
multu $8 $8
sw $8 10400($0)

mflo $8
nop
multu $8 $8
sw $8 10404($0)

mflo $8
nop
nop
multu $8 $8
sw $8 10408($0)

jr $ra
nop
exit1200:


j entrance1201
nop
entrance1201:
jal block1201
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit1201
nop
block1201:

mtlo $31
mflo $7
div $7 $7
sw $7 10412($0)

mflo $7
nop
div $7 $7
sw $7 10416($0)

mflo $7
nop
nop
div $7 $7
sw $7 10420($0)

jr $ra
nop
exit1201:


j entrance1202
nop
entrance1202:
jal block1202
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit1202
nop
block1202:

mflo $14
divu $14 $14
sw $14 10424($0)

mflo $14
nop
divu $14 $14
sw $14 10428($0)

mflo $14
nop
nop
divu $14 $14
sw $14 10432($0)

jalr $21, $ra
nop
exit1202:


j entrance1203
nop
entrance1203:
jal block1203
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1203
nop
block1203:

mflo $7
sll $7 $20 25
sw $1 10436($0)

mflo $7
nop
sll $7 $22 7
sw $1 10440($0)

mflo $7
nop
nop
sll $7 $18 14
sw $1 10444($0)

jalr $20, $ra
nop
exit1203:


j entrance1204
nop
entrance1204:
jal block1204
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1204
nop
block1204:

mflo $15
srl $15 $23 15
sw $1 10448($0)

mflo $15
nop
srl $15 $21 24
sw $1 10452($0)

mflo $15
nop
nop
srl $15 $17 1
sw $1 10456($0)

jr $ra
nop
exit1204:


j entrance1205
nop
entrance1205:
jal block1205
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit1205
nop
block1205:

mflo $5
sra $5 $22 10
sw $1 10460($0)

mflo $5
nop
sra $5 $23 22
sw $1 10464($0)

mflo $5
nop
nop
sra $5 $16 17
sw $1 10468($0)

jalr $26, $ra
nop
exit1205:


j entrance1206
nop
entrance1206:
jal block1206
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1206
nop
block1206:

mflo $10
sllv $1 $10 $10
sw $1 10472($0)

mflo $10
nop
sllv $1 $10 $10
sw $1 10476($0)

mflo $10
nop
nop
sllv $1 $10 $10
sw $1 10480($0)

jr $ra
nop
exit1206:


j entrance1207
nop
entrance1207:
jal block1207
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit1207
nop
block1207:

mflo $7
srlv $1 $7 $7
sw $1 10484($0)

mflo $7
nop
srlv $1 $7 $7
sw $1 10488($0)

mflo $7
nop
nop
srlv $1 $7 $7
sw $1 10492($0)

jr $ra
nop
exit1207:


j entrance1208
nop
entrance1208:
jal block1208
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit1208
nop
block1208:

mflo $15
srav $1 $15 $15
sw $1 10496($0)

mflo $15
nop
srav $1 $15 $15
sw $1 10500($0)

mflo $15
nop
nop
srav $1 $15 $15
sw $1 10504($0)

jr $ra
nop
exit1208: