ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance961
nop
entrance961:
jal block961
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit961
nop
block961:

xori $10 $16 2742
sllv $1 $10 $10
sw $1 11532($0)

xori $10 $22 1031
nop
sllv $1 $10 $10
sw $1 11536($0)

xori $10 $18 2010
nop
nop
sllv $1 $10 $10
sw $1 11540($0)

jalr $9, $ra
nop
exit961:


j entrance962
nop
entrance962:
jal block962
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit962
nop
block962:

xori $3 $22 1361
srlv $1 $3 $3
sw $1 11544($0)

xori $3 $19 3719
nop
srlv $1 $3 $3
sw $1 11548($0)

xori $3 $19 2586
nop
nop
srlv $1 $3 $3
sw $1 11552($0)

jr $ra
nop
exit962:


j entrance963
nop
entrance963:
jal block963
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit963
nop
block963:

xori $15 $22 3316
srav $1 $15 $15
sw $1 11556($0)

xori $15 $16 223
nop
srav $1 $15 $15
sw $1 11560($0)

xori $15 $20 3609
nop
nop
srav $1 $15 $15
sw $1 11564($0)

jr $ra
nop
exit963:


j entrance964
nop
entrance964:
jal block964
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit964
nop
block964:

xori $11 $23 481
and $1 $11 $11
sw $1 11568($0)

xori $11 $17 2715
nop
and $1 $11 $11
sw $1 11572($0)

xori $11 $18 2647
nop
nop
and $1 $11 $11
sw $1 11576($0)

jalr $13, $ra
nop
exit964:


j entrance965
nop
entrance965:
jal block965
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit965
nop
block965:

xori $8 $17 2820
or $1 $8 $8
sw $1 11580($0)

xori $8 $18 3700
nop
or $1 $8 $8
sw $1 11584($0)

xori $8 $23 914
nop
nop
or $1 $8 $8
sw $1 11588($0)

jalr $7, $ra
nop
exit965:


j entrance966
nop
entrance966:
jal block966
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit966
nop
block966:

xori $2 $23 2690
xor $1 $2 $2
sw $1 11592($0)

xori $2 $22 753
nop
xor $1 $2 $2
sw $1 11596($0)

xori $2 $16 3207
nop
nop
xor $1 $2 $2
sw $1 11600($0)

jr $ra
nop
exit966:


j entrance967
nop
entrance967:
jal block967
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit967
nop
block967:

xori $15 $19 4113
nor $1 $15 $15
sw $1 11604($0)

xori $15 $22 68
nop
nor $1 $15 $15
sw $1 11608($0)

xori $15 $17 1018
nop
nop
nor $1 $15 $15
sw $1 11612($0)

jalr $22, $ra
nop
exit967:


j entrance968
nop
entrance968:
jal block968
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit968
nop
block968:

xori $13 $18 1490
addi $22 $13 4076
sw $22 11616($0)

xori $13 $16 2699
nop
addi $22 $13 1334
sw $22 11620($0)

xori $13 $22 523
nop
nop
addi $18 $13 442
sw $18 11624($0)

jr $ra
nop
exit968:


j entrance969
nop
entrance969:
jal block969
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit969
nop
block969:

xori $10 $23 3732
addiu $23 $10 3480
sw $23 11628($0)

xori $10 $18 3126
nop
addiu $23 $10 3119
sw $23 11632($0)

xori $10 $18 110
nop
nop
addiu $17 $10 2858
sw $17 11636($0)

jr $ra
nop
exit969:


j entrance970
nop
entrance970:
jal block970
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit970
nop
block970:

xori $3 $22 3951
andi $19 $3 156
sw $19 11640($0)

xori $3 $23 727
nop
andi $16 $3 2590
sw $16 11644($0)

xori $3 $23 3175
nop
nop
andi $17 $3 2642
sw $17 11648($0)

jalr $2, $ra
nop
exit970:


j entrance971
nop
entrance971:
jal block971
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit971
nop
block971:

xori $7 $19 757
ori $22 $7 2917
sw $22 11652($0)

xori $7 $22 365
nop
ori $18 $7 2994
sw $18 11656($0)

xori $7 $19 367
nop
nop
ori $21 $7 3395
sw $21 11660($0)

jalr $6, $ra
nop
exit971:


j entrance972
nop
entrance972:
jal block972
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit972
nop
block972:

xori $1 $23 3110
xori $18 $1 2395
sw $18 11664($0)

xori $1 $20 4046
nop
xori $20 $1 1039
sw $20 11668($0)

xori $1 $17 858
nop
nop
xori $17 $1 3521
sw $17 11672($0)

jr $ra
nop
exit972:


j entrance973
nop
entrance973:
jal block973
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit973
nop
block973:

xori $12 $19 1948
lui $17 1949
sw $17 11676($0)

xori $12 $22 1850
nop
lui $17 1967
sw $17 11680($0)

xori $12 $21 981
nop
nop
lui $19 840
sw $19 11684($0)

jalr $7, $ra
nop
exit973:


j entrance974
nop
entrance974:
jal block974
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit974
nop
block974:

xori $10 $23 2008
slt $1 $10 $10
sw $1 11688($0)

xori $10 $18 2395
nop
slt $1 $10 $10
sw $1 11692($0)

xori $10 $20 10
nop
nop
slt $1 $10 $10
sw $1 11696($0)

jr $ra
nop
exit974:


j entrance975
nop
entrance975:
jal block975
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit975
nop
block975:

xori $10 $18 3218
slti $16 $10 2784
sw $16 11700($0)

xori $10 $19 921
nop
slti $23 $10 758
sw $23 11704($0)

xori $10 $19 2799
nop
nop
slti $16 $10 2128
sw $16 11708($0)

jr $ra
nop
exit975:


j entrance976
nop
entrance976:
jal block976
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit976
nop
block976:

xori $8 $23 2835
sltiu $19 $8 2606
sw $19 11712($0)

xori $8 $22 2418
nop
sltiu $22 $8 818
sw $22 11716($0)

xori $8 $18 3079
nop
nop
sltiu $17 $8 943
sw $17 11720($0)

jr $ra
nop
exit976:


j entrance977
nop
entrance977:
jal block977
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit977
nop
block977:

xori $12 $16 67
sltu $1 $12 $12
sw $1 11724($0)

xori $12 $18 1527
nop
sltu $1 $12 $12
sw $1 11728($0)

xori $12 $20 2661
nop
nop
sltu $1 $12 $12
sw $1 11732($0)

jr $ra
nop
exit977:


j entrance978
nop
entrance978:
jal block978
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit978
nop
block978:

xori $5 $17 3913
mthi $5
sw $5 11736($0)

xori $5 $18 908
nop
mthi $5
sw $5 11740($0)

xori $5 $21 3581
nop
nop
mthi $5
sw $5 11744($0)

jalr $1, $ra
nop
exit978:


j entrance979
nop
entrance979:
jal block979
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit979
nop
block979:

xori $3 $21 1564
mtlo $3
sw $3 11748($0)

xori $3 $22 2272
nop
mtlo $3
sw $3 11752($0)

xori $3 $22 1016
nop
nop
mtlo $3
sw $3 11756($0)

jalr $19, $ra
nop
exit979:

ori $16 $0 3267
ori $17 $0 183
ori $18 $0 3994
ori $19 $0 2404
ori $20 $0 2663
ori $21 $0 2899
ori $22 $0 3417
ori $23 $0 2101

j entrance980
nop
entrance980:
jal block980
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit980
nop
block980:

lui $5 1270
lb $17 4228($0)
sw $17 11760($0)

lui $5 511
nop
lb $23 6260($0)
sw $23 11764($0)

lui $5 652
nop
nop
lb $23 7640($0)
sw $23 11768($0)

jr $ra
nop
exit980:


j entrance981
nop
entrance981:
jal block981
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit981
nop
block981:

lui $3 1809
lbu $19 4432($0)
sw $19 11772($0)

lui $3 1141
nop
lbu $22 1628($0)
sw $22 11776($0)

lui $3 2485
nop
nop
lbu $17 3448($0)
sw $17 11780($0)

jalr $23, $ra
nop
exit981:


j entrance982
nop
entrance982:
jal block982
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit982
nop
block982:

lui $3 1437
lh $16 2128($0)
sw $16 11784($0)

lui $3 3764
nop
lh $16 1632($0)
sw $16 11788($0)

lui $3 4117
nop
nop
lh $17 576($0)
sw $17 11792($0)

jr $ra
nop
exit982:


j entrance983
nop
entrance983:
jal block983
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit983
nop
block983:

lui $13 2117
lhu $16 1908($0)
sw $16 11796($0)

lui $13 1626
nop
lhu $22 5640($0)
sw $22 11800($0)

lui $13 2661
nop
nop
lhu $17 5072($0)
sw $17 11804($0)

jalr $9, $ra
nop
exit983:


j entrance984
nop
entrance984:
jal block984
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit984
nop
block984:

lui $6 2325
lw $16 4496($0)
sw $16 11808($0)

lui $6 1482
nop
lw $21 7228($0)
sw $21 11812($0)

lui $6 3768
nop
nop
lw $22 1284($0)
sw $22 11816($0)

jalr $26, $ra
nop
exit984:


j entrance985
nop
entrance985:
jal block985
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit985
nop
block985:

lui $9 1659
add $1 $9 $9
sw $1 11820($0)

lui $9 674
nop
add $1 $9 $9
sw $1 11824($0)

lui $9 2346
nop
nop
add $1 $9 $9
sw $1 11828($0)

jr $ra
nop
exit985:


j entrance986
nop
entrance986:
jal block986
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit986
nop
block986:

lui $10 3947
addu $1 $10 $10
sw $1 11832($0)

lui $10 1229
nop
addu $1 $10 $10
sw $1 11836($0)

lui $10 1572
nop
nop
addu $1 $10 $10
sw $1 11840($0)

jalr $17, $ra
nop
exit986:


j entrance987
nop
entrance987:
jal block987
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit987
nop
block987:

lui $8 3647
sub $1 $8 $8
sw $1 11844($0)

lui $8 3226
nop
sub $1 $8 $8
sw $1 11848($0)

lui $8 3487
nop
nop
sub $1 $8 $8
sw $1 11852($0)

jalr $9, $ra
nop
exit987:


j entrance988
nop
entrance988:
jal block988
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit988
nop
block988:

lui $4 2184
subu $1 $4 $4
sw $1 11856($0)

lui $4 1567
nop
subu $1 $4 $4
sw $1 11860($0)

lui $4 2034
nop
nop
subu $1 $4 $4
sw $1 11864($0)

jalr $13, $ra
nop
exit988:


j entrance989
nop
entrance989:
jal block989
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit989
nop
block989:

lui $15 2185
mult $15 $15
sw $15 11868($0)

lui $15 100
nop
mult $15 $15
sw $15 11872($0)

lui $15 1394
nop
nop
mult $15 $15
sw $15 11876($0)

jr $ra
nop
exit989:


j entrance990
nop
entrance990:
jal block990
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit990
nop
block990:

lui $8 1004
multu $8 $8
sw $8 11880($0)

lui $8 50
nop
multu $8 $8
sw $8 11884($0)

lui $8 942
nop
nop
multu $8 $8
sw $8 11888($0)

jr $ra
nop
exit990:


j entrance991
nop
entrance991:
jal block991
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit991
nop
block991:

lui $6 869
div $6 $6
sw $6 11892($0)

lui $6 3374
nop
div $6 $6
sw $6 11896($0)

lui $6 3417
nop
nop
div $6 $6
sw $6 11900($0)

jr $ra
nop
exit991: