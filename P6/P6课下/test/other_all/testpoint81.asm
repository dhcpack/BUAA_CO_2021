ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance620
nop
entrance620:
jal block620
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit620
nop
block620:

srlv $3 $16 $23
andi $16 $3 4025
sw $16 7440($0)

srlv $3 $21 $23
nop
andi $17 $3 1152
sw $17 7444($0)

srlv $3 $17 $21
nop
nop
andi $18 $3 3446
sw $18 7448($0)

jalr $28, $ra
nop
exit620:


j entrance621
nop
entrance621:
jal block621
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit621
nop
block621:

srlv $9 $21 $16
ori $22 $9 3178
sw $22 7452($0)

srlv $9 $19 $19
nop
ori $20 $9 3961
sw $20 7456($0)

srlv $9 $21 $19
nop
nop
ori $23 $9 3487
sw $23 7460($0)

jr $ra
nop
exit621:


j entrance622
nop
entrance622:
jal block622
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit622
nop
block622:

srlv $3 $18 $17
xori $16 $3 728
sw $16 7464($0)

srlv $3 $21 $17
nop
xori $20 $3 2895
sw $20 7468($0)

srlv $3 $21 $22
nop
nop
xori $21 $3 860
sw $21 7472($0)

jalr $21, $ra
nop
exit622:


j entrance623
nop
entrance623:
jal block623
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit623
nop
block623:

srlv $9 $21 $19
lui $23 2600
sw $23 7476($0)

srlv $9 $18 $16
nop
lui $23 1248
sw $23 7480($0)

srlv $9 $22 $20
nop
nop
lui $18 503
sw $18 7484($0)

jr $ra
nop
exit623:


j entrance624
nop
entrance624:
jal block624
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit624
nop
block624:

srlv $7 $23 $16
slt $1 $7 $7
sw $1 7488($0)

srlv $7 $22 $21
nop
slt $1 $7 $7
sw $1 7492($0)

srlv $7 $21 $18
nop
nop
slt $1 $7 $7
sw $1 7496($0)

jr $ra
nop
exit624:


j entrance625
nop
entrance625:
jal block625
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit625
nop
block625:

srlv $6 $23 $19
slti $18 $6 3788
sw $18 7500($0)

srlv $6 $21 $16
nop
slti $20 $6 1559
sw $20 7504($0)

srlv $6 $19 $22
nop
nop
slti $18 $6 3708
sw $18 7508($0)

jr $ra
nop
exit625:


j entrance626
nop
entrance626:
jal block626
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit626
nop
block626:

srlv $9 $21 $20
sltiu $23 $9 2743
sw $23 7512($0)

srlv $9 $16 $20
nop
sltiu $19 $9 2670
sw $19 7516($0)

srlv $9 $16 $23
nop
nop
sltiu $17 $9 3925
sw $17 7520($0)

jalr $10, $ra
nop
exit626:


j entrance627
nop
entrance627:
jal block627
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit627
nop
block627:

srlv $3 $17 $22
sltu $1 $3 $3
sw $1 7524($0)

srlv $3 $19 $23
nop
sltu $1 $3 $3
sw $1 7528($0)

srlv $3 $23 $17
nop
nop
sltu $1 $3 $3
sw $1 7532($0)

jr $ra
nop
exit627:


j entrance628
nop
entrance628:
jal block628
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit628
nop
block628:

srlv $9 $22 $16
mthi $9
sw $9 7536($0)

srlv $9 $19 $18
nop
mthi $9
sw $9 7540($0)

srlv $9 $18 $18
nop
nop
mthi $9
sw $9 7544($0)

jr $ra
nop
exit628:


j entrance629
nop
entrance629:
jal block629
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit629
nop
block629:

srlv $5 $20 $19
mtlo $5
sw $5 7548($0)

srlv $5 $21 $18
nop
mtlo $5
sw $5 7552($0)

srlv $5 $19 $18
nop
nop
mtlo $5
sw $5 7556($0)

jr $ra
nop
exit629:

ori $16 $0 1013
ori $17 $0 1628
ori $18 $0 1404
ori $19 $0 2377
ori $20 $0 1487
ori $21 $0 2206
ori $22 $0 1259
ori $23 $0 2314

j entrance630
nop
entrance630:
jal block630
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit630
nop
block630:

srav $1 $16 $19
lb $21 5808($0)
sw $21 7560($0)

srav $1 $19 $20
nop
lb $23 5928($0)
sw $23 7564($0)

srav $1 $19 $20
nop
nop
lb $20 3480($0)
sw $20 7568($0)

jr $ra
nop
exit630:


j entrance631
nop
entrance631:
jal block631
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit631
nop
block631:

srav $14 $17 $21
lbu $21 464($0)
sw $21 7572($0)

srav $14 $21 $20
nop
lbu $18 6732($0)
sw $18 7576($0)

srav $14 $18 $19
nop
nop
lbu $20 1356($0)
sw $20 7580($0)

jalr $6, $ra
nop
exit631:


j entrance632
nop
entrance632:
jal block632
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit632
nop
block632:

srav $1 $17 $16
lh $22 3332($0)
sw $22 7584($0)

srav $1 $23 $21
nop
lh $17 3348($0)
sw $17 7588($0)

srav $1 $16 $17
nop
nop
lh $19 1568($0)
sw $19 7592($0)

jr $ra
nop
exit632:


j entrance633
nop
entrance633:
jal block633
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit633
nop
block633:

srav $1 $16 $16
lhu $17 2148($0)
sw $17 7596($0)

srav $1 $16 $21
nop
lhu $21 7140($0)
sw $21 7600($0)

srav $1 $20 $18
nop
nop
lhu $23 4128($0)
sw $23 7604($0)

jr $ra
nop
exit633:


j entrance634
nop
entrance634:
jal block634
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit634
nop
block634:

srav $1 $22 $23
lw $23 3260($0)
sw $23 7608($0)

srav $1 $17 $22
nop
lw $23 7244($0)
sw $23 7612($0)

srav $1 $22 $19
nop
nop
lw $22 5880($0)
sw $22 7616($0)

jr $ra
nop
exit634:


j entrance635
nop
entrance635:
jal block635
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit635
nop
block635:

srav $11 $22 $23
add $1 $11 $11
sw $1 7620($0)

srav $11 $22 $23
nop
add $1 $11 $11
sw $1 7624($0)

srav $11 $23 $20
nop
nop
add $1 $11 $11
sw $1 7628($0)

jr $ra
nop
exit635:


j entrance636
nop
entrance636:
jal block636
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit636
nop
block636:

srav $2 $19 $16
addu $1 $2 $2
sw $1 7632($0)

srav $2 $19 $17
nop
addu $1 $2 $2
sw $1 7636($0)

srav $2 $20 $23
nop
nop
addu $1 $2 $2
sw $1 7640($0)

jr $ra
nop
exit636:


j entrance637
nop
entrance637:
jal block637
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit637
nop
block637:

srav $5 $23 $20
sub $1 $5 $5
sw $1 7644($0)

srav $5 $16 $17
nop
sub $1 $5 $5
sw $1 7648($0)

srav $5 $18 $19
nop
nop
sub $1 $5 $5
sw $1 7652($0)

jr $ra
nop
exit637:


j entrance638
nop
entrance638:
jal block638
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit638
nop
block638:

srav $7 $20 $17
subu $1 $7 $7
sw $1 7656($0)

srav $7 $18 $19
nop
subu $1 $7 $7
sw $1 7660($0)

srav $7 $23 $20
nop
nop
subu $1 $7 $7
sw $1 7664($0)

jr $ra
nop
exit638:


j entrance639
nop
entrance639:
jal block639
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit639
nop
block639:

srav $13 $20 $17
mult $13 $13
sw $13 7668($0)

srav $13 $20 $19
nop
mult $13 $13
sw $13 7672($0)

srav $13 $16 $20
nop
nop
mult $13 $13
sw $13 7676($0)

jr $ra
nop
exit639:


j entrance640
nop
entrance640:
jal block640
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit640
nop
block640:

srav $5 $16 $18
multu $5 $5
sw $5 7680($0)

srav $5 $17 $21
nop
multu $5 $5
sw $5 7684($0)

srav $5 $20 $16
nop
nop
multu $5 $5
sw $5 7688($0)

jr $ra
nop
exit640:


j entrance641
nop
entrance641:
jal block641
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit641
nop
block641:

srav $1 $20 $19
div $1 $1
sw $1 7692($0)

srav $1 $18 $23
nop
div $1 $1
sw $1 7696($0)

srav $1 $20 $19
nop
nop
div $1 $1
sw $1 7700($0)

jalr $22, $ra
nop
exit641:


j entrance642
nop
entrance642:
jal block642
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit642
nop
block642:

srav $8 $18 $18
divu $8 $8
sw $8 7704($0)

srav $8 $19 $18
nop
divu $8 $8
sw $8 7708($0)

srav $8 $17 $17
nop
nop
divu $8 $8
sw $8 7712($0)

jr $ra
nop
exit642:


j entrance643
nop
entrance643:
jal block643
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit643
nop
block643:

srav $9 $19 $17
sll $9 $19 8
sw $1 7716($0)

srav $9 $20 $19
nop
sll $9 $19 15
sw $1 7720($0)

srav $9 $23 $23
nop
nop
sll $9 $19 30
sw $1 7724($0)

jr $ra
nop
exit643:


j entrance644
nop
entrance644:
jal block644
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit644
nop
block644:

srav $11 $21 $23
srl $11 $16 20
sw $1 7728($0)

srav $11 $20 $20
nop
srl $11 $16 7
sw $1 7732($0)

srav $11 $20 $17
nop
nop
srl $11 $22 26
sw $1 7736($0)

jalr $23, $ra
nop
exit644:


j entrance645
nop
entrance645:
jal block645
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit645
nop
block645:

srav $4 $21 $16
sra $4 $23 14
sw $1 7740($0)

srav $4 $20 $20
nop
sra $4 $17 10
sw $1 7744($0)

srav $4 $21 $22
nop
nop
sra $4 $19 27
sw $1 7748($0)

jalr $20, $ra
nop
exit645:


j entrance646
nop
entrance646:
jal block646
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit646
nop
block646:

srav $10 $19 $17
sllv $1 $10 $10
sw $1 7752($0)

srav $10 $19 $19
nop
sllv $1 $10 $10
sw $1 7756($0)

srav $10 $18 $18
nop
nop
sllv $1 $10 $10
sw $1 7760($0)

jr $ra
nop
exit646:


j entrance647
nop
entrance647:
jal block647
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit647
nop
block647:

srav $15 $23 $20
srlv $1 $15 $15
sw $1 7764($0)

srav $15 $20 $16
nop
srlv $1 $15 $15
sw $1 7768($0)

srav $15 $20 $18
nop
nop
srlv $1 $15 $15
sw $1 7772($0)

jr $ra
nop
exit647:


j entrance648
nop
entrance648:
jal block648
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit648
nop
block648:

srav $12 $22 $19
srav $1 $12 $12
sw $1 7776($0)

srav $12 $21 $19
nop
srav $1 $12 $12
sw $1 7780($0)

srav $12 $23 $19
nop
nop
srav $1 $12 $12
sw $1 7784($0)

jalr $16, $ra
nop
exit648:


j entrance649
nop
entrance649:
jal block649
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit649
nop
block649:

srav $3 $20 $16
and $1 $3 $3
sw $1 7788($0)

srav $3 $19 $22
nop
and $1 $3 $3
sw $1 7792($0)

srav $3 $18 $17
nop
nop
and $1 $3 $3
sw $1 7796($0)

jalr $23, $ra
nop
exit649:


j entrance650
nop
entrance650:
jal block650
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit650
nop
block650:

srav $6 $22 $23
or $1 $6 $6
sw $1 7800($0)

srav $6 $18 $16
nop
or $1 $6 $6
sw $1 7804($0)

srav $6 $22 $21
nop
nop
or $1 $6 $6
sw $1 7808($0)

jalr $17, $ra
nop
exit650: