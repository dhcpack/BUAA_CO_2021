ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance558
nop
entrance558:
jal block558
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit558
nop
block558:

sra $20 $16 31
mthi $14
sw $14 6696($0)

sra $22 $20 28
nop
mthi $14
sw $14 6700($0)

sra $18 $23 4
nop
nop
mthi $14
sw $14 6704($0)

jalr $7, $ra
nop
exit558:


j entrance559
nop
entrance559:
jal block559
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit559
nop
block559:

sra $18 $22 25
mtlo $6
sw $6 6708($0)

sra $18 $23 4
nop
mtlo $6
sw $6 6712($0)

sra $23 $19 27
nop
nop
mtlo $6
sw $6 6716($0)

jalr $17, $ra
nop
exit559:

ori $16 $0 3921
ori $17 $0 2872
ori $18 $0 3791
ori $19 $0 3829
ori $20 $0 3334
ori $21 $0 3494
ori $22 $0 3105
ori $23 $0 973

j entrance560
nop
entrance560:
jal block560
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit560
nop
block560:

sllv $13 $19 $18
lb $17 3440($0)
sw $17 6720($0)

sllv $13 $20 $23
nop
lb $20 4680($0)
sw $20 6724($0)

sllv $13 $21 $17
nop
nop
lb $22 4028($0)
sw $22 6728($0)

jr $ra
nop
exit560:


j entrance561
nop
entrance561:
jal block561
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit561
nop
block561:

sllv $6 $19 $19
lbu $17 1824($0)
sw $17 6732($0)

sllv $6 $23 $20
nop
lbu $22 3200($0)
sw $22 6736($0)

sllv $6 $20 $19
nop
nop
lbu $22 2888($0)
sw $22 6740($0)

jr $ra
nop
exit561:


j entrance562
nop
entrance562:
jal block562
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit562
nop
block562:

sllv $10 $22 $18
lh $20 5512($0)
sw $20 6744($0)

sllv $10 $22 $16
nop
lh $22 692($0)
sw $22 6748($0)

sllv $10 $19 $21
nop
nop
lh $22 20($0)
sw $22 6752($0)

jr $ra
nop
exit562:


j entrance563
nop
entrance563:
jal block563
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit563
nop
block563:

sllv $11 $19 $16
lhu $23 4896($0)
sw $23 6756($0)

sllv $11 $16 $21
nop
lhu $18 1604($0)
sw $18 6760($0)

sllv $11 $17 $21
nop
nop
lhu $18 3076($0)
sw $18 6764($0)

jr $ra
nop
exit563:


j entrance564
nop
entrance564:
jal block564
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit564
nop
block564:

sllv $12 $22 $17
lw $17 4388($0)
sw $17 6768($0)

sllv $12 $17 $17
nop
lw $21 4900($0)
sw $21 6772($0)

sllv $12 $19 $22
nop
nop
lw $19 6528($0)
sw $19 6776($0)

jr $ra
nop
exit564:


j entrance565
nop
entrance565:
jal block565
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit565
nop
block565:

sllv $8 $17 $23
add $1 $8 $8
sw $1 6780($0)

sllv $8 $18 $22
nop
add $1 $8 $8
sw $1 6784($0)

sllv $8 $17 $19
nop
nop
add $1 $8 $8
sw $1 6788($0)

jalr $24, $ra
nop
exit565:


j entrance566
nop
entrance566:
jal block566
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit566
nop
block566:

sllv $13 $18 $21
addu $1 $13 $13
sw $1 6792($0)

sllv $13 $18 $17
nop
addu $1 $13 $13
sw $1 6796($0)

sllv $13 $23 $23
nop
nop
addu $1 $13 $13
sw $1 6800($0)

jr $ra
nop
exit566:


j entrance567
nop
entrance567:
jal block567
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit567
nop
block567:

sllv $5 $17 $16
sub $1 $5 $5
sw $1 6804($0)

sllv $5 $21 $21
nop
sub $1 $5 $5
sw $1 6808($0)

sllv $5 $21 $16
nop
nop
sub $1 $5 $5
sw $1 6812($0)

jr $ra
nop
exit567:


j entrance568
nop
entrance568:
jal block568
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit568
nop
block568:

sllv $3 $22 $18
subu $1 $3 $3
sw $1 6816($0)

sllv $3 $21 $18
nop
subu $1 $3 $3
sw $1 6820($0)

sllv $3 $21 $23
nop
nop
subu $1 $3 $3
sw $1 6824($0)

jr $ra
nop
exit568:


j entrance569
nop
entrance569:
jal block569
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit569
nop
block569:

sllv $15 $23 $21
mult $15 $15
sw $15 6828($0)

sllv $15 $20 $19
nop
mult $15 $15
sw $15 6832($0)

sllv $15 $19 $21
nop
nop
mult $15 $15
sw $15 6836($0)

jalr $8, $ra
nop
exit569:


j entrance570
nop
entrance570:
jal block570
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit570
nop
block570:

sllv $8 $18 $16
multu $8 $8
sw $8 6840($0)

sllv $8 $21 $23
nop
multu $8 $8
sw $8 6844($0)

sllv $8 $16 $21
nop
nop
multu $8 $8
sw $8 6848($0)

jr $ra
nop
exit570:


j entrance571
nop
entrance571:
jal block571
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit571
nop
block571:

sllv $15 $19 $19
div $15 $15
sw $15 6852($0)

sllv $15 $17 $21
nop
div $15 $15
sw $15 6856($0)

sllv $15 $22 $21
nop
nop
div $15 $15
sw $15 6860($0)

jr $ra
nop
exit571:


j entrance572
nop
entrance572:
jal block572
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit572
nop
block572:

sllv $15 $19 $22
divu $15 $15
sw $15 6864($0)

sllv $15 $23 $22
nop
divu $15 $15
sw $15 6868($0)

sllv $15 $23 $22
nop
nop
divu $15 $15
sw $15 6872($0)

jr $ra
nop
exit572:


j entrance573
nop
entrance573:
jal block573
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit573
nop
block573:

sllv $11 $23 $16
sll $11 $16 4
sw $1 6876($0)

sllv $11 $22 $18
nop
sll $11 $19 24
sw $1 6880($0)

sllv $11 $17 $23
nop
nop
sll $11 $19 30
sw $1 6884($0)

jalr $18, $ra
nop
exit573:


j entrance574
nop
entrance574:
jal block574
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit574
nop
block574:

sllv $13 $20 $22
srl $13 $20 2
sw $1 6888($0)

sllv $13 $19 $16
nop
srl $13 $22 6
sw $1 6892($0)

sllv $13 $20 $22
nop
nop
srl $13 $17 0
sw $1 6896($0)

jr $ra
nop
exit574:


j entrance575
nop
entrance575:
jal block575
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit575
nop
block575:

sllv $1 $23 $20
sra $1 $18 9
sw $1 6900($0)

sllv $1 $23 $16
nop
sra $1 $19 20
sw $1 6904($0)

sllv $1 $23 $19
nop
nop
sra $1 $17 15
sw $1 6908($0)

jr $ra
nop
exit575:


j entrance576
nop
entrance576:
jal block576
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit576
nop
block576:

sllv $6 $20 $18
sllv $1 $6 $6
sw $1 6912($0)

sllv $6 $21 $22
nop
sllv $1 $6 $6
sw $1 6916($0)

sllv $6 $22 $19
nop
nop
sllv $1 $6 $6
sw $1 6920($0)

jr $ra
nop
exit576:


j entrance577
nop
entrance577:
jal block577
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit577
nop
block577:

sllv $10 $19 $21
srlv $1 $10 $10
sw $1 6924($0)

sllv $10 $20 $21
nop
srlv $1 $10 $10
sw $1 6928($0)

sllv $10 $23 $17
nop
nop
srlv $1 $10 $10
sw $1 6932($0)

jalr $21, $ra
nop
exit577:


j entrance578
nop
entrance578:
jal block578
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit578
nop
block578:

sllv $10 $18 $22
srav $1 $10 $10
sw $1 6936($0)

sllv $10 $23 $23
nop
srav $1 $10 $10
sw $1 6940($0)

sllv $10 $17 $21
nop
nop
srav $1 $10 $10
sw $1 6944($0)

jr $ra
nop
exit578:


j entrance579
nop
entrance579:
jal block579
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit579
nop
block579:

sllv $3 $23 $21
and $1 $3 $3
sw $1 6948($0)

sllv $3 $23 $21
nop
and $1 $3 $3
sw $1 6952($0)

sllv $3 $18 $18
nop
nop
and $1 $3 $3
sw $1 6956($0)

jalr $15, $ra
nop
exit579:


j entrance580
nop
entrance580:
jal block580
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit580
nop
block580:

sllv $4 $20 $21
or $1 $4 $4
sw $1 6960($0)

sllv $4 $20 $23
nop
or $1 $4 $4
sw $1 6964($0)

sllv $4 $21 $17
nop
nop
or $1 $4 $4
sw $1 6968($0)

jalr $27, $ra
nop
exit580:


j entrance581
nop
entrance581:
jal block581
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit581
nop
block581:

sllv $6 $22 $18
xor $1 $6 $6
sw $1 6972($0)

sllv $6 $16 $17
nop
xor $1 $6 $6
sw $1 6976($0)

sllv $6 $16 $16
nop
nop
xor $1 $6 $6
sw $1 6980($0)

jalr $13, $ra
nop
exit581:


j entrance582
nop
entrance582:
jal block582
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit582
nop
block582:

sllv $4 $21 $22
nor $1 $4 $4
sw $1 6984($0)

sllv $4 $19 $16
nop
nor $1 $4 $4
sw $1 6988($0)

sllv $4 $16 $21
nop
nop
nor $1 $4 $4
sw $1 6992($0)

jr $ra
nop
exit582:


j entrance583
nop
entrance583:
jal block583
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit583
nop
block583:

sllv $10 $21 $21
addi $17 $10 3942
sw $17 6996($0)

sllv $10 $20 $20
nop
addi $19 $10 2710
sw $19 7000($0)

sllv $10 $20 $19
nop
nop
addi $21 $10 3350
sw $21 7004($0)

jr $ra
nop
exit583:


j entrance584
nop
entrance584:
jal block584
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit584
nop
block584:

sllv $10 $17 $20
addiu $22 $10 2053
sw $22 7008($0)

sllv $10 $19 $16
nop
addiu $19 $10 877
sw $19 7012($0)

sllv $10 $21 $17
nop
nop
addiu $18 $10 52
sw $18 7016($0)

jr $ra
nop
exit584:


j entrance585
nop
entrance585:
jal block585
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit585
nop
block585:

sllv $2 $21 $22
andi $19 $2 974
sw $19 7020($0)

sllv $2 $23 $19
nop
andi $18 $2 797
sw $18 7024($0)

sllv $2 $19 $19
nop
nop
andi $16 $2 1573
sw $16 7028($0)

jr $ra
nop
exit585:


j entrance586
nop
entrance586:
jal block586
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit586
nop
block586:

sllv $3 $18 $18
ori $18 $3 4110
sw $18 7032($0)

sllv $3 $21 $19
nop
ori $20 $3 1100
sw $20 7036($0)

sllv $3 $17 $20
nop
nop
ori $21 $3 2588
sw $21 7040($0)

jalr $13, $ra
nop
exit586:


j entrance587
nop
entrance587:
jal block587
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit587
nop
block587:

sllv $14 $19 $23
xori $18 $14 2025
sw $18 7044($0)

sllv $14 $21 $18
nop
xori $16 $14 1922
sw $16 7048($0)

sllv $14 $22 $17
nop
nop
xori $21 $14 999
sw $21 7052($0)

jr $ra
nop
exit587:


j entrance588
nop
entrance588:
jal block588
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit588
nop
block588:

sllv $5 $16 $19
lui $23 3168
sw $23 7056($0)

sllv $5 $23 $21
nop
lui $18 2272
sw $18 7060($0)

sllv $5 $21 $19
nop
nop
lui $16 87
sw $16 7064($0)

jr $ra
nop
exit588: