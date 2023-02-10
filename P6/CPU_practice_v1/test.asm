lui $2,34204
ori $2,$2,38383
lui $3,34547
ori $3,$3,49820
lui $4,61051
ori $4,$4,8772
lui $5,44717
ori $5,$5,11172
lui $6,30627
ori $6,$6,56627
lui $7,21160
ori $7,$7,26206
lui $8,30517
ori $8,$8,5863
lui $9,2057
ori $9,$9,9457
lui $10,32443
ori $10,$10,11084
lui $11,6558
ori $11,$11,34986
lui $12,17436
ori $12,$12,44378
lui $13,39906
ori $13,$13,63486
lui $14,24337
ori $14,$14,25473
lui $15,19197
ori $15,$15,56570
lui $16,43679
ori $16,$16,14389
lui $17,21362
ori $17,$17,46587
lui $18,53842
ori $18,$18,31375
lui $19,23474
ori $19,$19,6485
lui $20,14648
ori $20,$20,17012
lui $21,47534
ori $21,$21,63386
lui $22,59720
ori $22,$22,64673
lui $23,51943
ori $23,$23,37518
lui $24,53068
ori $24,$24,27155
lui $25,64969
ori $25,$25,61499
lui $26,4430
ori $26,$26,63996
lui $27,32451
ori $27,$27,9215
sw $7,0($0)
sw $10,4($0)
sw $10,8($0)
sw $8,12($0)
sw $0,16($0)
sw $5,20($0)
sw $7,24($0)
sw $21,28($0)
sw $20,32($0)
sw $2,36($0)
sw $16,40($0)
sw $7,44($0)
sw $0,48($0)
sw $11,52($0)
sw $9,56($0)
sw $17,60($0)
sw $21,64($0)
sw $20,68($0)
sw $17,72($0)
sw $13,76($0)
sw $26,80($0)
sw $7,84($0)
sw $25,88($0)
sw $3,92($0)
sw $13,96($0)
sw $18,100($0)
sw $1,104($0)
sw $1,108($0)
sw $4,112($0)
sw $11,116($0)
sw $17,120($0)
sw $18,124($0)
sw $25,128($0)
sw $8,132($0)
sw $10,136($0)
sw $6,140($0)
sw $0,144($0)
sw $8,148($0)
sw $12,152($0)
sw $20,156($0)
sw $0,160($0)
sw $25,164($0)
sw $6,168($0)
sw $15,172($0)
sw $26,176($0)
sw $2,180($0)
sw $23,184($0)
sw $20,188($0)
sw $10,192($0)
sw $6,196($0)
sw $22,200($0)
sw $19,204($0)
sw $9,208($0)
sw $23,212($0)
sw $3,216($0)
sw $22,220($0)
sw $7,224($0)
sw $3,228($0)
sw $21,232($0)
sw $8,236($0)
sw $12,240($0)
sw $20,244($0)
sw $15,248($0)
sw $8,252($0)
sw $14,256($0)
sw $10,260($0)
sw $6,264($0)
sw $7,268($0)
sw $22,272($0)
sw $15,276($0)
sw $1,280($0)
sw $24,284($0)
sw $11,288($0)
sw $22,292($0)
sw $27,296($0)
sw $1,300($0)
sw $2,304($0)
sw $11,308($0)
sw $1,312($0)
sw $4,316($0)
sw $5,320($0)
sw $20,324($0)
sw $9,328($0)
sw $11,332($0)
sw $27,336($0)
sw $25,340($0)
sw $8,344($0)
sw $16,348($0)
sw $26,352($0)
sw $4,356($0)
sw $2,360($0)
sw $1,364($0)
sw $5,368($0)
sw $8,372($0)
sw $0,376($0)
sw $3,380($0)
sw $27,384($0)
sw $18,388($0)
sw $6,392($0)
sw $0,396($0)
sw $10,400($0)
ori $29,$0,0x00002F00
jal funct
ori $3,$3,100
ori $4,$4,200
funct:
interval0:
mtlo $28
mthi $28
mfhi $28
lbu $28,1836($0)
subu $28,$3,$26
mthi $28
andi $28,$3,30811
lui $3,30972
sh $28,3572($0)
andi $28,$3,44369
sll $28,$3,14
sltiu $28,$3,8
mtlo $28
slti $28,$3,31
mthi $28
sll $28,$3,16
mthi $28
divu $17,$20
nop
bne $29,$7,branch0
ori $3,$3,100
ori $4,$4,200
interval1:
mthi $28
sltu $28,$3,$26
slti $28,$3,13
mult $24,$17
mult $7,$8
sllv $28,$3,$26
nor $28,$3,$26
lb $28,3520($0)
sra $28,$3,5
branch0:
interval2:
mthi $16
mult $3,$13
nop
srl $16,$16,8
mtlo $16
mtlo $16
nop
mtlo $16
sra $16,$16,4
lui $16,48637
srl $16,$16,13
sltiu $16,$16,26
srl $16,$16,11
lui $16,61184
lb $16,7804($0)
jal funct1
ori $3,$3,100
ori $4,$4,200
interval3:
sltiu $16,$16,1
lui $16,36701
sll $16,$16,26
beq $0,$0,interval4
ori $3,$3,100
ori $4,$4,200
funct1:
jr $ra
ori $3,$3,100
ori $4,$4,200
interval4:
nop
lui $9,2156
beq $17,$8,branch2
ori $3,$3,100
ori $4,$4,200
interval5:
mflo $14
branch2:
interval6:
lui $7,33173
mfhi $28
nop
mfhi $28
nop
mtlo $28
subu $28,$7,$20
sll $28,$7,6
divu $9,$21
j branch3
ori $3,$3,100
ori $4,$4,200
interval7:
nop
andi $28,$7,41937
branch3:
interval8:
sllv $28,$15,$6
mfhi $28
nop
sll $28,$15,16
xori $28,$15,52659
nop
multu $9,$27
nop
subu $28,$15,$6
mtlo $28
divu $19,$24
mflo $28
lw $28,1624($0)
lui $15,39763
bne $28,$28,branch4
ori $3,$3,100
ori $4,$4,200
interval9:
lui $15,58463
ori $28,$15,1334
or $28,$15,$6
addi $28,$15,44376
branch4:
interval10:
lui $11,55138
sllv $23,$11,$18
sltiu $23,$11,8
nop
mult $29,$27
mtlo $23
addi $23,$11,867
mfhi $23
div $30,$4
or $23,$11,$18
mfhi $23
mflo $23
sll $23,$11,19
mtlo $23
sra $23,$11,23
mflo $23
j branch5
ori $3,$3,100
ori $4,$4,200
interval11:
mtlo $23
lui $11,53664
sh $23,2668($0)
lb $23,8172($0)
slti $23,$11,11
slt $23,$11,$18
sltiu $23,$11,26
mfhi $23
mult $20,$18
xor $23,$11,$18
addu $23,$11,$18
branch5:
interval12:
divu $14,$21
addi $16,$20,22781
lui $20,58611
sll $16,$20,8
lui $20,34485
lui $20,47724
mthi $16
mtlo $16
multu $23,$21
ori $16,$20,10170
slti $16,$20,13
mfhi $16
lui $20,55007
nop
lbu $16,3996($0)
slti $16,$20,28
mflo $16
bne $25,$3,branch6
ori $3,$3,100
ori $4,$4,200
interval13:
srav $16,$20,$19
addi $16,$20,55601
mflo $16
sltu $16,$20,$19
slti $16,$20,10
lui $20,51394
srl $16,$20,4
mtlo $16
lui $20,12486
lbu $16,5500($0)
or $16,$20,$19
sb $16,76($0)
lui $20,53899
mflo $16
sltiu $16,$20,16
branch6:
interval14:
sll $20,$13,27
mthi $20
sltiu $20,$13,9
bltz $0 branch7
ori $3,$3,100
ori $4,$4,200
interval15:
sltiu $20,$13,9
div $22,$11
lw $20,5848($0)
sll $20,$13,19
addi $20,$13,4100
sh $20,2032($0)
mfhi $20
addi $20,$13,9117
srlv $20,$13,$21
mult $7,$24
mtlo $20
sltiu $20,$13,18
multu $10,$12
divu $5,$16
nop
lbu $20,4708($0)
multu $31,$8
mtlo $20
branch7:
interval16:
multu $16,$10
srl $25,$18,2
nop
div $27,$16
lui $18,30949
bgez $28 branch8
ori $3,$3,100
ori $4,$4,200
interval17:
div $8,$21
mflo $25
mtlo $25
slti $25,$18,24
mfhi $25
mflo $25
slti $25,$18,26
multu $13,$4
mtlo $25
ori $25,$18,721
sll $25,$18,8
sll $25,$18,2
lui $18,62189
branch8:
interval18:
lui $18,51620
mtlo $25
addi $25,$18,41912
lui $18,58075
srlv $25,$18,$17
sra $25,$18,0
nop
mtlo $25
srl $25,$18,26
divu $23,$8
sra $25,$18,15
srl $25,$18,13
lui $18,6174
mthi $25
xori $25,$18,17900
andi $25,$18,21558
mtlo $25
nop
slti $25,$18,8
