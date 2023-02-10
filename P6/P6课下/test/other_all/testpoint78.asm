ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance527
nop
entrance527:
jal block527
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit527
nop
block527:

sra $20 $21 3
lh $21 6320($0)
sw $21 6324($0)

sra $22 $20 22
nop
lh $19 2148($0)
sw $19 6328($0)

sra $17 $23 21
nop
nop
lh $18 4596($0)
sw $18 6332($0)

jalr $3, $ra
nop
exit527:


j entrance528
nop
entrance528:
jal block528
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit528
nop
block528:

sra $20 $19 21
lhu $21 2504($0)
sw $21 6336($0)

sra $22 $16 30
nop
lhu $21 4272($0)
sw $21 6340($0)

sra $19 $21 20
nop
nop
lhu $18 4916($0)
sw $18 6344($0)

jr $ra
nop
exit528:


j entrance529
nop
entrance529:
jal block529
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit529
nop
block529:

sra $21 $19 29
lw $21 3916($0)
sw $21 6348($0)

sra $16 $23 27
nop
lw $17 2424($0)
sw $17 6352($0)

sra $16 $21 2
nop
nop
lw $17 5424($0)
sw $17 6356($0)

jalr $6, $ra
nop
exit529:


j entrance530
nop
entrance530:
jal block530
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit530
nop
block530:

sra $21 $22 6
add $1 $2 $2
sw $1 6360($0)

sra $19 $19 21
nop
add $1 $2 $2
sw $1 6364($0)

sra $21 $19 3
nop
nop
add $1 $2 $2
sw $1 6368($0)

jalr $8, $ra
nop
exit530:


j entrance531
nop
entrance531:
jal block531
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit531
nop
block531:

sra $19 $18 31
addu $1 $9 $9
sw $1 6372($0)

sra $21 $18 26
nop
addu $1 $9 $9
sw $1 6376($0)

sra $22 $21 21
nop
nop
addu $1 $9 $9
sw $1 6380($0)

jalr $19, $ra
nop
exit531:


j entrance532
nop
entrance532:
jal block532
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit532
nop
block532:

sra $18 $20 14
sub $1 $7 $7
sw $1 6384($0)

sra $18 $18 1
nop
sub $1 $7 $7
sw $1 6388($0)

sra $18 $20 27
nop
nop
sub $1 $7 $7
sw $1 6392($0)

jr $ra
nop
exit532:


j entrance533
nop
entrance533:
jal block533
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit533
nop
block533:

sra $19 $16 16
subu $1 $8 $8
sw $1 6396($0)

sra $19 $17 27
nop
subu $1 $8 $8
sw $1 6400($0)

sra $17 $16 19
nop
nop
subu $1 $8 $8
sw $1 6404($0)

jalr $4, $ra
nop
exit533:


j entrance534
nop
entrance534:
jal block534
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit534
nop
block534:

sra $23 $21 25
mult $10 $10
sw $10 6408($0)

sra $16 $22 20
nop
mult $10 $10
sw $10 6412($0)

sra $22 $22 18
nop
nop
mult $10 $10
sw $10 6416($0)

jr $ra
nop
exit534:


j entrance535
nop
entrance535:
jal block535
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit535
nop
block535:

sra $17 $19 14
multu $13 $13
sw $13 6420($0)

sra $21 $23 16
nop
multu $13 $13
sw $13 6424($0)

sra $21 $23 10
nop
nop
multu $13 $13
sw $13 6428($0)

jr $ra
nop
exit535:


j entrance536
nop
entrance536:
jal block536
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit536
nop
block536:

sra $16 $17 7
div $4 $4
sw $4 6432($0)

sra $18 $18 1
nop
div $4 $4
sw $4 6436($0)

sra $16 $20 12
nop
nop
div $4 $4
sw $4 6440($0)

jr $ra
nop
exit536:


j entrance537
nop
entrance537:
jal block537
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit537
nop
block537:

sra $18 $21 0
divu $1 $1
sw $1 6444($0)

sra $16 $22 31
nop
divu $1 $1
sw $1 6448($0)

sra $22 $22 17
nop
nop
divu $1 $1
sw $1 6452($0)

jalr $25, $ra
nop
exit537:


j entrance538
nop
entrance538:
jal block538
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit538
nop
block538:

sra $19 $17 5
sll $7 $19 24
sw $1 6456($0)

sra $18 $22 6
nop
sll $7 $21 9
sw $1 6460($0)

sra $21 $22 13
nop
nop
sll $7 $20 0
sw $1 6464($0)

jr $ra
nop
exit538:


j entrance539
nop
entrance539:
jal block539
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit539
nop
block539:

sra $20 $22 15
srl $11 $17 26
sw $1 6468($0)

sra $16 $20 22
nop
srl $11 $18 18
sw $1 6472($0)

sra $17 $22 23
nop
nop
srl $11 $20 13
sw $1 6476($0)

jr $ra
nop
exit539:


j entrance540
nop
entrance540:
jal block540
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit540
nop
block540:

sra $22 $23 3
sra $7 $17 29
sw $1 6480($0)

sra $23 $22 19
nop
sra $7 $18 26
sw $1 6484($0)

sra $18 $16 17
nop
nop
sra $7 $19 3
sw $1 6488($0)

jalr $5, $ra
nop
exit540:


j entrance541
nop
entrance541:
jal block541
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit541
nop
block541:

sra $19 $19 7
sllv $1 $8 $8
sw $1 6492($0)

sra $17 $17 21
nop
sllv $1 $8 $8
sw $1 6496($0)

sra $20 $21 23
nop
nop
sllv $1 $8 $8
sw $1 6500($0)

jr $ra
nop
exit541:


j entrance542
nop
entrance542:
jal block542
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit542
nop
block542:

sra $18 $18 27
srlv $1 $4 $4
sw $1 6504($0)

sra $17 $16 14
nop
srlv $1 $4 $4
sw $1 6508($0)

sra $19 $17 16
nop
nop
srlv $1 $4 $4
sw $1 6512($0)

jalr $18, $ra
nop
exit542:


j entrance543
nop
entrance543:
jal block543
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit543
nop
block543:

sra $19 $22 12
srav $1 $6 $6
sw $1 6516($0)

sra $22 $18 15
nop
srav $1 $6 $6
sw $1 6520($0)

sra $20 $22 22
nop
nop
srav $1 $6 $6
sw $1 6524($0)

jr $ra
nop
exit543:


j entrance544
nop
entrance544:
jal block544
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit544
nop
block544:

sra $20 $19 24
and $1 $3 $3
sw $1 6528($0)

sra $17 $18 7
nop
and $1 $3 $3
sw $1 6532($0)

sra $18 $20 4
nop
nop
and $1 $3 $3
sw $1 6536($0)

jalr $25, $ra
nop
exit544:


j entrance545
nop
entrance545:
jal block545
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit545
nop
block545:

sra $19 $21 6
or $1 $14 $14
sw $1 6540($0)

sra $17 $23 12
nop
or $1 $14 $14
sw $1 6544($0)

sra $22 $16 3
nop
nop
or $1 $14 $14
sw $1 6548($0)

jr $ra
nop
exit545:


j entrance546
nop
entrance546:
jal block546
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit546
nop
block546:

sra $18 $16 9
xor $1 $2 $2
sw $1 6552($0)

sra $23 $21 27
nop
xor $1 $2 $2
sw $1 6556($0)

sra $17 $21 25
nop
nop
xor $1 $2 $2
sw $1 6560($0)

jr $ra
nop
exit546:


j entrance547
nop
entrance547:
jal block547
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit547
nop
block547:

sra $16 $19 24
nor $1 $3 $3
sw $1 6564($0)

sra $16 $21 27
nop
nor $1 $3 $3
sw $1 6568($0)

sra $23 $19 24
nop
nop
nor $1 $3 $3
sw $1 6572($0)

jr $ra
nop
exit547:


j entrance548
nop
entrance548:
jal block548
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit548
nop
block548:

sra $16 $17 21
addi $23 $3 1929
sw $23 6576($0)

sra $16 $20 27
nop
addi $19 $3 2200
sw $19 6580($0)

sra $21 $21 10
nop
nop
addi $17 $3 2624
sw $17 6584($0)

jalr $9, $ra
nop
exit548:


j entrance549
nop
entrance549:
jal block549
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit549
nop
block549:

sra $21 $20 21
addiu $19 $9 3642
sw $19 6588($0)

sra $16 $18 18
nop
addiu $17 $9 2403
sw $17 6592($0)

sra $16 $22 8
nop
nop
addiu $23 $9 494
sw $23 6596($0)

jr $ra
nop
exit549:


j entrance550
nop
entrance550:
jal block550
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit550
nop
block550:

sra $23 $17 9
andi $21 $15 3781
sw $21 6600($0)

sra $20 $17 20
nop
andi $19 $15 3953
sw $19 6604($0)

sra $22 $18 22
nop
nop
andi $20 $15 751
sw $20 6608($0)

jr $ra
nop
exit550:


j entrance551
nop
entrance551:
jal block551
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit551
nop
block551:

sra $17 $23 13
ori $21 $15 10
sw $21 6612($0)

sra $23 $16 18
nop
ori $23 $15 916
sw $23 6616($0)

sra $17 $17 19
nop
nop
ori $23 $15 897
sw $23 6620($0)

jalr $1, $ra
nop
exit551:


j entrance552
nop
entrance552:
jal block552
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit552
nop
block552:

sra $19 $20 5
xori $16 $3 2081
sw $16 6624($0)

sra $19 $22 17
nop
xori $22 $3 3744
sw $22 6628($0)

sra $16 $17 20
nop
nop
xori $18 $3 1403
sw $18 6632($0)

jr $ra
nop
exit552:


j entrance553
nop
entrance553:
jal block553
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit553
nop
block553:

sra $19 $19 3
lui $19 315
sw $19 6636($0)

sra $20 $23 28
nop
lui $16 1099
sw $16 6640($0)

sra $20 $17 19
nop
nop
lui $16 3905
sw $16 6644($0)

jr $ra
nop
exit553:


j entrance554
nop
entrance554:
jal block554
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit554
nop
block554:

sra $18 $22 31
slt $1 $10 $10
sw $1 6648($0)

sra $16 $20 15
nop
slt $1 $10 $10
sw $1 6652($0)

sra $16 $19 25
nop
nop
slt $1 $10 $10
sw $1 6656($0)

jr $ra
nop
exit554:


j entrance555
nop
entrance555:
jal block555
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit555
nop
block555:

sra $23 $22 7
slti $20 $8 830
sw $20 6660($0)

sra $23 $22 21
nop
slti $18 $8 224
sw $18 6664($0)

sra $19 $22 2
nop
nop
slti $20 $8 1757
sw $20 6668($0)

jr $ra
nop
exit555:


j entrance556
nop
entrance556:
jal block556
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit556
nop
block556:

sra $16 $17 11
sltiu $17 $5 1547
sw $17 6672($0)

sra $19 $16 20
nop
sltiu $16 $5 379
sw $16 6676($0)

sra $23 $16 7
nop
nop
sltiu $22 $5 1324
sw $22 6680($0)

jalr $3, $ra
nop
exit556:


j entrance557
nop
entrance557:
jal block557
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit557
nop
block557:

sra $19 $18 16
sltu $1 $1 $1
sw $1 6684($0)

sra $19 $16 1
nop
sltu $1 $1 $1
sw $1 6688($0)

sra $20 $18 23
nop
nop
sltu $1 $1 $1
sw $1 6692($0)

jr $ra
nop
exit557: