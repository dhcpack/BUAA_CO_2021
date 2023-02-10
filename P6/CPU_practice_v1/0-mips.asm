lui $2,51204
ori $2,$2,46306
lui $3,41811
ori $3,$3,27884
lui $4,14222
ori $4,$4,950
lui $5,8610
ori $5,$5,38792
lui $6,21089
ori $6,$6,13288
lui $7,57948
ori $7,$7,57323
lui $8,14695
ori $8,$8,52797
lui $9,36857
ori $9,$9,31520
lui $10,42021
ori $10,$10,49932
lui $11,12776
ori $11,$11,54014
lui $12,52845
ori $12,$12,41307
lui $13,57178
ori $13,$13,57869
lui $14,43007
ori $14,$14,39462
lui $15,62198
ori $15,$15,15075
lui $16,25299
ori $16,$16,16032
lui $17,40253
ori $17,$17,10526
lui $18,6739
ori $18,$18,36505
lui $19,53696
ori $19,$19,33571
lui $20,49332
ori $20,$20,15461
lui $21,39688
ori $21,$21,13926
lui $22,52699
ori $22,$22,48831
lui $23,60774
ori $23,$23,22492
lui $24,2662
ori $24,$24,53530
lui $25,49981
ori $25,$25,55360
lui $26,56637
ori $26,$26,19535
lui $27,25441
ori $27,$27,48817
sw $9,0($0)
sw $6,4($0)
sw $26,8($0)
sw $5,12($0)
sw $23,16($0)
sw $23,20($0)
sw $1,24($0)
sw $0,28($0)
sw $4,32($0)
sw $22,36($0)
sw $4,40($0)
sw $17,44($0)
sw $4,48($0)
sw $0,52($0)
sw $13,56($0)
sw $14,60($0)
sw $0,64($0)
sw $22,68($0)
sw $12,72($0)
sw $6,76($0)
sw $25,80($0)
sw $26,84($0)
sw $20,88($0)
sw $3,92($0)
sw $8,96($0)
sw $11,100($0)
sw $10,104($0)
sw $22,108($0)
sw $2,112($0)
sw $8,116($0)
ori $29,$0,0x00002F00
jal funct
ori $3,$3,100
ori $4,$4,200
funct:
interval0:
lui $24,17798
mfhi $17
andi $17,$24,1065
mfhi $17
sll $17,$24,10
nop
sltu $17,$24,$17
srl $17,$24,4
mflo $17
nop
multu $20,$7
multu $22,$21
sltiu $17,$24,13
slt $17,$24,$17
sll $17,$24,21
lui $24,62413
sll $17,$24,8
ori $17,$24,19877
j branch0
ori $3,$3,100
ori $4,$4,200
interval1:
subu $17,$24,$17
lw $17,68($0)
lui $24,59292
nop
divu $14,$13
divu $26,$17
nop
mfhi $17
divu $12,$17
lw $17,3348($0)
lb $17,7252($0)
lui $24,35679
addiu $17,$24,16081
sh $17,2692($0)
lh $17,7960($0)
lui $24,34917
mfhi $17
nop
sltiu $17,$24,10
nop
sllv $17,$24,$17
srl $17,$24,3
mtlo $17
branch0:
interval2:
lbu $31,5212($0)
ori $3,$3,100
ori $4,$4,200
interval3:
mtlo $31
sltiu $31,$19,17
multu $22,$7
srav $31,$19,$6
mtlo $31
sltu $31,$19,$6
sltiu $31,$19,7
mtlo $31
srl $31,$19,22
lui $19,4201
sll $31,$19,20
srl $31,$19,11
nop
lw $31,6240($0)
or $31,$19,$6
lui $19,42274
mtlo $31
lbu $31,1244($0)
sll $31,$19,17
sltiu $31,$19,19
ori $31,$19,38665
lbu $31,4896($0)
sra $31,$19,4
beq $0,$0,interval4
ori $3,$3,100
ori $4,$4,200
funct1:
jr $ra
ori $3,$3,100
ori $4,$4,200
interval4:
mtlo $21
mtlo $21
andi $21,$12,38859
mthi $21
lw $21,1928($0)
nop
mtlo $21
subu $21,$12,$8
mfhi $21
sll $21,$12,14
lbu $21,6784($0)
mtlo $21
sll $21,$12,9
bgez $8 branch2
ori $3,$3,100
ori $4,$4,200
interval5:
lw $21,5516($0)
mflo $21
sh $21,6588($0)
lw $21,6876($0)
sll $21,$12,1
branch2:
interval6:
ori $18,$25,27759
div $10,$25
mfhi $18
multu $26,$27
lui $25,37626
mtlo $18
lui $25,6339
div $23,$25
sra $18,$25,17
lui $25,3395
xor $18,$25,$16
sltiu $18,$25,28
bne $14,$29,branch3
ori $3,$3,100
ori $4,$4,200
interval7:
nop
divu $27,$12
divu $12,$10
lhu $18,6460($0)
xori $18,$25,34042
lui $25,55326
nor $18,$25,$16
mflo $18
divu $5,$21
lui $25,46285
sltiu $18,$25,17
srl $18,$25,24
nop
sh $18,6304($0)
lui $25,55638
lb $18,8028($0)
andi $18,$25,57515
branch3:
interval8:
nop
ori $9,$12,16011
mflo $9
jal funct4
ori $3,$3,100
ori $4,$4,200
interval9:
ori $9,$12,54121
nop
lh $9,5736($0)
nop
slti $9,$12,16
ori $9,$12,53796
nop
div $26,$14
beq $0,$0,interval10
ori $3,$3,100
ori $4,$4,200
funct4:
jr $ra
ori $3,$3,100
ori $4,$4,200
interval10:
mfhi $18
sltiu $18,$15,5
slti $18,$15,20
srl $18,$15,28
sra $18,$15,16
mult $29,$25
mtlo $18
lui $15,2100
andi $18,$15,27144
mfhi $18
srl $18,$15,27
lbu $18,2320($0)
srav $18,$15,$18
sb $18,2988($0)
nop
srl $18,$15,23
xori $18,$15,42299
nop
sra $18,$15,12
slti $18,$15,12
lui $15,59331
mflo $18
andi $18,$15,13214
nop
xori $18,$15,5778
sra $18,$15,29
bne $23,$20,branch5
ori $3,$3,100
ori $4,$4,200
interval11:
lui $15,41580
andi $18,$15,59216
nop
and $18,$15,$18
lui $15,43473
sra $18,$15,8
nop
addiu $18,$15,4178
lhu $18,920($0)
lbu $18,5032($0)
branch5:
interval12:
mfhi $19
xori $19,$22,44383
addiu $19,$22,17322
slti $19,$22,6
jal funct6
ori $3,$3,100
ori $4,$4,200
interval13:
div $24,$2
mtlo $19
mtlo $19
lui $22,44226
lui $22,26807
sltiu $19,$22,22
addiu $19,$22,41340
mflo $19
slti $19,$22,10
nop
lui $22,39994
mthi $19
beq $0,$0,interval14
ori $3,$3,100
ori $4,$4,200
funct6:
jr $ra
ori $3,$3,100
ori $4,$4,200
interval14:
sltiu $21,$12,0
mtlo $21
sra $21,$12,24
mult $20,$10
addiu $21,$12,18698
and $21,$12,$24
multu $30,$8
mflo $21
mfhi $21
xori $21,$12,46026
srlv $21,$12,$24
addiu $21,$12,50922
sltiu $21,$12,31
sra $21,$12,5
sw $21,7520($0)
sltiu $21,$12,1
addiu $21,$12,19700
sh $21,7408($0)
lw $21,2232($0)
nop
mthi $21
addu $21,$12,$24
sra $21,$12,25
beq $18,$1,branch7
ori $3,$3,100
ori $4,$4,200
interval15:
nop
lhu $21,3004($0)
div $20,$15
mthi $21
slti $21,$12,24
nop
lui $12,58348
sltu $21,$12,$24
lui $12,29979
xori $21,$12,17772
mtlo $21
multu $15,$4
mtlo $21
sll $21,$12,26
nop
slti $21,$12,18
addiu $21,$12,17019
divu $2,$25
div $27,$19
andi $21,$12,6799
branch7:
interval16:
nop
slt $8,$18,$13
multu $16,$4
nop
lui $18,32416
sll $8,$18,20
mfhi $8
mflo $8
mthi $8
nop
mfhi $8
ori $8,$18,22954
mtlo $8
xori $8,$18,1261
mtlo $8
lui $18,29411
lb $8,1676($0)
slti $8,$18,3
sll $8,$18,6
sra $8,$18,14
mfhi $8
mflo $8
bltz $26 branch8
ori $3,$3,100
ori $4,$4,200
interval17:
nop
nop
lui $18,55193
nop
divu $11,$13
branch8:
interval18:
lui $23,16592
addu $17,$23,$22
lh $17,1044($0)
sh $17,3256($0)
lhu $17,5060($0)
j branch9
ori $3,$3,100
ori $4,$4,200
interval19:
mthi $17
xori $17,$23,27565
addu $17,$23,$22
mtlo $17
lui $23,59793
sltiu $17,$23,19
addu $17,$23,$22
xor $17,$23,$22
nop
lui $23,56624
sltiu $17,$23,11
branch9:
interval20:
div $4,$11
lui $23,47844
sltiu $17,$23,26
lb $17,2204($0)
srl $17,$23,13
mult $19,$16
mthi $17
mult $29,$15
mtlo $17
mthi $17
ori $17,$23,48111
mthi $17
or $17,$23,$22
lb $17,3644($0)
nop
lui $23,43375
lhu $17,6448($0)
mthi $17
divu $14,$14
mthi $17
addu $17,$23,$22
