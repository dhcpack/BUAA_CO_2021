ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance837
nop
entrance837:
jal block837
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit837
nop
block837:

addi $8 $17 111
sltu $1 $8 $8
sw $1 10044($0)

addi $8 $18 4042
nop
sltu $1 $8 $8
sw $1 10048($0)

addi $8 $20 3231
nop
nop
sltu $1 $8 $8
sw $1 10052($0)

jalr $2, $ra
nop
exit837:


j entrance838
nop
entrance838:
jal block838
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit838
nop
block838:

addi $2 $17 2253
mthi $2
sw $2 10056($0)

addi $2 $23 47
nop
mthi $2
sw $2 10060($0)

addi $2 $18 2910
nop
nop
mthi $2
sw $2 10064($0)

jalr $24, $ra
nop
exit838:


j entrance839
nop
entrance839:
jal block839
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit839
nop
block839:

addi $1 $20 477
mtlo $1
sw $1 10068($0)

addi $1 $16 1735
nop
mtlo $1
sw $1 10072($0)

addi $1 $22 3296
nop
nop
mtlo $1
sw $1 10076($0)

jr $ra
nop
exit839:

ori $16 $0 471
ori $17 $0 3814
ori $18 $0 2964
ori $19 $0 98
ori $20 $0 1436
ori $21 $0 3435
ori $22 $0 819
ori $23 $0 763

j entrance840
nop
entrance840:
jal block840
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit840
nop
block840:

addiu $4 $22 304
lb $22 7280($0)
sw $22 10080($0)

addiu $4 $20 2422
nop
lb $18 5480($0)
sw $18 10084($0)

addiu $4 $17 877
nop
nop
lb $20 3940($0)
sw $20 10088($0)

jr $ra
nop
exit840:


j entrance841
nop
entrance841:
jal block841
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit841
nop
block841:

addiu $6 $18 3528
lbu $18 824($0)
sw $18 10092($0)

addiu $6 $20 3369
nop
lbu $21 4940($0)
sw $21 10096($0)

addiu $6 $21 3704
nop
nop
lbu $18 916($0)
sw $18 10100($0)

jalr $5, $ra
nop
exit841:


j entrance842
nop
entrance842:
jal block842
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit842
nop
block842:

addiu $12 $16 411
lh $23 3552($0)
sw $23 10104($0)

addiu $12 $20 3155
nop
lh $16 1960($0)
sw $16 10108($0)

addiu $12 $16 2041
nop
nop
lh $19 5612($0)
sw $19 10112($0)

jalr $27, $ra
nop
exit842:


j entrance843
nop
entrance843:
jal block843
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit843
nop
block843:

addiu $13 $18 1270
lhu $20 4104($0)
sw $20 10116($0)

addiu $13 $22 2264
nop
lhu $23 5668($0)
sw $23 10120($0)

addiu $13 $18 3974
nop
nop
lhu $23 1432($0)
sw $23 10124($0)

jr $ra
nop
exit843:


j entrance844
nop
entrance844:
jal block844
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit844
nop
block844:

addiu $3 $21 1743
lw $19 3960($0)
sw $19 10128($0)

addiu $3 $18 3432
nop
lw $23 1728($0)
sw $23 10132($0)

addiu $3 $20 1410
nop
nop
lw $18 7280($0)
sw $18 10136($0)

jalr $11, $ra
nop
exit844:


j entrance845
nop
entrance845:
jal block845
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit845
nop
block845:

addiu $9 $16 2175
add $1 $9 $9
sw $1 10140($0)

addiu $9 $17 583
nop
add $1 $9 $9
sw $1 10144($0)

addiu $9 $22 1325
nop
nop
add $1 $9 $9
sw $1 10148($0)

jr $ra
nop
exit845:


j entrance846
nop
entrance846:
jal block846
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit846
nop
block846:

addiu $8 $22 500
addu $1 $8 $8
sw $1 10152($0)

addiu $8 $23 2773
nop
addu $1 $8 $8
sw $1 10156($0)

addiu $8 $23 939
nop
nop
addu $1 $8 $8
sw $1 10160($0)

jr $ra
nop
exit846:


j entrance847
nop
entrance847:
jal block847
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit847
nop
block847:

addiu $9 $19 4117
sub $1 $9 $9
sw $1 10164($0)

addiu $9 $16 1702
nop
sub $1 $9 $9
sw $1 10168($0)

addiu $9 $23 1779
nop
nop
sub $1 $9 $9
sw $1 10172($0)

jalr $9, $ra
nop
exit847:


j entrance848
nop
entrance848:
jal block848
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit848
nop
block848:

addiu $4 $21 944
subu $1 $4 $4
sw $1 10176($0)

addiu $4 $21 4064
nop
subu $1 $4 $4
sw $1 10180($0)

addiu $4 $22 3903
nop
nop
subu $1 $4 $4
sw $1 10184($0)

jr $ra
nop
exit848:


j entrance849
nop
entrance849:
jal block849
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit849
nop
block849:

addiu $5 $22 176
mult $5 $5
sw $5 10188($0)

addiu $5 $23 1610
nop
mult $5 $5
sw $5 10192($0)

addiu $5 $17 24
nop
nop
mult $5 $5
sw $5 10196($0)

jr $ra
nop
exit849:


j entrance850
nop
entrance850:
jal block850
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit850
nop
block850:

addiu $10 $20 3277
multu $10 $10
sw $10 10200($0)

addiu $10 $20 963
nop
multu $10 $10
sw $10 10204($0)

addiu $10 $20 263
nop
nop
multu $10 $10
sw $10 10208($0)

jr $ra
nop
exit850:


j entrance851
nop
entrance851:
jal block851
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit851
nop
block851:

addiu $5 $22 4080
div $5 $5
sw $5 10212($0)

addiu $5 $16 749
nop
div $5 $5
sw $5 10216($0)

addiu $5 $22 3359
nop
nop
div $5 $5
sw $5 10220($0)

jr $ra
nop
exit851:


j entrance852
nop
entrance852:
jal block852
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit852
nop
block852:

addiu $2 $18 1446
divu $2 $2
sw $2 10224($0)

addiu $2 $17 2072
nop
divu $2 $2
sw $2 10228($0)

addiu $2 $19 471
nop
nop
divu $2 $2
sw $2 10232($0)

jalr $26, $ra
nop
exit852:


j entrance853
nop
entrance853:
jal block853
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit853
nop
block853:

addiu $2 $21 2556
sll $2 $23 29
sw $1 10236($0)

addiu $2 $20 309
nop
sll $2 $23 13
sw $1 10240($0)

addiu $2 $23 1115
nop
nop
sll $2 $22 21
sw $1 10244($0)

jalr $12, $ra
nop
exit853:


j entrance854
nop
entrance854:
jal block854
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit854
nop
block854:

addiu $3 $21 1746
srl $3 $18 31
sw $1 10248($0)

addiu $3 $18 3792
nop
srl $3 $16 16
sw $1 10252($0)

addiu $3 $23 3235
nop
nop
srl $3 $23 31
sw $1 10256($0)

jr $ra
nop
exit854:


j entrance855
nop
entrance855:
jal block855
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit855
nop
block855:

addiu $14 $18 4103
sra $14 $22 0
sw $1 10260($0)

addiu $14 $23 3423
nop
sra $14 $22 11
sw $1 10264($0)

addiu $14 $23 2380
nop
nop
sra $14 $22 17
sw $1 10268($0)

jalr $25, $ra
nop
exit855:


j entrance856
nop
entrance856:
jal block856
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit856
nop
block856:

addiu $9 $19 3824
sllv $1 $9 $9
sw $1 10272($0)

addiu $9 $22 1170
nop
sllv $1 $9 $9
sw $1 10276($0)

addiu $9 $21 379
nop
nop
sllv $1 $9 $9
sw $1 10280($0)

jr $ra
nop
exit856:


j entrance857
nop
entrance857:
jal block857
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit857
nop
block857:

addiu $14 $16 2228
srlv $1 $14 $14
sw $1 10284($0)

addiu $14 $23 4080
nop
srlv $1 $14 $14
sw $1 10288($0)

addiu $14 $18 3914
nop
nop
srlv $1 $14 $14
sw $1 10292($0)

jr $ra
nop
exit857:


j entrance858
nop
entrance858:
jal block858
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit858
nop
block858:

addiu $6 $21 3195
srav $1 $6 $6
sw $1 10296($0)

addiu $6 $16 1220
nop
srav $1 $6 $6
sw $1 10300($0)

addiu $6 $16 3197
nop
nop
srav $1 $6 $6
sw $1 10304($0)

jalr $6, $ra
nop
exit858:


j entrance859
nop
entrance859:
jal block859
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit859
nop
block859:

addiu $3 $19 1869
and $1 $3 $3
sw $1 10308($0)

addiu $3 $16 3361
nop
and $1 $3 $3
sw $1 10312($0)

addiu $3 $22 2302
nop
nop
and $1 $3 $3
sw $1 10316($0)

jalr $21, $ra
nop
exit859:


j entrance860
nop
entrance860:
jal block860
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit860
nop
block860:

addiu $3 $19 2019
or $1 $3 $3
sw $1 10320($0)

addiu $3 $22 1419
nop
or $1 $3 $3
sw $1 10324($0)

addiu $3 $16 2565
nop
nop
or $1 $3 $3
sw $1 10328($0)

jalr $13, $ra
nop
exit860:


j entrance861
nop
entrance861:
jal block861
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit861
nop
block861:

addiu $10 $23 1108
xor $1 $10 $10
sw $1 10332($0)

addiu $10 $22 3128
nop
xor $1 $10 $10
sw $1 10336($0)

addiu $10 $18 864
nop
nop
xor $1 $10 $10
sw $1 10340($0)

jr $ra
nop
exit861:


j entrance862
nop
entrance862:
jal block862
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit862
nop
block862:

addiu $15 $18 3351
nor $1 $15 $15
sw $1 10344($0)

addiu $15 $20 2741
nop
nor $1 $15 $15
sw $1 10348($0)

addiu $15 $20 3388
nop
nop
nor $1 $15 $15
sw $1 10352($0)

jr $ra
nop
exit862:


j entrance863
nop
entrance863:
jal block863
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit863
nop
block863:

addiu $14 $18 461
addi $20 $14 688
sw $20 10356($0)

addiu $14 $18 3989
nop
addi $16 $14 425
sw $16 10360($0)

addiu $14 $18 3988
nop
nop
addi $23 $14 409
sw $23 10364($0)

jr $ra
nop
exit863:


j entrance864
nop
entrance864:
jal block864
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit864
nop
block864:

addiu $12 $20 2327
addiu $23 $12 3659
sw $23 10368($0)

addiu $12 $21 1107
nop
addiu $18 $12 890
sw $18 10372($0)

addiu $12 $23 581
nop
nop
addiu $18 $12 118
sw $18 10376($0)

jalr $28, $ra
nop
exit864:


j entrance865
nop
entrance865:
jal block865
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit865
nop
block865:

addiu $5 $20 1262
andi $20 $5 968
sw $20 10380($0)

addiu $5 $16 79
nop
andi $19 $5 1129
sw $19 10384($0)

addiu $5 $20 1495
nop
nop
andi $20 $5 3326
sw $20 10388($0)

jr $ra
nop
exit865:


j entrance866
nop
entrance866:
jal block866
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit866
nop
block866:

addiu $2 $16 2531
ori $21 $2 1988
sw $21 10392($0)

addiu $2 $16 3908
nop
ori $18 $2 2706
sw $18 10396($0)

addiu $2 $21 2233
nop
nop
ori $19 $2 3193
sw $19 10400($0)

jalr $27, $ra
nop
exit866:


j entrance867
nop
entrance867:
jal block867
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit867
nop
block867:

addiu $6 $19 2390
xori $19 $6 2246
sw $19 10404($0)

addiu $6 $20 274
nop
xori $16 $6 263
sw $16 10408($0)

addiu $6 $22 2607
nop
nop
xori $22 $6 1608
sw $22 10412($0)

jr $ra
nop
exit867: