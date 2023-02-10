ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance868
nop
entrance868:
jal block868
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit868
nop
block868:

addiu $2 $20 3281
lui $22 1362
sw $22 10416($0)

addiu $2 $22 3424
nop
lui $17 752
sw $17 10420($0)

addiu $2 $16 1836
nop
nop
lui $18 1494
sw $18 10424($0)

jalr $9, $ra
nop
exit868:


j entrance869
nop
entrance869:
jal block869
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit869
nop
block869:

addiu $4 $16 3403
slt $1 $4 $4
sw $1 10428($0)

addiu $4 $18 260
nop
slt $1 $4 $4
sw $1 10432($0)

addiu $4 $17 392
nop
nop
slt $1 $4 $4
sw $1 10436($0)

jr $ra
nop
exit869:


j entrance870
nop
entrance870:
jal block870
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit870
nop
block870:

addiu $10 $20 2002
slti $23 $10 3543
sw $23 10440($0)

addiu $10 $23 731
nop
slti $19 $10 2007
sw $19 10444($0)

addiu $10 $19 817
nop
nop
slti $16 $10 1472
sw $16 10448($0)

jr $ra
nop
exit870:


j entrance871
nop
entrance871:
jal block871
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit871
nop
block871:

addiu $12 $22 1862
sltiu $19 $12 3365
sw $19 10452($0)

addiu $12 $18 1501
nop
sltiu $20 $12 1044
sw $20 10456($0)

addiu $12 $21 1551
nop
nop
sltiu $19 $12 3359
sw $19 10460($0)

jalr $29, $ra
nop
exit871:


j entrance872
nop
entrance872:
jal block872
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit872
nop
block872:

addiu $12 $20 1343
sltu $1 $12 $12
sw $1 10464($0)

addiu $12 $22 1137
nop
sltu $1 $12 $12
sw $1 10468($0)

addiu $12 $23 3059
nop
nop
sltu $1 $12 $12
sw $1 10472($0)

jr $ra
nop
exit872:


j entrance873
nop
entrance873:
jal block873
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit873
nop
block873:

addiu $5 $20 3849
mthi $5
sw $5 10476($0)

addiu $5 $19 15
nop
mthi $5
sw $5 10480($0)

addiu $5 $21 2858
nop
nop
mthi $5
sw $5 10484($0)

jalr $6, $ra
nop
exit873:


j entrance874
nop
entrance874:
jal block874
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit874
nop
block874:

addiu $6 $19 3603
mtlo $6
sw $6 10488($0)

addiu $6 $22 2461
nop
mtlo $6
sw $6 10492($0)

addiu $6 $23 3067
nop
nop
mtlo $6
sw $6 10496($0)

jr $ra
nop
exit874:

ori $16 $0 4400
ori $17 $0 754
ori $18 $0 128
ori $19 $0 3390
ori $20 $0 1606
ori $21 $0 4284
ori $22 $0 276
ori $23 $0 488

j entrance875
nop
entrance875:
jal block875
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit875
nop
block875:

andi $15 $20 2453
lb $18 4328($0)
sw $18 10500($0)

andi $15 $18 2615
nop
lb $21 5368($0)
sw $21 10504($0)

andi $15 $20 1570
nop
nop
lb $23 2228($0)
sw $23 10508($0)

jr $ra
nop
exit875:


j entrance876
nop
entrance876:
jal block876
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit876
nop
block876:

andi $6 $21 2347
lbu $20 5204($0)
sw $20 10512($0)

andi $6 $18 2491
nop
lbu $16 64($0)
sw $16 10516($0)

andi $6 $19 758
nop
nop
lbu $22 2840($0)
sw $22 10520($0)

jr $ra
nop
exit876:


j entrance877
nop
entrance877:
jal block877
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit877
nop
block877:

andi $7 $17 574
lh $16 1200($0)
sw $16 10524($0)

andi $7 $21 3918
nop
lh $19 1596($0)
sw $19 10528($0)

andi $7 $21 3529
nop
nop
lh $21 4512($0)
sw $21 10532($0)

jalr $6, $ra
nop
exit877:


j entrance878
nop
entrance878:
jal block878
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit878
nop
block878:

andi $6 $16 864
lhu $17 6996($0)
sw $17 10536($0)

andi $6 $22 725
nop
lhu $22 3436($0)
sw $22 10540($0)

andi $6 $17 681
nop
nop
lhu $22 4276($0)
sw $22 10544($0)

jr $ra
nop
exit878:


j entrance879
nop
entrance879:
jal block879
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit879
nop
block879:

andi $5 $18 231
lw $22 3884($0)
sw $22 10548($0)

andi $5 $21 2083
nop
lw $23 2540($0)
sw $23 10552($0)

andi $5 $22 1428
nop
nop
lw $22 1704($0)
sw $22 10556($0)

jr $ra
nop
exit879:


j entrance880
nop
entrance880:
jal block880
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit880
nop
block880:

andi $10 $18 2841
add $1 $10 $10
sw $1 10560($0)

andi $10 $19 3818
nop
add $1 $10 $10
sw $1 10564($0)

andi $10 $19 2431
nop
nop
add $1 $10 $10
sw $1 10568($0)

jr $ra
nop
exit880:


j entrance881
nop
entrance881:
jal block881
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit881
nop
block881:

andi $10 $23 3800
addu $1 $10 $10
sw $1 10572($0)

andi $10 $23 3254
nop
addu $1 $10 $10
sw $1 10576($0)

andi $10 $18 2038
nop
nop
addu $1 $10 $10
sw $1 10580($0)

jr $ra
nop
exit881:


j entrance882
nop
entrance882:
jal block882
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit882
nop
block882:

andi $2 $20 269
sub $1 $2 $2
sw $1 10584($0)

andi $2 $19 2592
nop
sub $1 $2 $2
sw $1 10588($0)

andi $2 $16 2934
nop
nop
sub $1 $2 $2
sw $1 10592($0)

jalr $15, $ra
nop
exit882:


j entrance883
nop
entrance883:
jal block883
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit883
nop
block883:

andi $5 $17 4050
subu $1 $5 $5
sw $1 10596($0)

andi $5 $22 1372
nop
subu $1 $5 $5
sw $1 10600($0)

andi $5 $18 298
nop
nop
subu $1 $5 $5
sw $1 10604($0)

jr $ra
nop
exit883:


j entrance884
nop
entrance884:
jal block884
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit884
nop
block884:

andi $4 $17 3076
mult $4 $4
sw $4 10608($0)

andi $4 $23 3117
nop
mult $4 $4
sw $4 10612($0)

andi $4 $18 2434
nop
nop
mult $4 $4
sw $4 10616($0)

jr $ra
nop
exit884:


j entrance885
nop
entrance885:
jal block885
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit885
nop
block885:

andi $6 $20 4108
multu $6 $6
sw $6 10620($0)

andi $6 $23 2369
nop
multu $6 $6
sw $6 10624($0)

andi $6 $21 534
nop
nop
multu $6 $6
sw $6 10628($0)

jr $ra
nop
exit885:


j entrance886
nop
entrance886:
jal block886
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit886
nop
block886:

andi $4 $16 383
div $4 $4
sw $4 10632($0)

andi $4 $20 2498
nop
div $4 $4
sw $4 10636($0)

andi $4 $22 3607
nop
nop
div $4 $4
sw $4 10640($0)

jalr $19, $ra
nop
exit886:


j entrance887
nop
entrance887:
jal block887
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit887
nop
block887:

andi $14 $16 2055
divu $14 $14
sw $14 10644($0)

andi $14 $22 3844
nop
divu $14 $14
sw $14 10648($0)

andi $14 $21 611
nop
nop
divu $14 $14
sw $14 10652($0)

jalr $24, $ra
nop
exit887:


j entrance888
nop
entrance888:
jal block888
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit888
nop
block888:

andi $14 $18 472
sll $14 $19 30
sw $1 10656($0)

andi $14 $16 688
nop
sll $14 $19 13
sw $1 10660($0)

andi $14 $23 2807
nop
nop
sll $14 $22 14
sw $1 10664($0)

jr $ra
nop
exit888:


j entrance889
nop
entrance889:
jal block889
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit889
nop
block889:

andi $13 $21 3302
srl $13 $22 0
sw $1 10668($0)

andi $13 $21 156
nop
srl $13 $18 14
sw $1 10672($0)

andi $13 $23 760
nop
nop
srl $13 $16 25
sw $1 10676($0)

jr $ra
nop
exit889:


j entrance890
nop
entrance890:
jal block890
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit890
nop
block890:

andi $7 $21 1914
sra $7 $17 7
sw $1 10680($0)

andi $7 $21 874
nop
sra $7 $21 27
sw $1 10684($0)

andi $7 $21 1019
nop
nop
sra $7 $17 16
sw $1 10688($0)

jalr $27, $ra
nop
exit890:


j entrance891
nop
entrance891:
jal block891
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit891
nop
block891:

andi $3 $18 895
sllv $1 $3 $3
sw $1 10692($0)

andi $3 $20 85
nop
sllv $1 $3 $3
sw $1 10696($0)

andi $3 $16 3208
nop
nop
sllv $1 $3 $3
sw $1 10700($0)

jr $ra
nop
exit891:


j entrance892
nop
entrance892:
jal block892
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit892
nop
block892:

andi $7 $21 1338
srlv $1 $7 $7
sw $1 10704($0)

andi $7 $21 2096
nop
srlv $1 $7 $7
sw $1 10708($0)

andi $7 $21 1094
nop
nop
srlv $1 $7 $7
sw $1 10712($0)

jr $ra
nop
exit892:


j entrance893
nop
entrance893:
jal block893
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit893
nop
block893:

andi $8 $18 2023
srav $1 $8 $8
sw $1 10716($0)

andi $8 $22 3481
nop
srav $1 $8 $8
sw $1 10720($0)

andi $8 $16 2335
nop
nop
srav $1 $8 $8
sw $1 10724($0)

jalr $4, $ra
nop
exit893:


j entrance894
nop
entrance894:
jal block894
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit894
nop
block894:

andi $1 $20 2096
and $1 $1 $1
sw $1 10728($0)

andi $1 $21 2397
nop
and $1 $1 $1
sw $1 10732($0)

andi $1 $19 2294
nop
nop
and $1 $1 $1
sw $1 10736($0)

jr $ra
nop
exit894:


j entrance895
nop
entrance895:
jal block895
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit895
nop
block895:

andi $1 $20 244
or $1 $1 $1
sw $1 10740($0)

andi $1 $20 889
nop
or $1 $1 $1
sw $1 10744($0)

andi $1 $21 2986
nop
nop
or $1 $1 $1
sw $1 10748($0)

jr $ra
nop
exit895:


j entrance896
nop
entrance896:
jal block896
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit896
nop
block896:

andi $9 $22 2667
xor $1 $9 $9
sw $1 10752($0)

andi $9 $16 3285
nop
xor $1 $9 $9
sw $1 10756($0)

andi $9 $21 3555
nop
nop
xor $1 $9 $9
sw $1 10760($0)

jalr $3, $ra
nop
exit896:


j entrance897
nop
entrance897:
jal block897
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit897
nop
block897:

andi $13 $20 2850
nor $1 $13 $13
sw $1 10764($0)

andi $13 $17 2200
nop
nor $1 $13 $13
sw $1 10768($0)

andi $13 $17 2354
nop
nop
nor $1 $13 $13
sw $1 10772($0)

jr $ra
nop
exit897:


j entrance898
nop
entrance898:
jal block898
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit898
nop
block898:

andi $15 $21 323
addi $17 $15 2834
sw $17 10776($0)

andi $15 $16 1887
nop
addi $20 $15 2446
sw $20 10780($0)

andi $15 $17 81
nop
nop
addi $20 $15 1014
sw $20 10784($0)

jalr $21, $ra
nop
exit898: