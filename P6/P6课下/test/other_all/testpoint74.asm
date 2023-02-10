ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance403
nop
entrance403:
jal block403
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit403
nop
block403:

div $20 $18
mfhi $9
mflo $9
srav $1 $9 $9
sw $1 4836($0)

div $22 $17
mfhi $9
mflo $9
nop
srav $1 $9 $9
sw $1 4840($0)

div $17 $16
mfhi $9
mflo $9
nop
nop
srav $1 $9 $9
sw $1 4844($0)

jr $ra
nop
exit403:


j entrance404
nop
entrance404:
jal block404
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit404
nop
block404:

div $22 $21
mfhi $9
mflo $9
and $1 $9 $9
sw $1 4848($0)

div $19 $16
mfhi $9
mflo $9
nop
and $1 $9 $9
sw $1 4852($0)

div $19 $18
mfhi $9
mflo $9
nop
nop
and $1 $9 $9
sw $1 4856($0)

jalr $10, $ra
nop
exit404:


j entrance405
nop
entrance405:
jal block405
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit405
nop
block405:

div $16 $17
mfhi $6
mflo $6
or $1 $6 $6
sw $1 4860($0)

div $16 $17
mfhi $6
mflo $6
nop
or $1 $6 $6
sw $1 4864($0)

div $22 $23
mfhi $6
mflo $6
nop
nop
or $1 $6 $6
sw $1 4868($0)

jr $ra
nop
exit405:


j entrance406
nop
entrance406:
jal block406
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit406
nop
block406:

div $18 $22
mfhi $9
mflo $9
xor $1 $9 $9
sw $1 4872($0)

div $21 $23
mfhi $9
mflo $9
nop
xor $1 $9 $9
sw $1 4876($0)

div $20 $21
mfhi $9
mflo $9
nop
nop
xor $1 $9 $9
sw $1 4880($0)

jr $ra
nop
exit406:


j entrance407
nop
entrance407:
jal block407
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit407
nop
block407:

div $22 $16
mfhi $15
mflo $15
nor $1 $15 $15
sw $1 4884($0)

div $21 $20
mfhi $15
mflo $15
nop
nor $1 $15 $15
sw $1 4888($0)

div $21 $18
mfhi $15
mflo $15
nop
nop
nor $1 $15 $15
sw $1 4892($0)

jr $ra
nop
exit407:


j entrance408
nop
entrance408:
jal block408
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit408
nop
block408:

div $21 $19
mfhi $6
mflo $6
addi $17 $6 1378
sw $17 4896($0)

div $17 $23
mfhi $6
mflo $6
nop
addi $17 $6 855
sw $17 4900($0)

div $23 $16
mfhi $6
mflo $6
nop
nop
addi $18 $6 3672
sw $18 4904($0)

jalr $12, $ra
nop
exit408:


j entrance409
nop
entrance409:
jal block409
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit409
nop
block409:

div $17 $21
mfhi $3
mflo $3
addiu $22 $3 3842
sw $22 4908($0)

div $18 $22
mfhi $3
mflo $3
nop
addiu $19 $3 1068
sw $19 4912($0)

div $18 $19
mfhi $3
mflo $3
nop
nop
addiu $18 $3 253
sw $18 4916($0)

jr $ra
nop
exit409:


j entrance410
nop
entrance410:
jal block410
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit410
nop
block410:

div $18 $23
mfhi $7
mflo $7
andi $18 $7 559
sw $18 4920($0)

div $17 $21
mfhi $7
mflo $7
nop
xori $23 $7 410
sw $23 4924($0)

div $16 $23
mfhi $7
mflo $7
nop
nop
andi $18 $7 2934
sw $18 4928($0)

jr $ra
nop
exit410:

ori $18 $0 1310
ori $21 $0 724
ori $23 $0 3925

j entrance411
nop
entrance411:
jal block411
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit411
nop
block411:

div $16 $23
mfhi $14
mflo $14
ori $23 $14 909
sw $23 4932($0)

div $18 $23
mfhi $14
mflo $14
nop
ori $18 $14 3123
sw $18 4936($0)

div $23 $17
mfhi $14
mflo $14
nop
nop
ori $16 $14 281
sw $16 4940($0)

jr $ra
nop
exit411:


j entrance412
nop
entrance412:
jal block412
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit412
nop
block412:

div $19 $22
mfhi $1
mflo $1
xori $20 $1 3250
sw $20 4944($0)

div $16 $22
mfhi $1
mflo $1
nop
xori $19 $1 2023
sw $19 4948($0)

div $21 $22
mfhi $1
mflo $1
nop
nop
xori $23 $1 468
sw $23 4952($0)

jr $ra
nop
exit412:

j entrance413
nop
entrance413:
jal block413
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit413
nop
block413:

div $20 $16
mfhi $14
mflo $14
lui $22 3906
sw $22 4956($0)

div $21 $21
mfhi $14
mflo $14
nop
lui $23 281
sw $23 4960($0)

div $19 $19
mfhi $14
mflo $14
nop
nop
lui $17 1776
sw $17 4964($0)

jr $ra
nop
exit413:

ori $18 $0 1310

j entrance414
nop
entrance414:
jal block414
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit414
nop
block414:

div $19 $19
mfhi $7
mflo $7
slt $1 $7 $7
sw $1 4968($0)

div $17 $22
mfhi $7
mflo $7
nop
slt $1 $7 $7
sw $1 4972($0)

div $17 $19
mfhi $7
mflo $7
nop
nop
slt $1 $7 $7
sw $1 4976($0)

jr $ra
nop
exit414:


j entrance415
nop
entrance415:
jal block415
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit415
nop
block415:

div $19 $21
mfhi $6
mflo $6
slti $20 $6 1505
sw $20 4980($0)

div $23 $20
mfhi $6
mflo $6
nop
slti $17 $6 2019
sw $17 4984($0)

div $21 $16
mfhi $6
mflo $6
nop
nop
slti $19 $6 716
sw $19 4988($0)

jr $ra
nop
exit415:

ori $16 $0 144
ori $17 $0 3621
ori $19 $0 3802
ori $20 $0 3804

j entrance416
nop
entrance416:
jal block416
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit416
nop
block416:

div $20 $20
mfhi $15
mflo $15
sltiu $16 $15 2959
sw $16 4992($0)

div $20 $20
mfhi $15
mflo $15
nop
sltiu $23 $15 3276
sw $23 4996($0)

div $18 $19
mfhi $15
mflo $15
nop
nop
sltiu $20 $15 653
sw $20 5000($0)

jr $ra
nop
exit416:

ori $16 $0 144
ori $20 $0 3804
ori $23 $0 3925

j entrance417
nop
entrance417:
jal block417
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit417
nop
block417:

div $17 $20
mfhi $5
mflo $5
sltu $1 $5 $5
sw $1 5004($0)

div $22 $21
mfhi $5
mflo $5
nop
sltu $1 $5 $5
sw $1 5008($0)

div $19 $18
mfhi $5
mflo $5
nop
nop
sltu $1 $5 $5
sw $1 5012($0)

jalr $8, $ra
nop
exit417:


j entrance418
nop
entrance418:
jal block418
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit418
nop
block418:

div $22 $19
mfhi $5
mflo $5
mthi $5
sw $5 5016($0)

div $17 $19
mfhi $5
mflo $5
nop
mthi $5
sw $5 5020($0)

div $17 $21
mfhi $5
mflo $5
nop
nop
mthi $5
sw $5 5024($0)

jalr $25, $ra
nop
exit418:


j entrance419
nop
entrance419:
jal block419
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit419
nop
block419:

div $17 $22
mfhi $11
mflo $11
mtlo $11
sw $11 5028($0)

div $23 $21
mfhi $11
mflo $11
nop
mtlo $11
sw $11 5032($0)

div $18 $18
mfhi $11
mflo $11
nop
nop
mtlo $11
sw $11 5036($0)

jalr $11, $ra
nop
exit419:

ori $16 $0 134
ori $17 $0 3847
ori $18 $0 2530
ori $19 $0 3079
ori $20 $0 1010
ori $21 $0 748
ori $22 $0 467
ori $23 $0 1364

j entrance420
nop
entrance420:
jal block420
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit420
nop
block420:

divu $20 $22
mfhi $14
mflo $14
lb $23 2252($0)
sw $23 5040($0)
ori $23 $0 1364

divu $18 $20
mfhi $14
mflo $14
nop
lb $16 4520($0)
sw $16 5044($0)

divu $19 $23
mfhi $14
mflo $14
nop
nop
lb $18 5044($0)
sw $18 5048($0)

jalr $29, $ra
nop
exit420:

ori $16 $0 134
ori $18 $0 2530
ori $23 $0 1364

j entrance421
nop
entrance421:
jal block421
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit421
nop
block421:

divu $19 $22
mfhi $14
mflo $14
lbu $18 5048($0)
sw $18 5052($0)

divu $17 $21
mfhi $14
mflo $14
nop
lbu $19 744($0)
sw $19 5056($0)

divu $22 $20
mfhi $14
mflo $14
nop
nop
lbu $18 2556($0)
sw $18 5060($0)

jr $ra
nop
exit421:

ori $18 $0 2530
ori $19 $0 3079

j entrance422
nop
entrance422:
jal block422
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit422
nop
block422:

divu $20 $16
mfhi $9
mflo $9
lh $17 5060($0)
sw $17 5064($0)
ori $17 $0 3847

divu $22 $18
mfhi $9
mflo $9
nop
lh $20 128($0)
sw $20 5068($0)

divu $21 $17
mfhi $9
mflo $9
nop
nop
lh $22 4524($0)
sw $22 5072($0)

jr $ra
nop
exit422:

ori $17 $0 3847
ori $20 $0 1010
ori $22 $0 467

j entrance423
nop
entrance423:
jal block423
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit423
nop
block423:

divu $19 $17
mfhi $7
mflo $7
lhu $23 5072($0)
sw $23 5076($0)

divu $17 $16
mfhi $7
mflo $7
nop
lhu $19 2496($0)
sw $19 5080($0)

divu $20 $20
mfhi $7
mflo $7
nop
nop
lhu $17 5080($0)
sw $17 5084($0)

jr $ra
nop
exit423:

ori $17 $0 3847
ori $19 $0 3079
ori $23 $0 1364

j entrance424
nop
entrance424:
jal block424
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit424
nop
block424:

divu $16 $16
mfhi $9
mflo $9
lw $23 544($0)
sw $23 5088($0)
ori $23 $0 1364

divu $17 $23
mfhi $9
mflo $9
nop
lw $16 84($0)
sw $16 5092($0)

divu $20 $17
mfhi $9
mflo $9
nop
nop
lw $16 440($0)
sw $16 5096($0)

jr $ra
nop
exit424:

ori $16 $0 134
ori $23 $0 1364

j entrance425
nop
entrance425:
jal block425
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit425
nop
block425:

divu $22 $20
mfhi $13
mflo $13
add $1 $13 $13
sw $1 5100($0)

divu $17 $19
mfhi $13
mflo $13
nop
add $1 $13 $13
sw $1 5104($0)

divu $19 $16
mfhi $13
mflo $13
nop
nop
add $1 $13 $13
sw $1 5108($0)

jr $ra
nop
exit425:

ori $22 $0 467

j entrance426
nop
entrance426:
jal block426
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit426
nop
block426:

divu $23 $19
mfhi $9
mflo $9
addu $1 $9 $9
sw $1 5112($0)

divu $22 $23
mfhi $9
mflo $9
nop
addu $1 $9 $9
sw $1 5116($0)

divu $16 $16
mfhi $9
mflo $9
nop
nop
addu $1 $9 $9
sw $1 5120($0)

jr $ra
nop
exit426:


j entrance427
nop
entrance427:
jal block427
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit427
nop
block427:

divu $18 $20
mfhi $13
mflo $13
sub $1 $13 $13
sw $1 5124($0)

divu $21 $16
mfhi $13
mflo $13
nop
sub $1 $13 $13
sw $1 5128($0)

divu $17 $20
mfhi $13
mflo $13
nop
nop
sub $1 $13 $13
sw $1 5132($0)

jr $ra
nop
exit427:


j entrance428
nop
entrance428:
jal block428
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit428
nop
block428:

divu $23 $21
mfhi $12
mflo $12
subu $1 $12 $12
sw $1 5136($0)

divu $17 $17
mfhi $12
mflo $12
nop
subu $1 $12 $12
sw $1 5140($0)

divu $23 $17
mfhi $12
mflo $12
nop
nop
subu $1 $12 $12
sw $1 5144($0)

jr $ra
nop
exit428:


j entrance429
nop
entrance429:
jal block429
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit429
nop
block429:

divu $16 $20
mfhi $15
mflo $15
mult $15 $15
sw $15 5148($0)

divu $20 $23
mfhi $15
mflo $15
nop
mult $15 $15
sw $15 5152($0)

divu $16 $20
mfhi $15
mflo $15
nop
nop
mult $15 $15
sw $15 5156($0)

jr $ra
nop
exit429:

ori $20 $0 1010

j entrance430
nop
entrance430:
jal block430
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit430
nop
block430:

divu $19 $23
mfhi $14
mflo $14
multu $14 $14
sw $14 5160($0)

divu $17 $21
mfhi $14
mflo $14
nop
multu $14 $14
sw $14 5164($0)

divu $17 $19
mfhi $14
mflo $14
nop
nop
multu $14 $14
sw $14 5168($0)

jalr $20, $ra
nop
exit430:

ori $20 $0 1364

j entrance431
nop
entrance431:
jal block431
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit431
nop
block431:

divu $23 $19
mfhi $9
mflo $9
div $9 $9
sw $9 5172($0)

divu $20 $17
mfhi $9
mflo $9
nop
div $9 $9
sw $9 5176($0)

divu $23 $19
mfhi $9
mflo $9
nop
nop
div $9 $9
sw $9 5180($0)

jr $ra
nop
exit431:

ori $19 $0 3079

j entrance432
nop
entrance432:
jal block432
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit432
nop
block432:

divu $21 $18
mfhi $3
mflo $3
divu $3 $3
sw $3 5184($0)

divu $20 $23
mfhi $3
mflo $3
nop
divu $3 $3
sw $3 5188($0)

divu $17 $19
mfhi $3
mflo $3
nop
nop
divu $3 $3
sw $3 5192($0)

jr $ra
nop
exit432:


j entrance433
nop
entrance433:
jal block433
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit433
nop
block433:

divu $17 $20
mfhi $13
mflo $13
sll $13 $19 14
sw $1 5196($0)

divu $22 $19
mfhi $13
mflo $13
nop
sll $13 $19 13
sw $1 5200($0)

divu $22 $19
mfhi $13
mflo $13
nop
nop
sll $13 $18 10
sw $1 5204($0)

jalr $20, $ra
nop
exit433: