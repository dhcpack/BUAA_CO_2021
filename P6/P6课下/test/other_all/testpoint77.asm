ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance496
nop
entrance496:
jal block496
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit496
nop
block496:

srl $23 $21 26
addu $1 $8 $8
sw $1 5952($0)

srl $22 $17 3
nop
addu $1 $8 $8
sw $1 5956($0)

srl $22 $17 7
nop
nop
addu $1 $8 $8
sw $1 5960($0)

jalr $12, $ra
nop
exit496:


j entrance497
nop
entrance497:
jal block497
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit497
nop
block497:

srl $22 $20 4
sub $1 $1 $1
sw $1 5964($0)

srl $23 $22 5
nop
sub $1 $1 $1
sw $1 5968($0)

srl $22 $21 24
nop
nop
sub $1 $1 $1
sw $1 5972($0)

jr $ra
nop
exit497:


j entrance498
nop
entrance498:
jal block498
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit498
nop
block498:

srl $18 $22 20
subu $1 $7 $7
sw $1 5976($0)

srl $21 $19 2
nop
subu $1 $7 $7
sw $1 5980($0)

srl $23 $19 7
nop
nop
subu $1 $7 $7
sw $1 5984($0)

jr $ra
nop
exit498:


j entrance499
nop
entrance499:
jal block499
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit499
nop
block499:

srl $20 $21 19
mult $13 $13
sw $13 5988($0)

srl $20 $19 8
nop
mult $13 $13
sw $13 5992($0)

srl $17 $17 23
nop
nop
mult $13 $13
sw $13 5996($0)

jr $ra
nop
exit499:


j entrance500
nop
entrance500:
jal block500
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit500
nop
block500:

srl $18 $16 30
multu $13 $13
sw $13 6000($0)

srl $19 $19 29
nop
multu $13 $13
sw $13 6004($0)

srl $19 $20 10
nop
nop
multu $13 $13
sw $13 6008($0)

jr $ra
nop
exit500:


j entrance501
nop
entrance501:
jal block501
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit501
nop
block501:

srl $20 $20 30
div $13 $13
sw $13 6012($0)

srl $16 $22 4
nop
div $13 $13
sw $13 6016($0)

srl $19 $21 23
nop
nop
div $13 $13
sw $13 6020($0)

jr $ra
nop
exit501:


j entrance502
nop
entrance502:
jal block502
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit502
nop
block502:

srl $17 $23 16
divu $6 $6
sw $6 6024($0)

srl $21 $20 18
nop
divu $6 $6
sw $6 6028($0)

srl $19 $18 23
nop
nop
divu $6 $6
sw $6 6032($0)

jr $ra
nop
exit502:


j entrance503
nop
entrance503:
jal block503
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit503
nop
block503:

srl $23 $18 5
sll $6 $22 21
sw $1 6036($0)

srl $21 $17 28
nop
sll $6 $21 27
sw $1 6040($0)

srl $18 $19 2
nop
nop
sll $6 $21 17
sw $1 6044($0)

jr $ra
nop
exit503:


j entrance504
nop
entrance504:
jal block504
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit504
nop
block504:

srl $16 $19 8
srl $4 $18 16
sw $1 6048($0)

srl $17 $18 14
nop
srl $4 $22 6
sw $1 6052($0)

srl $21 $21 11
nop
nop
srl $4 $21 29
sw $1 6056($0)

jr $ra
nop
exit504:


j entrance505
nop
entrance505:
jal block505
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit505
nop
block505:

srl $19 $23 29
sra $14 $18 6
sw $1 6060($0)

srl $20 $22 12
nop
sra $14 $21 25
sw $1 6064($0)

srl $16 $23 20
nop
nop
sra $14 $16 8
sw $1 6068($0)

jalr $30, $ra
nop
exit505:


j entrance506
nop
entrance506:
jal block506
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit506
nop
block506:

srl $23 $21 7
sllv $1 $13 $13
sw $1 6072($0)

srl $23 $17 24
nop
sllv $1 $13 $13
sw $1 6076($0)

srl $18 $21 10
nop
nop
sllv $1 $13 $13
sw $1 6080($0)

jr $ra
nop
exit506:


j entrance507
nop
entrance507:
jal block507
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit507
nop
block507:

srl $19 $20 6
srlv $1 $1 $1
sw $1 6084($0)

srl $18 $22 9
nop
srlv $1 $1 $1
sw $1 6088($0)

srl $19 $22 2
nop
nop
srlv $1 $1 $1
sw $1 6092($0)

jr $ra
nop
exit507:


j entrance508
nop
entrance508:
jal block508
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit508
nop
block508:

srl $18 $21 18
srav $1 $7 $7
sw $1 6096($0)

srl $22 $16 18
nop
srav $1 $7 $7
sw $1 6100($0)

srl $17 $21 21
nop
nop
srav $1 $7 $7
sw $1 6104($0)

jr $ra
nop
exit508:


j entrance509
nop
entrance509:
jal block509
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit509
nop
block509:

srl $18 $23 11
and $1 $6 $6
sw $1 6108($0)

srl $18 $19 22
nop
and $1 $6 $6
sw $1 6112($0)

srl $22 $23 15
nop
nop
and $1 $6 $6
sw $1 6116($0)

jr $ra
nop
exit509:


j entrance510
nop
entrance510:
jal block510
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit510
nop
block510:

srl $21 $22 12
or $1 $12 $12
sw $1 6120($0)

srl $20 $16 19
nop
or $1 $12 $12
sw $1 6124($0)

srl $22 $20 20
nop
nop
or $1 $12 $12
sw $1 6128($0)

jr $ra
nop
exit510:


j entrance511
nop
entrance511:
jal block511
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit511
nop
block511:

srl $22 $17 3
xor $1 $15 $15
sw $1 6132($0)

srl $16 $20 22
nop
xor $1 $15 $15
sw $1 6136($0)

srl $19 $19 19
nop
nop
xor $1 $15 $15
sw $1 6140($0)

jalr $26, $ra
nop
exit511:


j entrance512
nop
entrance512:
jal block512
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit512
nop
block512:

srl $19 $16 6
nor $1 $4 $4
sw $1 6144($0)

srl $20 $17 4
nop
nor $1 $4 $4
sw $1 6148($0)

srl $17 $22 19
nop
nop
nor $1 $4 $4
sw $1 6152($0)

jr $ra
nop
exit512:


j entrance513
nop
entrance513:
jal block513
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit513
nop
block513:

srl $21 $22 16
addi $16 $5 1320
sw $16 6156($0)

srl $21 $18 3
nop
addi $19 $5 602
sw $19 6160($0)

srl $21 $19 9
nop
nop
addi $18 $5 2842
sw $18 6164($0)

jr $ra
nop
exit513:


j entrance514
nop
entrance514:
jal block514
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit514
nop
block514:

srl $18 $21 27
addiu $23 $10 987
sw $23 6168($0)

srl $16 $17 11
nop
addiu $21 $10 3356
sw $21 6172($0)

srl $21 $18 29
nop
nop
addiu $19 $10 2503
sw $19 6176($0)

jalr $3, $ra
nop
exit514:


j entrance515
nop
entrance515:
jal block515
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit515
nop
block515:

srl $19 $23 2
andi $18 $15 1623
sw $18 6180($0)

srl $16 $19 18
nop
andi $16 $15 2270
sw $16 6184($0)

srl $23 $18 8
nop
nop
andi $19 $15 3405
sw $19 6188($0)

jr $ra
nop
exit515:


j entrance516
nop
entrance516:
jal block516
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit516
nop
block516:

srl $18 $17 24
ori $20 $11 1891
sw $20 6192($0)

srl $20 $21 20
nop
ori $19 $11 1834
sw $19 6196($0)

srl $22 $16 29
nop
nop
ori $22 $11 2460
sw $22 6200($0)

jalr $21, $ra
nop
exit516:


j entrance517
nop
entrance517:
jal block517
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit517
nop
block517:

srl $19 $21 24
xori $16 $4 3825
sw $16 6204($0)

srl $21 $16 11
nop
xori $16 $4 3393
sw $16 6208($0)

srl $17 $22 11
nop
nop
xori $17 $4 1274
sw $17 6212($0)

jalr $13, $ra
nop
exit517:


j entrance518
nop
entrance518:
jal block518
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit518
nop
block518:

srl $23 $20 1
lui $18 4104
sw $18 6216($0)

srl $17 $19 7
nop
lui $16 3479
sw $16 6220($0)

srl $20 $19 4
nop
nop
lui $17 3427
sw $17 6224($0)

jr $ra
nop
exit518:


j entrance519
nop
entrance519:
jal block519
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit519
nop
block519:

srl $20 $22 14
slt $1 $8 $8
sw $1 6228($0)

srl $19 $16 19
nop
slt $1 $8 $8
sw $1 6232($0)

srl $23 $20 11
nop
nop
slt $1 $8 $8
sw $1 6236($0)

jr $ra
nop
exit519:


j entrance520
nop
entrance520:
jal block520
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit520
nop
block520:

srl $20 $16 3
slti $20 $13 3821
sw $20 6240($0)

srl $22 $17 30
nop
slti $21 $13 1327
sw $21 6244($0)

srl $17 $23 24
nop
nop
slti $18 $13 179
sw $18 6248($0)

jr $ra
nop
exit520:


j entrance521
nop
entrance521:
jal block521
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit521
nop
block521:

srl $17 $21 7
sltiu $21 $11 799
sw $21 6252($0)

srl $18 $21 19
nop
sltiu $22 $11 119
sw $22 6256($0)

srl $20 $20 10
nop
nop
sltiu $17 $11 3055
sw $17 6260($0)

jalr $5, $ra
nop
exit521:


j entrance522
nop
entrance522:
jal block522
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit522
nop
block522:

srl $23 $20 29
sltu $1 $1 $1
sw $1 6264($0)

srl $21 $17 9
nop
sltu $1 $1 $1
sw $1 6268($0)

srl $22 $20 6
nop
nop
sltu $1 $1 $1
sw $1 6272($0)

jr $ra
nop
exit522:


j entrance523
nop
entrance523:
jal block523
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit523
nop
block523:

srl $16 $22 22
mthi $8
sw $8 6276($0)

srl $19 $21 12
nop
mthi $8
sw $8 6280($0)

srl $17 $16 1
nop
nop
mthi $8
sw $8 6284($0)

jalr $25, $ra
nop
exit523:


j entrance524
nop
entrance524:
jal block524
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit524
nop
block524:

srl $17 $17 17
mtlo $2
sw $2 6288($0)

srl $21 $18 12
nop
mtlo $2
sw $2 6292($0)

srl $22 $23 6
nop
nop
mtlo $2
sw $2 6296($0)

jr $ra
nop
exit524:

ori $16 $0 1048
ori $17 $0 4159
ori $18 $0 2972
ori $19 $0 3657
ori $20 $0 4104
ori $21 $0 359
ori $22 $0 2505
ori $23 $0 358

j entrance525
nop
entrance525:
jal block525
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit525
nop
block525:

sra $17 $18 11
lb $16 4160($0)
sw $16 6300($0)

sra $18 $18 12
nop
lb $19 6300($0)
sw $19 6304($0)

sra $22 $19 10
nop
nop
lb $20 5340($0)
sw $20 6308($0)

jr $ra
nop
exit525:


j entrance526
nop
entrance526:
jal block526
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit526
nop
block526:

sra $19 $19 23
lbu $22 2060($0)
sw $22 6312($0)

sra $16 $18 29
nop
lbu $21 6312($0)
sw $21 6316($0)

sra $20 $19 30
nop
nop
lbu $22 308($0)
sw $22 6320($0)

jr $ra
nop
exit526: