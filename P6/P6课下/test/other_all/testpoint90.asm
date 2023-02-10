ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance899
nop
entrance899:
jal block899
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit899
nop
block899:

andi $13 $17 560
addiu $19 $13 168
sw $19 10788($0)

andi $13 $19 928
nop
addiu $22 $13 3319
sw $22 10792($0)

andi $13 $22 2011
nop
nop
addiu $19 $13 2986
sw $19 10796($0)

jr $ra
nop
exit899:


j entrance900
nop
entrance900:
jal block900
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit900
nop
block900:

andi $6 $19 3917
andi $21 $6 3517
sw $21 10800($0)

andi $6 $20 1701
nop
andi $17 $6 3039
sw $17 10804($0)

andi $6 $20 3560
nop
nop
andi $21 $6 3111
sw $21 10808($0)

jalr $22, $ra
nop
exit900:


j entrance901
nop
entrance901:
jal block901
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit901
nop
block901:

andi $2 $16 317
ori $20 $2 3686
sw $20 10812($0)

andi $2 $23 2114
nop
ori $21 $2 2388
sw $21 10816($0)

andi $2 $21 971
nop
nop
ori $18 $2 2362
sw $18 10820($0)

jr $ra
nop
exit901:


j entrance902
nop
entrance902:
jal block902
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit902
nop
block902:

andi $7 $20 3587
xori $23 $7 705
sw $23 10824($0)

andi $7 $19 1359
nop
xori $20 $7 546
sw $20 10828($0)

andi $7 $19 3342
nop
nop
xori $22 $7 2506
sw $22 10832($0)

jr $ra
nop
exit902:


j entrance903
nop
entrance903:
jal block903
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit903
nop
block903:

andi $9 $23 3866
lui $23 768
sw $23 10836($0)

andi $9 $16 163
nop
lui $17 2942
sw $17 10840($0)

andi $9 $19 420
nop
nop
lui $21 1254
sw $21 10844($0)

jalr $26, $ra
nop
exit903:


j entrance904
nop
entrance904:
jal block904
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit904
nop
block904:

andi $15 $22 3739
slt $1 $15 $15
sw $1 10848($0)

andi $15 $19 2265
nop
slt $1 $15 $15
sw $1 10852($0)

andi $15 $16 3833
nop
nop
slt $1 $15 $15
sw $1 10856($0)

jalr $28, $ra
nop
exit904:


j entrance905
nop
entrance905:
jal block905
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit905
nop
block905:

andi $4 $22 3865
slti $20 $4 1806
sw $20 10860($0)

andi $4 $17 4077
nop
slti $23 $4 170
sw $23 10864($0)

andi $4 $23 357
nop
nop
slti $22 $4 947
sw $22 10868($0)

jr $ra
nop
exit905:


j entrance906
nop
entrance906:
jal block906
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit906
nop
block906:

andi $9 $17 2084
sltiu $21 $9 684
sw $21 10872($0)

andi $9 $18 941
nop
sltiu $16 $9 3672
sw $16 10876($0)

andi $9 $16 3128
nop
nop
sltiu $23 $9 1472
sw $23 10880($0)

jr $ra
nop
exit906:


j entrance907
nop
entrance907:
jal block907
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit907
nop
block907:

andi $1 $21 2409
sltu $1 $1 $1
sw $1 10884($0)

andi $1 $18 2800
nop
sltu $1 $1 $1
sw $1 10888($0)

andi $1 $18 2459
nop
nop
sltu $1 $1 $1
sw $1 10892($0)

jr $ra
nop
exit907:


j entrance908
nop
entrance908:
jal block908
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit908
nop
block908:

andi $7 $21 4062
mthi $7
sw $7 10896($0)

andi $7 $18 873
nop
mthi $7
sw $7 10900($0)

andi $7 $17 237
nop
nop
mthi $7
sw $7 10904($0)

jalr $18, $ra
nop
exit908:


j entrance909
nop
entrance909:
jal block909
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit909
nop
block909:

andi $8 $16 2808
mtlo $8
sw $8 10908($0)

andi $8 $20 2083
nop
mtlo $8
sw $8 10912($0)

andi $8 $17 1976
nop
nop
mtlo $8
sw $8 10916($0)

jalr $20, $ra
nop
exit909:

ori $16 $0 3488
ori $17 $0 300
ori $18 $0 3992
ori $19 $0 465
ori $20 $0 26
ori $21 $0 1335
ori $22 $0 134
ori $23 $0 513

j entrance910
nop
entrance910:
jal block910
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit910
nop
block910:

ori $12 $20 85
lb $20 3428($0)
sw $20 10920($0)

ori $12 $18 1846
nop
lb $21 1380($0)
sw $21 10924($0)

ori $12 $22 2673
nop
nop
lb $19 5792($0)
sw $19 10928($0)

jr $ra
nop
exit910:


j entrance911
nop
entrance911:
jal block911
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit911
nop
block911:

ori $9 $22 1270
lbu $23 3216($0)
sw $23 10932($0)

ori $9 $19 2842
nop
lbu $23 6832($0)
sw $23 10936($0)

ori $9 $18 1018
nop
nop
lbu $22 7296($0)
sw $22 10940($0)

jalr $10, $ra
nop
exit911:


j entrance912
nop
entrance912:
jal block912
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit912
nop
block912:

ori $3 $20 1615
lh $22 3520($0)
sw $22 10944($0)

ori $3 $19 1136
nop
lh $19 36($0)
sw $19 10948($0)

ori $3 $22 2866
nop
nop
lh $20 1252($0)
sw $20 10952($0)

jr $ra
nop
exit912:


j entrance913
nop
entrance913:
jal block913
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit913
nop
block913:

ori $14 $19 2360
lhu $16 5444($0)
sw $16 10956($0)

ori $14 $22 2717
nop
lhu $22 1040($0)
sw $22 10960($0)

ori $14 $17 352
nop
nop
lhu $17 1092($0)
sw $17 10964($0)

jr $ra
nop
exit913:


j entrance914
nop
entrance914:
jal block914
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit914
nop
block914:

ori $9 $17 1746
lw $23 3984($0)
sw $23 10968($0)

ori $9 $16 3395
nop
lw $16 4040($0)
sw $16 10972($0)

ori $9 $22 3854
nop
nop
lw $19 452($0)
sw $19 10976($0)

jr $ra
nop
exit914:


j entrance915
nop
entrance915:
jal block915
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit915
nop
block915:

ori $5 $16 653
add $1 $5 $5
sw $1 10980($0)

ori $5 $22 731
nop
add $1 $5 $5
sw $1 10984($0)

ori $5 $21 4045
nop
nop
add $1 $5 $5
sw $1 10988($0)

jr $ra
nop
exit915:


j entrance916
nop
entrance916:
jal block916
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit916
nop
block916:

ori $7 $18 3206
addu $1 $7 $7
sw $1 10992($0)

ori $7 $23 1491
nop
addu $1 $7 $7
sw $1 10996($0)

ori $7 $20 486
nop
nop
addu $1 $7 $7
sw $1 11000($0)

jalr $25, $ra
nop
exit916:


j entrance917
nop
entrance917:
jal block917
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit917
nop
block917:

ori $8 $18 2018
sub $1 $8 $8
sw $1 11004($0)

ori $8 $21 1574
nop
sub $1 $8 $8
sw $1 11008($0)

ori $8 $19 1539
nop
nop
sub $1 $8 $8
sw $1 11012($0)

jr $ra
nop
exit917:


j entrance918
nop
entrance918:
jal block918
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit918
nop
block918:

ori $2 $20 3592
subu $1 $2 $2
sw $1 11016($0)

ori $2 $20 369
nop
subu $1 $2 $2
sw $1 11020($0)

ori $2 $16 3261
nop
nop
subu $1 $2 $2
sw $1 11024($0)

jr $ra
nop
exit918:


j entrance919
nop
entrance919:
jal block919
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit919
nop
block919:

ori $13 $17 1251
mult $13 $13
sw $13 11028($0)

ori $13 $20 3366
nop
mult $13 $13
sw $13 11032($0)

ori $13 $20 4046
nop
nop
mult $13 $13
sw $13 11036($0)

jr $ra
nop
exit919:


j entrance920
nop
entrance920:
jal block920
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit920
nop
block920:

ori $12 $18 540
multu $12 $12
sw $12 11040($0)

ori $12 $21 1197
nop
multu $12 $12
sw $12 11044($0)

ori $12 $18 2371
nop
nop
multu $12 $12
sw $12 11048($0)

jr $ra
nop
exit920:


j entrance921
nop
entrance921:
jal block921
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit921
nop
block921:

ori $3 $17 3435
div $3 $3
sw $3 11052($0)

ori $3 $21 2298
nop
div $3 $3
sw $3 11056($0)

ori $3 $21 1957
nop
nop
div $3 $3
sw $3 11060($0)

jalr $3, $ra
nop
exit921:


j entrance922
nop
entrance922:
jal block922
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit922
nop
block922:

ori $2 $16 2766
divu $2 $2
sw $2 11064($0)

ori $2 $21 3385
nop
divu $2 $2
sw $2 11068($0)

ori $2 $16 571
nop
nop
divu $2 $2
sw $2 11072($0)

jr $ra
nop
exit922:


j entrance923
nop
entrance923:
jal block923
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit923
nop
block923:

ori $11 $20 1060
sll $11 $18 31
sw $1 11076($0)

ori $11 $22 1514
nop
sll $11 $21 26
sw $1 11080($0)

ori $11 $23 562
nop
nop
sll $11 $23 5
sw $1 11084($0)

jr $ra
nop
exit923:


j entrance924
nop
entrance924:
jal block924
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit924
nop
block924:

ori $13 $23 2009
srl $13 $21 11
sw $1 11088($0)

ori $13 $18 1771
nop
srl $13 $16 16
sw $1 11092($0)

ori $13 $19 3284
nop
nop
srl $13 $23 20
sw $1 11096($0)

jr $ra
nop
exit924:


j entrance925
nop
entrance925:
jal block925
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit925
nop
block925:

ori $5 $17 3409
sra $5 $21 23
sw $1 11100($0)

ori $5 $20 1053
nop
sra $5 $18 3
sw $1 11104($0)

ori $5 $16 3672
nop
nop
sra $5 $23 27
sw $1 11108($0)

jr $ra
nop
exit925:


j entrance926
nop
entrance926:
jal block926
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit926
nop
block926:

ori $13 $23 677
sllv $1 $13 $13
sw $1 11112($0)

ori $13 $23 1601
nop
sllv $1 $13 $13
sw $1 11116($0)

ori $13 $19 2419
nop
nop
sllv $1 $13 $13
sw $1 11120($0)

jr $ra
nop
exit926:


j entrance927
nop
entrance927:
jal block927
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit927
nop
block927:

ori $3 $22 2115
srlv $1 $3 $3
sw $1 11124($0)

ori $3 $18 1275
nop
srlv $1 $3 $3
sw $1 11128($0)

ori $3 $22 3001
nop
nop
srlv $1 $3 $3
sw $1 11132($0)

jr $ra
nop
exit927:


j entrance928
nop
entrance928:
jal block928
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit928
nop
block928:

ori $4 $20 3477
srav $1 $4 $4
sw $1 11136($0)

ori $4 $16 2960
nop
srav $1 $4 $4
sw $1 11140($0)

ori $4 $22 1566
nop
nop
srav $1 $4 $4
sw $1 11144($0)

jalr $3, $ra
nop
exit928:


j entrance929
nop
entrance929:
jal block929
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit929
nop
block929:

ori $8 $18 2382
and $1 $8 $8
sw $1 11148($0)

ori $8 $19 860
nop
and $1 $8 $8
sw $1 11152($0)

ori $8 $22 1954
nop
nop
and $1 $8 $8
sw $1 11156($0)

jalr $8, $ra
nop
exit929: