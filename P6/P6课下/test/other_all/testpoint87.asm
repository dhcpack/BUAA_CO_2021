ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance806
nop
entrance806:
jal block806
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit806
nop
block806:

addi $1 $20 1055
lbu $18 612($0)
sw $18 9672($0)

addi $1 $19 983
nop
lbu $19 6068($0)
sw $19 9676($0)

addi $1 $17 1970
nop
nop
lbu $16 2056($0)
sw $16 9680($0)

jr $ra
nop
exit806:


j entrance807
nop
entrance807:
jal block807
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit807
nop
block807:

addi $11 $20 472
lh $19 296($0)
sw $19 9684($0)

addi $11 $16 1239
nop
lh $16 48($0)
sw $16 9688($0)

addi $11 $23 2149
nop
nop
lh $16 2396($0)
sw $16 9692($0)

jr $ra
nop
exit807:


j entrance808
nop
entrance808:
jal block808
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit808
nop
block808:

addi $15 $19 3919
lhu $22 7232($0)
sw $22 9696($0)

addi $15 $17 2457
nop
lhu $17 4056($0)
sw $17 9700($0)

addi $15 $22 452
nop
nop
lhu $18 3368($0)
sw $18 9704($0)

jr $ra
nop
exit808:


j entrance809
nop
entrance809:
jal block809
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit809
nop
block809:

addi $15 $23 2201
lw $16 3404($0)
sw $16 9708($0)

addi $15 $18 3287
nop
lw $18 7596($0)
sw $18 9712($0)

addi $15 $20 2163
nop
nop
lw $19 2676($0)
sw $19 9716($0)

jr $ra
nop
exit809:


j entrance810
nop
entrance810:
jal block810
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit810
nop
block810:

addi $2 $19 707
add $1 $2 $2
sw $1 9720($0)

addi $2 $23 1704
nop
add $1 $2 $2
sw $1 9724($0)

addi $2 $22 1649
nop
nop
add $1 $2 $2
sw $1 9728($0)

jr $ra
nop
exit810:


j entrance811
nop
entrance811:
jal block811
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit811
nop
block811:

addi $2 $21 3594
addu $1 $2 $2
sw $1 9732($0)

addi $2 $17 762
nop
addu $1 $2 $2
sw $1 9736($0)

addi $2 $18 3462
nop
nop
addu $1 $2 $2
sw $1 9740($0)

jr $ra
nop
exit811:


j entrance812
nop
entrance812:
jal block812
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit812
nop
block812:

addi $9 $18 2291
sub $1 $9 $9
sw $1 9744($0)

addi $9 $20 3058
nop
sub $1 $9 $9
sw $1 9748($0)

addi $9 $20 343
nop
nop
sub $1 $9 $9
sw $1 9752($0)

jr $ra
nop
exit812:


j entrance813
nop
entrance813:
jal block813
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit813
nop
block813:

addi $7 $20 2465
subu $1 $7 $7
sw $1 9756($0)

addi $7 $22 3805
nop
subu $1 $7 $7
sw $1 9760($0)

addi $7 $20 3978
nop
nop
subu $1 $7 $7
sw $1 9764($0)

jalr $1, $ra
nop
exit813:


j entrance814
nop
entrance814:
jal block814
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit814
nop
block814:

addi $9 $22 1243
mult $9 $9
sw $9 9768($0)

addi $9 $18 3596
nop
mult $9 $9
sw $9 9772($0)

addi $9 $23 363
nop
nop
mult $9 $9
sw $9 9776($0)

jr $ra
nop
exit814:


j entrance815
nop
entrance815:
jal block815
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit815
nop
block815:

addi $6 $21 3167
multu $6 $6
sw $6 9780($0)

addi $6 $22 1719
nop
multu $6 $6
sw $6 9784($0)

addi $6 $22 3224
nop
nop
multu $6 $6
sw $6 9788($0)

jr $ra
nop
exit815:


j entrance816
nop
entrance816:
jal block816
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit816
nop
block816:

addi $3 $18 1966
div $3 $3
sw $3 9792($0)

addi $3 $16 1492
nop
div $3 $3
sw $3 9796($0)

addi $3 $19 355
nop
nop
div $3 $3
sw $3 9800($0)

jalr $24, $ra
nop
exit816:


j entrance817
nop
entrance817:
jal block817
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit817
nop
block817:

addi $9 $20 2814
divu $9 $9
sw $9 9804($0)

addi $9 $18 2667
nop
divu $9 $9
sw $9 9808($0)

addi $9 $23 1858
nop
nop
divu $9 $9
sw $9 9812($0)

jalr $16, $ra
nop
exit817:


j entrance818
nop
entrance818:
jal block818
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit818
nop
block818:

addi $10 $21 224
sll $10 $22 7
sw $1 9816($0)

addi $10 $19 1131
nop
sll $10 $21 15
sw $1 9820($0)

addi $10 $16 2238
nop
nop
sll $10 $16 7
sw $1 9824($0)

jr $ra
nop
exit818:


j entrance819
nop
entrance819:
jal block819
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit819
nop
block819:

addi $12 $20 507
srl $12 $21 15
sw $1 9828($0)

addi $12 $17 3472
nop
srl $12 $22 10
sw $1 9832($0)

addi $12 $17 3088
nop
nop
srl $12 $18 10
sw $1 9836($0)

jalr $17, $ra
nop
exit819:


j entrance820
nop
entrance820:
jal block820
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit820
nop
block820:

addi $11 $20 1311
sra $11 $23 6
sw $1 9840($0)

addi $11 $16 2314
nop
sra $11 $21 14
sw $1 9844($0)

addi $11 $17 1412
nop
nop
sra $11 $17 23
sw $1 9848($0)

jalr $4, $ra
nop
exit820:


j entrance821
nop
entrance821:
jal block821
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit821
nop
block821:

addi $6 $23 1815
sllv $1 $6 $6
sw $1 9852($0)

addi $6 $18 2177
nop
sllv $1 $6 $6
sw $1 9856($0)

addi $6 $16 1459
nop
nop
sllv $1 $6 $6
sw $1 9860($0)

jalr $6, $ra
nop
exit821:


j entrance822
nop
entrance822:
jal block822
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit822
nop
block822:

addi $5 $23 794
srlv $1 $5 $5
sw $1 9864($0)

addi $5 $18 21
nop
srlv $1 $5 $5
sw $1 9868($0)

addi $5 $22 715
nop
nop
srlv $1 $5 $5
sw $1 9872($0)

jalr $1, $ra
nop
exit822:


j entrance823
nop
entrance823:
jal block823
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit823
nop
block823:

addi $5 $22 145
srav $1 $5 $5
sw $1 9876($0)

addi $5 $19 1907
nop
srav $1 $5 $5
sw $1 9880($0)

addi $5 $18 1737
nop
nop
srav $1 $5 $5
sw $1 9884($0)

jr $ra
nop
exit823:


j entrance824
nop
entrance824:
jal block824
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit824
nop
block824:

addi $8 $19 955
and $1 $8 $8
sw $1 9888($0)

addi $8 $18 2895
nop
and $1 $8 $8
sw $1 9892($0)

addi $8 $18 2381
nop
nop
and $1 $8 $8
sw $1 9896($0)

jr $ra
nop
exit824:


j entrance825
nop
entrance825:
jal block825
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit825
nop
block825:

addi $12 $20 259
or $1 $12 $12
sw $1 9900($0)

addi $12 $18 787
nop
or $1 $12 $12
sw $1 9904($0)

addi $12 $21 3065
nop
nop
or $1 $12 $12
sw $1 9908($0)

jr $ra
nop
exit825:


j entrance826
nop
entrance826:
jal block826
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit826
nop
block826:

addi $5 $19 4107
xor $1 $5 $5
sw $1 9912($0)

addi $5 $16 3882
nop
xor $1 $5 $5
sw $1 9916($0)

addi $5 $22 3
nop
nop
xor $1 $5 $5
sw $1 9920($0)

jr $ra
nop
exit826:


j entrance827
nop
entrance827:
jal block827
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit827
nop
block827:

addi $1 $18 561
nor $1 $1 $1
sw $1 9924($0)

addi $1 $22 3488
nop
nor $1 $1 $1
sw $1 9928($0)

addi $1 $19 3816
nop
nop
nor $1 $1 $1
sw $1 9932($0)

jr $ra
nop
exit827:


j entrance828
nop
entrance828:
jal block828
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit828
nop
block828:

addi $2 $17 2686
addi $22 $2 2409
sw $22 9936($0)

addi $2 $16 2414
nop
addi $18 $2 1847
sw $18 9940($0)

addi $2 $20 4011
nop
nop
addi $22 $2 2921
sw $22 9944($0)

jalr $28, $ra
nop
exit828:


j entrance829
nop
entrance829:
jal block829
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit829
nop
block829:

addi $14 $22 115
addiu $21 $14 1614
sw $21 9948($0)

addi $14 $18 3468
nop
addiu $20 $14 3888
sw $20 9952($0)

addi $14 $17 1945
nop
nop
addiu $16 $14 984
sw $16 9956($0)

jr $ra
nop
exit829:


j entrance830
nop
entrance830:
jal block830
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit830
nop
block830:

addi $8 $16 3311
andi $17 $8 1045
sw $17 9960($0)

addi $8 $16 1477
nop
andi $16 $8 1900
sw $16 9964($0)

addi $8 $20 2502
nop
nop
andi $18 $8 2783
sw $18 9968($0)

jalr $28, $ra
nop
exit830:


j entrance831
nop
entrance831:
jal block831
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit831
nop
block831:

addi $10 $20 1927
ori $19 $10 1310
sw $19 9972($0)

addi $10 $22 4106
nop
ori $19 $10 3526
sw $19 9976($0)

addi $10 $22 1826
nop
nop
ori $22 $10 3698
sw $22 9980($0)

jr $ra
nop
exit831:


j entrance832
nop
entrance832:
jal block832
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit832
nop
block832:

addi $1 $21 2890
xori $21 $1 1124
sw $21 9984($0)

addi $1 $19 2363
nop
xori $21 $1 2623
sw $21 9988($0)

addi $1 $19 3675
nop
nop
xori $17 $1 3953
sw $17 9992($0)

jr $ra
nop
exit832:


j entrance833
nop
entrance833:
jal block833
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit833
nop
block833:

addi $9 $22 1523
lui $21 1402
sw $21 9996($0)

addi $9 $23 1720
nop
lui $23 3723
sw $23 10000($0)

addi $9 $21 2521
nop
nop
lui $20 2367
sw $20 10004($0)

jr $ra
nop
exit833:


j entrance834
nop
entrance834:
jal block834
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit834
nop
block834:

addi $6 $20 1468
slt $1 $6 $6
sw $1 10008($0)

addi $6 $16 359
nop
slt $1 $6 $6
sw $1 10012($0)

addi $6 $23 1731
nop
nop
slt $1 $6 $6
sw $1 10016($0)

jr $ra
nop
exit834:


j entrance835
nop
entrance835:
jal block835
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit835
nop
block835:

addi $5 $19 782
slti $16 $5 1697
sw $16 10020($0)

addi $5 $22 2746
nop
slti $19 $5 484
sw $19 10024($0)

addi $5 $17 1504
nop
nop
slti $18 $5 2588
sw $18 10028($0)

jalr $30, $ra
nop
exit835:


j entrance836
nop
entrance836:
jal block836
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit836
nop
block836:

addi $2 $21 3798
sltiu $22 $2 2815
sw $22 10032($0)

addi $2 $19 868
nop
sltiu $23 $2 18
sw $23 10036($0)

addi $2 $19 3824
nop
nop
sltiu $16 $2 3940
sw $16 10040($0)

jr $ra
nop
exit836: