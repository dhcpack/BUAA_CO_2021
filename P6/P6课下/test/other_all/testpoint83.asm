ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance682
nop
entrance682:
jal block682
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit682
nop
block682:

and $11 $19 $17
srlv $1 $11 $11
sw $1 8184($0)

and $11 $21 $18
nop
srlv $1 $11 $11
sw $1 8188($0)

and $11 $22 $23
nop
nop
srlv $1 $11 $11
sw $1 8192($0)

jr $ra
nop
exit682:


j entrance683
nop
entrance683:
jal block683
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit683
nop
block683:

and $6 $17 $17
srav $1 $6 $6
sw $1 8196($0)

and $6 $22 $19
nop
srav $1 $6 $6
sw $1 8200($0)

and $6 $18 $18
nop
nop
srav $1 $6 $6
sw $1 8204($0)

jr $ra
nop
exit683:


j entrance684
nop
entrance684:
jal block684
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit684
nop
block684:

and $5 $23 $16
and $1 $5 $5
sw $1 8208($0)

and $5 $19 $19
nop
and $1 $5 $5
sw $1 8212($0)

and $5 $19 $17
nop
nop
and $1 $5 $5
sw $1 8216($0)

jr $ra
nop
exit684:


j entrance685
nop
entrance685:
jal block685
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit685
nop
block685:

and $7 $17 $21
or $1 $7 $7
sw $1 8220($0)

and $7 $23 $17
nop
or $1 $7 $7
sw $1 8224($0)

and $7 $23 $18
nop
nop
or $1 $7 $7
sw $1 8228($0)

jalr $21, $ra
nop
exit685:


j entrance686
nop
entrance686:
jal block686
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit686
nop
block686:

and $9 $16 $22
xor $1 $9 $9
sw $1 8232($0)

and $9 $18 $21
nop
xor $1 $9 $9
sw $1 8236($0)

and $9 $22 $18
nop
nop
xor $1 $9 $9
sw $1 8240($0)

jr $ra
nop
exit686:


j entrance687
nop
entrance687:
jal block687
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit687
nop
block687:

and $6 $22 $17
nor $1 $6 $6
sw $1 8244($0)

and $6 $17 $18
nop
nor $1 $6 $6
sw $1 8248($0)

and $6 $23 $18
nop
nop
nor $1 $6 $6
sw $1 8252($0)

jr $ra
nop
exit687:


j entrance688
nop
entrance688:
jal block688
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit688
nop
block688:

and $12 $21 $23
addi $23 $12 2396
sw $23 8256($0)

and $12 $19 $21
nop
addi $16 $12 2396
sw $16 8260($0)

and $12 $23 $22
nop
nop
addi $21 $12 2101
sw $21 8264($0)

jalr $16, $ra
nop
exit688:


j entrance689
nop
entrance689:
jal block689
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit689
nop
block689:

and $12 $18 $20
addiu $22 $12 2926
sw $22 8268($0)

and $12 $19 $21
nop
addiu $18 $12 2622
sw $18 8272($0)

and $12 $19 $19
nop
nop
addiu $23 $12 369
sw $23 8276($0)

jalr $28, $ra
nop
exit689:


j entrance690
nop
entrance690:
jal block690
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit690
nop
block690:

and $4 $16 $18
andi $20 $4 1114
sw $20 8280($0)

and $4 $17 $22
nop
andi $16 $4 1187
sw $16 8284($0)

and $4 $22 $16
nop
nop
andi $19 $4 1051
sw $19 8288($0)

jr $ra
nop
exit690:


j entrance691
nop
entrance691:
jal block691
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit691
nop
block691:

and $14 $18 $19
ori $22 $14 506
sw $22 8292($0)

and $14 $23 $20
nop
ori $17 $14 2066
sw $17 8296($0)

and $14 $21 $16
nop
nop
ori $20 $14 2414
sw $20 8300($0)

jalr $7, $ra
nop
exit691:


j entrance692
nop
entrance692:
jal block692
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit692
nop
block692:

and $2 $22 $23
xori $21 $2 485
sw $21 8304($0)

and $2 $16 $21
nop
xori $22 $2 496
sw $22 8308($0)

and $2 $21 $17
nop
nop
xori $16 $2 1998
sw $16 8312($0)

jr $ra
nop
exit692:


j entrance693
nop
entrance693:
jal block693
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit693
nop
block693:

and $15 $23 $18
lui $20 1107
sw $20 8316($0)

and $15 $23 $23
nop
lui $23 3416
sw $23 8320($0)

and $15 $20 $21
nop
nop
lui $19 2167
sw $19 8324($0)

jr $ra
nop
exit693:


j entrance694
nop
entrance694:
jal block694
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit694
nop
block694:

and $4 $23 $16
slt $1 $4 $4
sw $1 8328($0)

and $4 $23 $21
nop
slt $1 $4 $4
sw $1 8332($0)

and $4 $16 $18
nop
nop
slt $1 $4 $4
sw $1 8336($0)

jalr $16, $ra
nop
exit694:


j entrance695
nop
entrance695:
jal block695
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit695
nop
block695:

and $12 $23 $17
slti $18 $12 3122
sw $18 8340($0)

and $12 $21 $21
nop
slti $18 $12 753
sw $18 8344($0)

and $12 $22 $16
nop
nop
slti $16 $12 3865
sw $16 8348($0)

jr $ra
nop
exit695:


j entrance696
nop
entrance696:
jal block696
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit696
nop
block696:

and $13 $19 $19
sltiu $18 $13 1658
sw $18 8352($0)

and $13 $21 $22
nop
sltiu $17 $13 1982
sw $17 8356($0)

and $13 $22 $23
nop
nop
sltiu $23 $13 1812
sw $23 8360($0)

jr $ra
nop
exit696:


j entrance697
nop
entrance697:
jal block697
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit697
nop
block697:

and $15 $18 $18
sltu $1 $15 $15
sw $1 8364($0)

and $15 $18 $22
nop
sltu $1 $15 $15
sw $1 8368($0)

and $15 $23 $16
nop
nop
sltu $1 $15 $15
sw $1 8372($0)

jr $ra
nop
exit697:


j entrance698
nop
entrance698:
jal block698
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit698
nop
block698:

and $1 $16 $16
mthi $1
sw $1 8376($0)

and $1 $18 $17
nop
mthi $1
sw $1 8380($0)

and $1 $16 $19
nop
nop
mthi $1
sw $1 8384($0)

jr $ra
nop
exit698:


j entrance699
nop
entrance699:
jal block699
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit699
nop
block699:

and $9 $17 $19
mtlo $9
sw $9 8388($0)

and $9 $20 $16
nop
mtlo $9
sw $9 8392($0)

and $9 $21 $18
nop
nop
mtlo $9
sw $9 8396($0)

jr $ra
nop
exit699:

ori $16 $0 1703
ori $17 $0 3884
ori $18 $0 820
ori $19 $0 2193
ori $20 $0 4461
ori $21 $0 256
ori $22 $0 2499
ori $23 $0 4402

j entrance700
nop
entrance700:
jal block700
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit700
nop
block700:

or $7 $21 $20
lb $18 7908($0)
sw $18 8400($0)

or $7 $17 $22
nop
lb $21 596($0)
sw $21 8404($0)

or $7 $18 $20
nop
nop
lb $19 2544($0)
sw $19 8408($0)

jalr $23, $ra
nop
exit700:


j entrance701
nop
entrance701:
jal block701
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit701
nop
block701:

or $10 $18 $17
lbu $18 4528($0)
sw $18 8412($0)

or $10 $16 $23
nop
lbu $22 1372($0)
sw $22 8416($0)

or $10 $17 $22
nop
nop
lbu $18 492($0)
sw $18 8420($0)

jalr $7, $ra
nop
exit701:


j entrance702
nop
entrance702:
jal block702
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit702
nop
block702:

or $1 $20 $17
lh $22 4028($0)
sw $22 8424($0)

or $1 $19 $18
nop
lh $18 1608($0)
sw $18 8428($0)

or $1 $16 $16
nop
nop
lh $17 7292($0)
sw $17 8432($0)

jr $ra
nop
exit702:


j entrance703
nop
entrance703:
jal block703
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit703
nop
block703:

or $6 $20 $21
lhu $16 7328($0)
sw $16 8436($0)

or $6 $16 $21
nop
lhu $17 2588($0)
sw $17 8440($0)

or $6 $18 $20
nop
nop
lhu $22 688($0)
sw $22 8444($0)

jr $ra
nop
exit703:


j entrance704
nop
entrance704:
jal block704
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit704
nop
block704:

or $14 $23 $20
lw $19 3328($0)
sw $19 8448($0)

or $14 $20 $19
nop
lw $16 3524($0)
sw $16 8452($0)

or $14 $22 $18
nop
nop
lw $17 564($0)
sw $17 8456($0)

jalr $1, $ra
nop
exit704:


j entrance705
nop
entrance705:
jal block705
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit705
nop
block705:

or $7 $16 $23
add $1 $7 $7
sw $1 8460($0)

or $7 $21 $21
nop
add $1 $7 $7
sw $1 8464($0)

or $7 $22 $17
nop
nop
add $1 $7 $7
sw $1 8468($0)

jr $ra
nop
exit705:


j entrance706
nop
entrance706:
jal block706
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit706
nop
block706:

or $3 $22 $20
addu $1 $3 $3
sw $1 8472($0)

or $3 $19 $20
nop
addu $1 $3 $3
sw $1 8476($0)

or $3 $20 $16
nop
nop
addu $1 $3 $3
sw $1 8480($0)

jr $ra
nop
exit706:


j entrance707
nop
entrance707:
jal block707
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit707
nop
block707:

or $10 $19 $21
sub $1 $10 $10
sw $1 8484($0)

or $10 $17 $18
nop
sub $1 $10 $10
sw $1 8488($0)

or $10 $21 $21
nop
nop
sub $1 $10 $10
sw $1 8492($0)

jr $ra
nop
exit707:


j entrance708
nop
entrance708:
jal block708
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit708
nop
block708:

or $6 $16 $19
subu $1 $6 $6
sw $1 8496($0)

or $6 $18 $21
nop
subu $1 $6 $6
sw $1 8500($0)

or $6 $19 $17
nop
nop
subu $1 $6 $6
sw $1 8504($0)

jr $ra
nop
exit708:


j entrance709
nop
entrance709:
jal block709
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit709
nop
block709:

or $12 $17 $23
mult $12 $12
sw $12 8508($0)

or $12 $22 $16
nop
mult $12 $12
sw $12 8512($0)

or $12 $20 $22
nop
nop
mult $12 $12
sw $12 8516($0)

jr $ra
nop
exit709:


j entrance710
nop
entrance710:
jal block710
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit710
nop
block710:

or $10 $16 $23
multu $10 $10
sw $10 8520($0)

or $10 $22 $21
nop
multu $10 $10
sw $10 8524($0)

or $10 $19 $21
nop
nop
multu $10 $10
sw $10 8528($0)

jalr $23, $ra
nop
exit710:


j entrance711
nop
entrance711:
jal block711
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit711
nop
block711:

or $8 $19 $17
div $8 $8
sw $8 8532($0)

or $8 $23 $19
nop
div $8 $8
sw $8 8536($0)

or $8 $17 $17
nop
nop
div $8 $8
sw $8 8540($0)

jalr $1, $ra
nop
exit711:


j entrance712
nop
entrance712:
jal block712
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit712
nop
block712:

or $10 $20 $22
divu $10 $10
sw $10 8544($0)

or $10 $18 $19
nop
divu $10 $10
sw $10 8548($0)

or $10 $16 $17
nop
nop
divu $10 $10
sw $10 8552($0)

jr $ra
nop
exit712: