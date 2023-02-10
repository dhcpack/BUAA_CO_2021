ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance744
nop
entrance744:
jal block744
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit744
nop
block744:

xor $11 $19 $19
mult $11 $11
sw $11 8928($0)

xor $11 $18 $16
nop
mult $11 $11
sw $11 8932($0)

xor $11 $18 $16
nop
nop
mult $11 $11
sw $11 8936($0)

jr $ra
nop
exit744:


j entrance745
nop
entrance745:
jal block745
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit745
nop
block745:

xor $4 $18 $22
multu $4 $4
sw $4 8940($0)

xor $4 $18 $21
nop
multu $4 $4
sw $4 8944($0)

xor $4 $22 $23
nop
nop
multu $4 $4
sw $4 8948($0)

jalr $21, $ra
nop
exit745:


j entrance746
nop
entrance746:
jal block746
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit746
nop
block746:

xor $4 $21 $23
div $4 $4
sw $4 8952($0)

xor $4 $17 $18
nop
div $4 $4
sw $4 8956($0)

xor $4 $20 $16
nop
nop
div $4 $4
sw $4 8960($0)

jr $ra
nop
exit746:


j entrance747
nop
entrance747:
jal block747
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit747
nop
block747:

xor $7 $22 $19
divu $7 $7
sw $7 8964($0)

xor $7 $23 $18
nop
divu $7 $7
sw $7 8968($0)

xor $7 $22 $16
nop
nop
divu $7 $7
sw $7 8972($0)

jr $ra
nop
exit747:


j entrance748
nop
entrance748:
jal block748
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit748
nop
block748:

xor $11 $18 $16
sll $11 $19 28
sw $1 8976($0)

xor $11 $19 $23
nop
sll $11 $18 11
sw $1 8980($0)

xor $11 $23 $23
nop
nop
sll $11 $20 15
sw $1 8984($0)

jr $ra
nop
exit748:


j entrance749
nop
entrance749:
jal block749
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit749
nop
block749:

xor $7 $18 $18
srl $7 $21 12
sw $1 8988($0)

xor $7 $23 $20
nop
srl $7 $19 21
sw $1 8992($0)

xor $7 $21 $21
nop
nop
srl $7 $23 1
sw $1 8996($0)

jalr $4, $ra
nop
exit749:


j entrance750
nop
entrance750:
jal block750
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit750
nop
block750:

xor $5 $21 $23
sra $5 $21 22
sw $1 9000($0)

xor $5 $20 $17
nop
sra $5 $23 28
sw $1 9004($0)

xor $5 $19 $18
nop
nop
sra $5 $17 22
sw $1 9008($0)

jr $ra
nop
exit750:


j entrance751
nop
entrance751:
jal block751
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit751
nop
block751:

xor $12 $18 $18
sllv $1 $12 $12
sw $1 9012($0)

xor $12 $22 $21
nop
sllv $1 $12 $12
sw $1 9016($0)

xor $12 $16 $21
nop
nop
sllv $1 $12 $12
sw $1 9020($0)

jalr $17, $ra
nop
exit751:


j entrance752
nop
entrance752:
jal block752
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit752
nop
block752:

xor $15 $19 $21
srlv $1 $15 $15
sw $1 9024($0)

xor $15 $20 $21
nop
srlv $1 $15 $15
sw $1 9028($0)

xor $15 $22 $16
nop
nop
srlv $1 $15 $15
sw $1 9032($0)

jr $ra
nop
exit752:


j entrance753
nop
entrance753:
jal block753
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit753
nop
block753:

xor $15 $18 $16
srav $1 $15 $15
sw $1 9036($0)

xor $15 $16 $21
nop
srav $1 $15 $15
sw $1 9040($0)

xor $15 $16 $23
nop
nop
srav $1 $15 $15
sw $1 9044($0)

jr $ra
nop
exit753:


j entrance754
nop
entrance754:
jal block754
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit754
nop
block754:

xor $3 $20 $19
and $1 $3 $3
sw $1 9048($0)

xor $3 $18 $16
nop
and $1 $3 $3
sw $1 9052($0)

xor $3 $16 $20
nop
nop
and $1 $3 $3
sw $1 9056($0)

jr $ra
nop
exit754:


j entrance755
nop
entrance755:
jal block755
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit755
nop
block755:

xor $13 $22 $22
or $1 $13 $13
sw $1 9060($0)

xor $13 $21 $23
nop
or $1 $13 $13
sw $1 9064($0)

xor $13 $19 $22
nop
nop
or $1 $13 $13
sw $1 9068($0)

jr $ra
nop
exit755:


j entrance756
nop
entrance756:
jal block756
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit756
nop
block756:

xor $14 $21 $21
xor $1 $14 $14
sw $1 9072($0)

xor $14 $16 $19
nop
xor $1 $14 $14
sw $1 9076($0)

xor $14 $23 $20
nop
nop
xor $1 $14 $14
sw $1 9080($0)

jr $ra
nop
exit756:


j entrance757
nop
entrance757:
jal block757
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit757
nop
block757:

xor $11 $18 $18
nor $1 $11 $11
sw $1 9084($0)

xor $11 $22 $20
nop
nor $1 $11 $11
sw $1 9088($0)

xor $11 $23 $17
nop
nop
nor $1 $11 $11
sw $1 9092($0)

jr $ra
nop
exit757:


j entrance758
nop
entrance758:
jal block758
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit758
nop
block758:

xor $15 $17 $16
addi $20 $15 3327
sw $20 9096($0)

xor $15 $23 $23
nop
addi $16 $15 2108
sw $16 9100($0)

xor $15 $20 $18
nop
nop
addi $22 $15 2175
sw $22 9104($0)

jalr $11, $ra
nop
exit758:


j entrance759
nop
entrance759:
jal block759
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit759
nop
block759:

xor $5 $20 $20
addiu $16 $5 2295
sw $16 9108($0)

xor $5 $23 $17
nop
addiu $17 $5 915
sw $17 9112($0)

xor $5 $21 $21
nop
nop
addiu $18 $5 3312
sw $18 9116($0)

jalr $15, $ra
nop
exit759:


j entrance760
nop
entrance760:
jal block760
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit760
nop
block760:

xor $3 $16 $20
andi $19 $3 654
sw $19 9120($0)

xor $3 $21 $17
nop
andi $22 $3 2064
sw $22 9124($0)

xor $3 $23 $20
nop
nop
andi $23 $3 2105
sw $23 9128($0)

jr $ra
nop
exit760:


j entrance761
nop
entrance761:
jal block761
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit761
nop
block761:

xor $11 $18 $23
ori $21 $11 3351
sw $21 9132($0)

xor $11 $17 $20
nop
ori $18 $11 2653
sw $18 9136($0)

xor $11 $23 $23
nop
nop
ori $19 $11 3604
sw $19 9140($0)

jr $ra
nop
exit761:


j entrance762
nop
entrance762:
jal block762
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit762
nop
block762:

xor $14 $18 $22
xori $17 $14 1514
sw $17 9144($0)

xor $14 $16 $19
nop
xori $21 $14 1223
sw $21 9148($0)

xor $14 $16 $23
nop
nop
xori $23 $14 750
sw $23 9152($0)

jr $ra
nop
exit762:


j entrance763
nop
entrance763:
jal block763
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit763
nop
block763:

xor $14 $17 $21
lui $23 3244
sw $23 9156($0)

xor $14 $18 $17
nop
lui $21 846
sw $21 9160($0)

xor $14 $17 $21
nop
nop
lui $21 3816
sw $21 9164($0)

jalr $3, $ra
nop
exit763:


j entrance764
nop
entrance764:
jal block764
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit764
nop
block764:

xor $4 $22 $17
slt $1 $4 $4
sw $1 9168($0)

xor $4 $16 $19
nop
slt $1 $4 $4
sw $1 9172($0)

xor $4 $16 $20
nop
nop
slt $1 $4 $4
sw $1 9176($0)

jr $ra
nop
exit764:


j entrance765
nop
entrance765:
jal block765
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit765
nop
block765:

xor $8 $17 $20
slti $20 $8 229
sw $20 9180($0)

xor $8 $18 $17
nop
slti $17 $8 2453
sw $17 9184($0)

xor $8 $21 $21
nop
nop
slti $23 $8 1222
sw $23 9188($0)

jr $ra
nop
exit765:


j entrance766
nop
entrance766:
jal block766
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit766
nop
block766:

xor $10 $20 $21
sltiu $20 $10 1811
sw $20 9192($0)

xor $10 $23 $21
nop
sltiu $20 $10 3787
sw $20 9196($0)

xor $10 $16 $23
nop
nop
sltiu $19 $10 1292
sw $19 9200($0)

jr $ra
nop
exit766:


j entrance767
nop
entrance767:
jal block767
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit767
nop
block767:

xor $12 $20 $21
sltu $1 $12 $12
sw $1 9204($0)

xor $12 $19 $22
nop
sltu $1 $12 $12
sw $1 9208($0)

xor $12 $19 $22
nop
nop
sltu $1 $12 $12
sw $1 9212($0)

jr $ra
nop
exit767:


j entrance768
nop
entrance768:
jal block768
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit768
nop
block768:

xor $12 $19 $18
mthi $12
sw $12 9216($0)

xor $12 $19 $18
nop
mthi $12
sw $12 9220($0)

xor $12 $19 $16
nop
nop
mthi $12
sw $12 9224($0)

jalr $24, $ra
nop
exit768:


j entrance769
nop
entrance769:
jal block769
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit769
nop
block769:

xor $6 $21 $20
mtlo $6
sw $6 9228($0)

xor $6 $16 $22
nop
mtlo $6
sw $6 9232($0)

xor $6 $18 $18
nop
nop
mtlo $6
sw $6 9236($0)

jalr $4, $ra
nop
exit769:

ori $16 $0 1253
ori $17 $0 3190
ori $18 $0 4025
ori $19 $0 758
ori $20 $0 1412
ori $21 $0 508
ori $22 $0 2377
ori $23 $0 1012

j entrance770
nop
entrance770:
jal block770
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit770
nop
block770:

nor $10 $17 $20
lb $17 3980($0)
sw $17 9240($0)

nor $10 $22 $23
nop
lb $23 2368($0)
sw $23 9244($0)

nor $10 $19 $21
nop
nop
lb $21 2136($0)
sw $21 9248($0)

jr $ra
nop
exit770:


j entrance771
nop
entrance771:
jal block771
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit771
nop
block771:

nor $10 $16 $18
lbu $22 6036($0)
sw $22 9252($0)

nor $10 $21 $19
nop
lbu $20 1916($0)
sw $20 9256($0)

nor $10 $23 $20
nop
nop
lbu $18 6812($0)
sw $18 9260($0)

jr $ra
nop
exit771:


j entrance772
nop
entrance772:
jal block772
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit772
nop
block772:

nor $11 $18 $22
lh $17 1580($0)
sw $17 9264($0)

nor $11 $16 $18
nop
lh $19 4608($0)
sw $19 9268($0)

nor $11 $21 $23
nop
nop
lh $19 2192($0)
sw $19 9272($0)

jr $ra
nop
exit772:


j entrance773
nop
entrance773:
jal block773
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit773
nop
block773:

nor $1 $16 $16
lhu $22 6160($0)
sw $22 9276($0)

nor $1 $21 $23
nop
lhu $18 768($0)
sw $18 9280($0)

nor $1 $23 $23
nop
nop
lhu $20 6180($0)
sw $20 9284($0)

jr $ra
nop
exit773:


j entrance774
nop
entrance774:
jal block774
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit774
nop
block774:

nor $15 $16 $19
lw $18 464($0)
sw $18 9288($0)

nor $15 $18 $18
nop
lw $20 7136($0)
sw $20 9292($0)

nor $15 $20 $17
nop
nop
lw $20 4728($0)
sw $20 9296($0)

jr $ra
nop
exit774: