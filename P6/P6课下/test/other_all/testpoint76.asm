ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance465
nop
entrance465:
jal block465
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit465
nop
block465:

sll $20 $20 4
multu $6 $6
sw $6 5580($0)

sll $19 $20 0
nop
multu $6 $6
sw $6 5584($0)

sll $23 $22 29
nop
nop
multu $6 $6
sw $6 5588($0)

jr $ra
nop
exit465:


j entrance466
nop
entrance466:
jal block466
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit466
nop
block466:

sll $16 $21 18
div $11 $11
sw $11 5592($0)

sll $18 $19 14
nop
div $11 $11
sw $11 5596($0)

sll $19 $22 25
nop
nop
div $11 $11
sw $11 5600($0)

jr $ra
nop
exit466:


j entrance467
nop
entrance467:
jal block467
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit467
nop
block467:

sll $22 $23 13
divu $7 $7
sw $7 5604($0)

sll $17 $17 21
nop
divu $7 $7
sw $7 5608($0)

sll $19 $21 8
nop
nop
divu $7 $7
sw $7 5612($0)

jalr $19, $ra
nop
exit467:


j entrance468
nop
entrance468:
jal block468
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit468
nop
block468:

sll $22 $22 23
sll $13 $17 21
sw $1 5616($0)

sll $22 $19 9
nop
sll $13 $16 31
sw $1 5620($0)

sll $17 $22 18
nop
nop
sll $13 $21 31
sw $1 5624($0)

jr $ra
nop
exit468:


j entrance469
nop
entrance469:
jal block469
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit469
nop
block469:

sll $19 $23 27
srl $1 $19 5
sw $1 5628($0)

sll $20 $19 23
nop
srl $1 $19 7
sw $1 5632($0)

sll $22 $23 7
nop
nop
srl $1 $16 0
sw $1 5636($0)

jr $ra
nop
exit469:


j entrance470
nop
entrance470:
jal block470
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit470
nop
block470:

sll $19 $23 17
sra $8 $16 26
sw $1 5640($0)

sll $18 $21 11
nop
sra $8 $21 24
sw $1 5644($0)

sll $23 $16 16
nop
nop
sra $8 $17 28
sw $1 5648($0)

jr $ra
nop
exit470:


j entrance471
nop
entrance471:
jal block471
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit471
nop
block471:

sll $17 $17 8
sllv $1 $13 $13
sw $1 5652($0)

sll $22 $22 16
nop
sllv $1 $13 $13
sw $1 5656($0)

sll $21 $22 24
nop
nop
sllv $1 $13 $13
sw $1 5660($0)

jalr $28, $ra
nop
exit471:


j entrance472
nop
entrance472:
jal block472
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit472
nop
block472:

sll $16 $16 12
srlv $1 $8 $8
sw $1 5664($0)

sll $22 $17 12
nop
srlv $1 $8 $8
sw $1 5668($0)

sll $16 $19 24
nop
nop
srlv $1 $8 $8
sw $1 5672($0)

jr $ra
nop
exit472:


j entrance473
nop
entrance473:
jal block473
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit473
nop
block473:

sll $18 $17 14
srav $1 $6 $6
sw $1 5676($0)

sll $18 $23 29
nop
srav $1 $6 $6
sw $1 5680($0)

sll $19 $19 8
nop
nop
srav $1 $6 $6
sw $1 5684($0)

jalr $11, $ra
nop
exit473:


j entrance474
nop
entrance474:
jal block474
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit474
nop
block474:

sll $20 $18 22
and $1 $15 $15
sw $1 5688($0)

sll $23 $16 13
nop
and $1 $15 $15
sw $1 5692($0)

sll $22 $21 30
nop
nop
and $1 $15 $15
sw $1 5696($0)

jr $ra
nop
exit474:


j entrance475
nop
entrance475:
jal block475
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit475
nop
block475:

sll $22 $16 17
or $1 $15 $15
sw $1 5700($0)

sll $23 $21 28
nop
or $1 $15 $15
sw $1 5704($0)

sll $22 $19 3
nop
nop
or $1 $15 $15
sw $1 5708($0)

jr $ra
nop
exit475:


j entrance476
nop
entrance476:
jal block476
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit476
nop
block476:

sll $17 $17 15
xor $1 $10 $10
sw $1 5712($0)

sll $17 $18 2
nop
xor $1 $10 $10
sw $1 5716($0)

sll $19 $17 5
nop
nop
xor $1 $10 $10
sw $1 5720($0)

jr $ra
nop
exit476:


j entrance477
nop
entrance477:
jal block477
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit477
nop
block477:

sll $22 $18 22
nor $1 $11 $11
sw $1 5724($0)

sll $23 $16 12
nop
nor $1 $11 $11
sw $1 5728($0)

sll $21 $21 25
nop
nop
nor $1 $11 $11
sw $1 5732($0)

jalr $12, $ra
nop
exit477:


j entrance478
nop
entrance478:
jal block478
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit478
nop
block478:

sll $23 $20 8
addi $22 $14 2100
sw $22 5736($0)

sll $16 $19 6
nop
addi $17 $14 2077
sw $17 5740($0)

sll $22 $19 4
nop
nop
addi $23 $14 1717
sw $23 5744($0)

jalr $5, $ra
nop
exit478:


j entrance479
nop
entrance479:
jal block479
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit479
nop
block479:

sll $18 $22 12
addiu $20 $9 3703
sw $20 5748($0)

sll $19 $21 16
nop
addiu $22 $9 3651
sw $22 5752($0)

sll $16 $21 19
nop
nop
addiu $16 $9 4037
sw $16 5756($0)

jr $ra
nop
exit479:


j entrance480
nop
entrance480:
jal block480
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit480
nop
block480:

sll $23 $23 7
andi $21 $13 515
sw $21 5760($0)

sll $21 $21 24
nop
andi $17 $13 3684
sw $17 5764($0)

sll $19 $20 22
nop
nop
andi $20 $13 3138
sw $20 5768($0)

jr $ra
nop
exit480:


j entrance481
nop
entrance481:
jal block481
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit481
nop
block481:

sll $18 $23 30
ori $20 $13 1629
sw $20 5772($0)

sll $23 $18 18
nop
ori $23 $13 858
sw $23 5776($0)

sll $22 $23 19
nop
nop
ori $23 $13 1073
sw $23 5780($0)

jr $ra
nop
exit481:


j entrance482
nop
entrance482:
jal block482
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit482
nop
block482:

sll $20 $17 29
xori $20 $12 507
sw $20 5784($0)

sll $23 $20 27
nop
xori $18 $12 1710
sw $18 5788($0)

sll $19 $17 16
nop
nop
xori $21 $12 2349
sw $21 5792($0)

jalr $17, $ra
nop
exit482:


j entrance483
nop
entrance483:
jal block483
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit483
nop
block483:

sll $21 $19 13
lui $18 1609
sw $18 5796($0)

sll $19 $20 20
nop
lui $17 261
sw $17 5800($0)

sll $23 $16 23
nop
nop
lui $22 3451
sw $22 5804($0)

jr $ra
nop
exit483:


j entrance484
nop
entrance484:
jal block484
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit484
nop
block484:

sll $18 $19 7
slt $1 $14 $14
sw $1 5808($0)

sll $23 $19 5
nop
slt $1 $14 $14
sw $1 5812($0)

sll $21 $19 18
nop
nop
slt $1 $14 $14
sw $1 5816($0)

jr $ra
nop
exit484:


j entrance485
nop
entrance485:
jal block485
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit485
nop
block485:

sll $21 $23 25
slti $22 $8 2570
sw $22 5820($0)

sll $19 $23 12
nop
slti $23 $8 519
sw $23 5824($0)

sll $23 $17 1
nop
nop
slti $16 $8 1775
sw $16 5828($0)

jalr $4, $ra
nop
exit485:


j entrance486
nop
entrance486:
jal block486
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit486
nop
block486:

sll $23 $18 3
sltiu $22 $13 3177
sw $22 5832($0)

sll $20 $21 3
nop
sltiu $22 $13 1458
sw $22 5836($0)

sll $19 $20 26
nop
nop
sltiu $16 $13 2518
sw $16 5840($0)

jr $ra
nop
exit486:


j entrance487
nop
entrance487:
jal block487
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit487
nop
block487:

sll $17 $16 0
sltu $1 $13 $13
sw $1 5844($0)

sll $23 $22 5
nop
sltu $1 $13 $13
sw $1 5848($0)

sll $23 $19 13
nop
nop
sltu $1 $13 $13
sw $1 5852($0)

jr $ra
nop
exit487:


j entrance488
nop
entrance488:
jal block488
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit488
nop
block488:

sll $18 $21 26
mthi $1
sw $1 5856($0)

sll $18 $20 16
nop
mthi $1
sw $1 5860($0)

sll $20 $21 10
nop
nop
mthi $1
sw $1 5864($0)

jr $ra
nop
exit488:


j entrance489
nop
entrance489:
jal block489
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit489
nop
block489:

sll $21 $20 30
mtlo $7
sw $7 5868($0)

sll $16 $18 30
nop
mtlo $7
sw $7 5872($0)

sll $21 $18 2
nop
nop
mtlo $7
sw $7 5876($0)

jr $ra
nop
exit489:

ori $16 $0 3600
ori $17 $0 1754
ori $18 $0 3046
ori $19 $0 2411
ori $20 $0 772
ori $21 $0 756
ori $22 $0 1935
ori $23 $0 1227

j entrance490
nop
entrance490:
jal block490
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit490
nop
block490:

srl $18 $18 1
lb $18 5876($0)
sw $18 5880($0)

srl $23 $22 26
nop
lb $16 3664($0)
sw $16 5884($0)

srl $16 $16 10
nop
nop
lb $19 3340($0)
sw $19 5888($0)

jalr $24, $ra
nop
exit490:


j entrance491
nop
entrance491:
jal block491
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit491
nop
block491:

srl $19 $16 26
lbu $22 3756($0)
sw $22 5892($0)

srl $19 $21 30
nop
lbu $16 5892($0)
sw $16 5896($0)

srl $22 $20 22
nop
nop
lbu $19 5896($0)
sw $19 5900($0)

jr $ra
nop
exit491:


j entrance492
nop
entrance492:
jal block492
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit492
nop
block492:

srl $19 $22 28
lh $21 2000($0)
sw $21 5904($0)

srl $18 $16 26
nop
lh $21 5904($0)
sw $21 5908($0)

srl $21 $21 18
nop
nop
lh $17 3388($0)
sw $17 5912($0)

jalr $25, $ra
nop
exit492:


j entrance493
nop
entrance493:
jal block493
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit493
nop
block493:

srl $22 $22 30
lhu $19 5912($0)
sw $19 5916($0)

srl $18 $20 14
nop
lhu $18 660($0)
sw $18 5920($0)

srl $19 $16 8
nop
nop
lhu $17 740($0)
sw $17 5924($0)

jr $ra
nop
exit493:


j entrance494
nop
entrance494:
jal block494
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit494
nop
block494:

srl $20 $20 1
lw $19 5924($0)
sw $19 5928($0)

srl $17 $18 30
nop
lw $20 724($0)
sw $20 5932($0)

srl $21 $21 1
nop
nop
lw $18 2580($0)
sw $18 5936($0)

jr $ra
nop
exit494:


j entrance495
nop
entrance495:
jal block495
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit495
nop
block495:

srl $21 $23 10
add $1 $7 $7
sw $1 5940($0)

srl $20 $19 31
nop
add $1 $7 $7
sw $1 5944($0)

srl $17 $19 5
nop
nop
add $1 $7 $7
sw $1 5948($0)

jalr $2, $ra
nop
exit495: