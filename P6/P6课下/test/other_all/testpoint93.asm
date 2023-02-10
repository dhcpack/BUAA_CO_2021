ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance992
nop
entrance992:
jal block992
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit992
nop
block992:

lui $5 3909
divu $5 $5
sw $5 11904($0)

lui $5 2584
nop
divu $5 $5
sw $5 11908($0)

lui $5 816
nop
nop
divu $5 $5
sw $5 11912($0)

jr $ra
nop
exit992:


j entrance993
nop
entrance993:
jal block993
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit993
nop
block993:

lui $7 600
sll $7 $17 25
sw $1 11916($0)

lui $7 546
nop
sll $7 $17 17
sw $1 11920($0)

lui $7 186
nop
nop
sll $7 $16 5
sw $1 11924($0)

jalr $20, $ra
nop
exit993:


j entrance994
nop
entrance994:
jal block994
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit994
nop
block994:

lui $3 2915
srl $3 $20 30
sw $1 11928($0)

lui $3 3932
nop
srl $3 $16 14
sw $1 11932($0)

lui $3 3576
nop
nop
srl $3 $19 28
sw $1 11936($0)

jr $ra
nop
exit994:


j entrance995
nop
entrance995:
jal block995
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit995
nop
block995:

lui $8 2230
sra $8 $16 28
sw $1 11940($0)

lui $8 3382
nop
sra $8 $17 9
sw $1 11944($0)

lui $8 1345
nop
nop
sra $8 $19 10
sw $1 11948($0)

jr $ra
nop
exit995:


j entrance996
nop
entrance996:
jal block996
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit996
nop
block996:

lui $2 1652
sllv $1 $2 $2
sw $1 11952($0)

lui $2 1666
nop
sllv $1 $2 $2
sw $1 11956($0)

lui $2 2793
nop
nop
sllv $1 $2 $2
sw $1 11960($0)

jr $ra
nop
exit996:


j entrance997
nop
entrance997:
jal block997
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit997
nop
block997:

lui $12 3946
srlv $1 $12 $12
sw $1 11964($0)

lui $12 64
nop
srlv $1 $12 $12
sw $1 11968($0)

lui $12 3739
nop
nop
srlv $1 $12 $12
sw $1 11972($0)

jalr $21, $ra
nop
exit997:


j entrance998
nop
entrance998:
jal block998
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit998
nop
block998:

lui $13 265
srav $1 $13 $13
sw $1 11976($0)

lui $13 438
nop
srav $1 $13 $13
sw $1 11980($0)

lui $13 2845
nop
nop
srav $1 $13 $13
sw $1 11984($0)

jr $ra
nop
exit998:


j entrance999
nop
entrance999:
jal block999
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit999
nop
block999:

lui $3 3757
and $1 $3 $3
sw $1 11988($0)

lui $3 893
nop
and $1 $3 $3
sw $1 11992($0)

lui $3 1271
nop
nop
and $1 $3 $3
sw $1 11996($0)

jalr $22, $ra
nop
exit999:


j entrance1000
nop
entrance1000:
jal block1000
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1000
nop
block1000:

lui $2 1679
or $1 $2 $2
sw $1 12000($0)

lui $2 3134
nop
or $1 $2 $2
sw $1 12004($0)

lui $2 1804
nop
nop
or $1 $2 $2
sw $1 12008($0)

jr $ra
nop
exit1000:


j entrance1001
nop
entrance1001:
jal block1001
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1001
nop
block1001:

lui $10 550
xor $1 $10 $10
sw $1 12012($0)

lui $10 3588
nop
xor $1 $10 $10
sw $1 12016($0)

lui $10 3833
nop
nop
xor $1 $10 $10
sw $1 12020($0)

jr $ra
nop
exit1001:


j entrance1002
nop
entrance1002:
jal block1002
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit1002
nop
block1002:

lui $3 3275
nor $1 $3 $3
sw $1 12024($0)

lui $3 3054
nop
nor $1 $3 $3
sw $1 12028($0)

lui $3 36
nop
nop
nor $1 $3 $3
sw $1 12032($0)

jr $ra
nop
exit1002:


j entrance1003
nop
entrance1003:
jal block1003
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit1003
nop
block1003:

lui $5 2336
addi $17 $5 1696
sw $17 12036($0)

lui $5 892
nop
addi $16 $5 591
sw $16 12040($0)

lui $5 2887
nop
nop
addi $16 $5 915
sw $16 12044($0)

jalr $27, $ra
nop
exit1003:


j entrance1004
nop
entrance1004:
jal block1004
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1004
nop
block1004:

lui $6 3388
addiu $22 $6 2801
sw $22 12048($0)

lui $6 3041
nop
addiu $22 $6 480
sw $22 12052($0)

lui $6 2233
nop
nop
addiu $18 $6 2560
sw $18 12056($0)

jr $ra
nop
exit1004:


j entrance1005
nop
entrance1005:
jal block1005
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1005
nop
block1005:

lui $5 2776
andi $17 $5 3078
sw $17 12060($0)

lui $5 3330
nop
andi $20 $5 1581
sw $20 12064($0)

lui $5 2738
nop
nop
andi $16 $5 3927
sw $16 12068($0)

jr $ra
nop
exit1005:


j entrance1006
nop
entrance1006:
jal block1006
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1006
nop
block1006:

lui $8 3854
ori $17 $8 2793
sw $17 12072($0)

lui $8 2674
nop
ori $21 $8 777
sw $21 12076($0)

lui $8 3824
nop
nop
ori $23 $8 264
sw $23 12080($0)

jalr $20, $ra
nop
exit1006:


j entrance1007
nop
entrance1007:
jal block1007
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1007
nop
block1007:

lui $10 1332
xori $20 $10 1837
sw $20 12084($0)

lui $10 2345
nop
xori $21 $10 596
sw $21 12088($0)

lui $10 1362
nop
nop
xori $21 $10 47
sw $21 12092($0)

jalr $6, $ra
nop
exit1007:


j entrance1008
nop
entrance1008:
jal block1008
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit1008
nop
block1008:

lui $9 3446
lui $19 1848
sw $19 12096($0)

lui $9 3912
nop
lui $16 3012
sw $16 12100($0)

lui $9 4068
nop
nop
lui $17 985
sw $17 12104($0)

jr $ra
nop
exit1008:


j entrance1009
nop
entrance1009:
jal block1009
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit1009
nop
block1009:

lui $11 2436
slt $1 $11 $11
sw $1 12108($0)

lui $11 1347
nop
slt $1 $11 $11
sw $1 12112($0)

lui $11 2436
nop
nop
slt $1 $11 $11
sw $1 12116($0)

jalr $17, $ra
nop
exit1009:


j entrance1010
nop
entrance1010:
jal block1010
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit1010
nop
block1010:

lui $2 2937
slti $21 $2 1308
sw $21 12120($0)

lui $2 1033
nop
slti $20 $2 3791
sw $20 12124($0)

lui $2 1586
nop
nop
slti $16 $2 462
sw $16 12128($0)

jalr $8, $ra
nop
exit1010:


j entrance1011
nop
entrance1011:
jal block1011
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit1011
nop
block1011:

lui $8 2546
sltiu $19 $8 318
sw $19 12132($0)

lui $8 3558
nop
sltiu $21 $8 1365
sw $21 12136($0)

lui $8 3324
nop
nop
sltiu $17 $8 138
sw $17 12140($0)

jr $ra
nop
exit1011:


j entrance1012
nop
entrance1012:
jal block1012
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1012
nop
block1012:

lui $10 2640
sltu $1 $10 $10
sw $1 12144($0)

lui $10 2451
nop
sltu $1 $10 $10
sw $1 12148($0)

lui $10 1230
nop
nop
sltu $1 $10 $10
sw $1 12152($0)

jr $ra
nop
exit1012:


j entrance1013
nop
entrance1013:
jal block1013
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit1013
nop
block1013:

lui $1 1209
mthi $1
sw $1 12156($0)

lui $1 2037
nop
mthi $1
sw $1 12160($0)

lui $1 3366
nop
nop
mthi $1
sw $1 12164($0)

jr $ra
nop
exit1013:


j entrance1014
nop
entrance1014:
jal block1014
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit1014
nop
block1014:

lui $14 3952
mtlo $14
sw $14 12168($0)

lui $14 4065
nop
mtlo $14
sw $14 12172($0)

lui $14 2702
nop
nop
mtlo $14
sw $14 12176($0)

jr $ra
nop
exit1014:

ori $16 $0 2395
ori $17 $0 1562
ori $18 $0 799
ori $19 $0 4271
ori $20 $0 65
ori $21 $0 535
ori $22 $0 618
ori $23 $0 3420

j entrance1015
nop
entrance1015:
jal block1015
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit1015
nop
block1015:

slt $8 $22 $20
lb $20 2228($0)
sw $20 12180($0)

slt $8 $21 $19
nop
lb $22 6128($0)
sw $22 12184($0)

slt $8 $22 $19
nop
nop
lb $22 4564($0)
sw $22 12188($0)

jr $ra
nop
exit1015:


j entrance1016
nop
entrance1016:
jal block1016
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1016
nop
block1016:

slt $3 $22 $21
lbu $21 3784($0)
sw $21 12192($0)

slt $3 $16 $19
nop
lbu $22 4476($0)
sw $22 12196($0)

slt $3 $20 $16
nop
nop
lbu $22 1244($0)
sw $22 12200($0)

jr $ra
nop
exit1016:


j entrance1017
nop
entrance1017:
jal block1017
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1017
nop
block1017:

slt $8 $21 $23
lh $18 5172($0)
sw $18 12204($0)

slt $8 $17 $16
nop
lh $23 4020($0)
sw $23 12208($0)

slt $8 $20 $19
nop
nop
lh $20 5324($0)
sw $20 12212($0)

jr $ra
nop
exit1017:


j entrance1018
nop
entrance1018:
jal block1018
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1018
nop
block1018:

slt $14 $23 $17
lhu $18 7868($0)
sw $18 12216($0)

slt $14 $22 $16
nop
lhu $21 2728($0)
sw $21 12220($0)

slt $14 $21 $17
nop
nop
lhu $18 5288($0)
sw $18 12224($0)

jalr $9, $ra
nop
exit1018:


j entrance1019
nop
entrance1019:
jal block1019
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1019
nop
block1019:

slt $4 $17 $22
lw $21 3076($0)
sw $21 12228($0)

slt $4 $23 $17
nop
lw $23 1060($0)
sw $23 12232($0)

slt $4 $16 $22
nop
nop
lw $18 1876($0)
sw $18 12236($0)

jr $ra
nop
exit1019:


j entrance1020
nop
entrance1020:
jal block1020
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1020
nop
block1020:

slt $5 $22 $20
add $1 $5 $5
sw $1 12240($0)

slt $5 $21 $21
nop
add $1 $5 $5
sw $1 12244($0)

slt $5 $20 $17
nop
nop
add $1 $5 $5
sw $1 12248($0)

jr $ra
nop
exit1020:


j entrance1021
nop
entrance1021:
jal block1021
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit1021
nop
block1021:

slt $6 $16 $17
addu $1 $6 $6
sw $1 12252($0)

slt $6 $20 $17
nop
addu $1 $6 $6
sw $1 12256($0)

slt $6 $16 $20
nop
nop
addu $1 $6 $6
sw $1 12260($0)

jalr $4, $ra
nop
exit1021:


j entrance1022
nop
entrance1022:
jal block1022
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1022
nop
block1022:

slt $8 $21 $17
sub $1 $8 $8
sw $1 12264($0)

slt $8 $17 $16
nop
sub $1 $8 $8
sw $1 12268($0)

slt $8 $23 $18
nop
nop
sub $1 $8 $8
sw $1 12272($0)

jr $ra
nop
exit1022: