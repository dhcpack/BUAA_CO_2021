ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance651
nop
entrance651:
jal block651
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit651
nop
block651:

srav $8 $17 $20
xor $1 $8 $8
sw $1 7812($0)

srav $8 $21 $21
nop
xor $1 $8 $8
sw $1 7816($0)

srav $8 $23 $19
nop
nop
xor $1 $8 $8
sw $1 7820($0)

jalr $7, $ra
nop
exit651:


j entrance652
nop
entrance652:
jal block652
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit652
nop
block652:

srav $9 $19 $16
nor $1 $9 $9
sw $1 7824($0)

srav $9 $18 $20
nop
nor $1 $9 $9
sw $1 7828($0)

srav $9 $18 $20
nop
nop
nor $1 $9 $9
sw $1 7832($0)

jr $ra
nop
exit652:


j entrance653
nop
entrance653:
jal block653
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit653
nop
block653:

srav $11 $17 $18
addi $19 $11 17
sw $19 7836($0)

srav $11 $16 $23
nop
addi $16 $11 2674
sw $16 7840($0)

srav $11 $16 $17
nop
nop
addi $19 $11 1939
sw $19 7844($0)

jr $ra
nop
exit653:


j entrance654
nop
entrance654:
jal block654
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit654
nop
block654:

srav $9 $16 $23
addiu $21 $9 1643
sw $21 7848($0)

srav $9 $17 $19
nop
addiu $20 $9 141
sw $20 7852($0)

srav $9 $19 $17
nop
nop
addiu $23 $9 1905
sw $23 7856($0)

jr $ra
nop
exit654:


j entrance655
nop
entrance655:
jal block655
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit655
nop
block655:

srav $9 $18 $16
andi $20 $9 2029
sw $20 7860($0)

srav $9 $18 $21
nop
andi $22 $9 3060
sw $22 7864($0)

srav $9 $22 $16
nop
nop
andi $23 $9 493
sw $23 7868($0)

jalr $17, $ra
nop
exit655:


j entrance656
nop
entrance656:
jal block656
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit656
nop
block656:

srav $7 $17 $18
ori $16 $7 2231
sw $16 7872($0)

srav $7 $23 $16
nop
ori $23 $7 32
sw $23 7876($0)

srav $7 $17 $20
nop
nop
ori $17 $7 1872
sw $17 7880($0)

jalr $7, $ra
nop
exit656:


j entrance657
nop
entrance657:
jal block657
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit657
nop
block657:

srav $13 $22 $17
xori $19 $13 454
sw $19 7884($0)

srav $13 $20 $20
nop
xori $21 $13 2555
sw $21 7888($0)

srav $13 $17 $22
nop
nop
xori $16 $13 3261
sw $16 7892($0)

jr $ra
nop
exit657:


j entrance658
nop
entrance658:
jal block658
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit658
nop
block658:

srav $7 $19 $23
lui $20 1786
sw $20 7896($0)

srav $7 $16 $23
nop
lui $16 1677
sw $16 7900($0)

srav $7 $20 $18
nop
nop
lui $21 3189
sw $21 7904($0)

jr $ra
nop
exit658:


j entrance659
nop
entrance659:
jal block659
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit659
nop
block659:

srav $12 $21 $23
slt $1 $12 $12
sw $1 7908($0)

srav $12 $17 $20
nop
slt $1 $12 $12
sw $1 7912($0)

srav $12 $19 $17
nop
nop
slt $1 $12 $12
sw $1 7916($0)

jalr $22, $ra
nop
exit659:


j entrance660
nop
entrance660:
jal block660
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit660
nop
block660:

srav $5 $16 $16
slti $18 $5 1909
sw $18 7920($0)

srav $5 $23 $16
nop
slti $23 $5 173
sw $23 7924($0)

srav $5 $16 $18
nop
nop
slti $17 $5 2985
sw $17 7928($0)

jr $ra
nop
exit660:


j entrance661
nop
entrance661:
jal block661
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit661
nop
block661:

srav $15 $21 $17
sltiu $18 $15 1291
sw $18 7932($0)

srav $15 $20 $21
nop
sltiu $20 $15 2986
sw $20 7936($0)

srav $15 $21 $19
nop
nop
sltiu $20 $15 1757
sw $20 7940($0)

jr $ra
nop
exit661:


j entrance662
nop
entrance662:
jal block662
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit662
nop
block662:

srav $11 $19 $23
sltu $1 $11 $11
sw $1 7944($0)

srav $11 $23 $17
nop
sltu $1 $11 $11
sw $1 7948($0)

srav $11 $19 $18
nop
nop
sltu $1 $11 $11
sw $1 7952($0)

jalr $7, $ra
nop
exit662:


j entrance663
nop
entrance663:
jal block663
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit663
nop
block663:

srav $7 $18 $16
mthi $7
sw $7 7956($0)

srav $7 $16 $22
nop
mthi $7
sw $7 7960($0)

srav $7 $21 $17
nop
nop
mthi $7
sw $7 7964($0)

jalr $21, $ra
nop
exit663:


j entrance664
nop
entrance664:
jal block664
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit664
nop
block664:

srav $9 $20 $21
mtlo $9
sw $9 7968($0)

srav $9 $18 $23
nop
mtlo $9
sw $9 7972($0)

srav $9 $19 $21
nop
nop
mtlo $9
sw $9 7976($0)

jalr $18, $ra
nop
exit664:

ori $16 $0 2748
ori $17 $0 3849
ori $18 $0 887
ori $19 $0 3511
ori $20 $0 849
ori $21 $0 1678
ori $22 $0 2678
ori $23 $0 1716

j entrance665
nop
entrance665:
jal block665
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit665
nop
block665:

and $5 $16 $21
lb $17 1932($0)
sw $17 7980($0)

and $5 $21 $23
nop
lb $23 4492($0)
sw $23 7984($0)

and $5 $19 $18
nop
nop
lb $20 2468($0)
sw $20 7988($0)

jr $ra
nop
exit665:


j entrance666
nop
entrance666:
jal block666
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit666
nop
block666:

and $2 $20 $22
lbu $17 5896($0)
sw $17 7992($0)

and $2 $19 $21
nop
lbu $20 2492($0)
sw $20 7996($0)

and $2 $20 $18
nop
nop
lbu $21 7576($0)
sw $21 8000($0)

jalr $17, $ra
nop
exit666:


j entrance667
nop
entrance667:
jal block667
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit667
nop
block667:

and $15 $17 $18
lh $17 3380($0)
sw $17 8004($0)

and $15 $18 $16
nop
lh $17 516($0)
sw $17 8008($0)

and $15 $20 $19
nop
nop
lh $19 7900($0)
sw $19 8012($0)

jr $ra
nop
exit667:


j entrance668
nop
entrance668:
jal block668
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit668
nop
block668:

and $1 $20 $21
lhu $19 5300($0)
sw $19 8016($0)

and $1 $22 $18
nop
lhu $23 4212($0)
sw $23 8020($0)

and $1 $20 $21
nop
nop
lhu $22 1988($0)
sw $22 8024($0)

jr $ra
nop
exit668:


j entrance669
nop
entrance669:
jal block669
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit669
nop
block669:

and $1 $23 $22
lw $22 4612($0)
sw $22 8028($0)

and $1 $16 $16
nop
lw $19 7316($0)
sw $19 8032($0)

and $1 $21 $19
nop
nop
lw $19 3208($0)
sw $19 8036($0)

jalr $20, $ra
nop
exit669:


j entrance670
nop
entrance670:
jal block670
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit670
nop
block670:

and $4 $21 $18
add $1 $4 $4
sw $1 8040($0)

and $4 $23 $19
nop
add $1 $4 $4
sw $1 8044($0)

and $4 $17 $17
nop
nop
add $1 $4 $4
sw $1 8048($0)

jalr $12, $ra
nop
exit670:


j entrance671
nop
entrance671:
jal block671
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit671
nop
block671:

and $9 $18 $22
addu $1 $9 $9
sw $1 8052($0)

and $9 $19 $19
nop
addu $1 $9 $9
sw $1 8056($0)

and $9 $16 $20
nop
nop
addu $1 $9 $9
sw $1 8060($0)

jalr $19, $ra
nop
exit671:


j entrance672
nop
entrance672:
jal block672
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit672
nop
block672:

and $15 $22 $16
sub $1 $15 $15
sw $1 8064($0)

and $15 $18 $20
nop
sub $1 $15 $15
sw $1 8068($0)

and $15 $21 $16
nop
nop
sub $1 $15 $15
sw $1 8072($0)

jr $ra
nop
exit672:


j entrance673
nop
entrance673:
jal block673
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit673
nop
block673:

and $8 $17 $18
subu $1 $8 $8
sw $1 8076($0)

and $8 $23 $21
nop
subu $1 $8 $8
sw $1 8080($0)

and $8 $16 $17
nop
nop
subu $1 $8 $8
sw $1 8084($0)

jr $ra
nop
exit673:


j entrance674
nop
entrance674:
jal block674
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit674
nop
block674:

and $12 $23 $19
mult $12 $12
sw $12 8088($0)

and $12 $23 $22
nop
mult $12 $12
sw $12 8092($0)

and $12 $18 $22
nop
nop
mult $12 $12
sw $12 8096($0)

jr $ra
nop
exit674:


j entrance675
nop
entrance675:
jal block675
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit675
nop
block675:

and $15 $20 $17
multu $15 $15
sw $15 8100($0)

and $15 $16 $23
nop
multu $15 $15
sw $15 8104($0)

and $15 $19 $19
nop
nop
multu $15 $15
sw $15 8108($0)

jalr $6, $ra
nop
exit675:


j entrance676
nop
entrance676:
jal block676
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit676
nop
block676:

and $8 $20 $20
div $8 $8
sw $8 8112($0)

and $8 $17 $17
nop
div $8 $8
sw $8 8116($0)

and $8 $16 $16
nop
nop
div $8 $8
sw $8 8120($0)

jalr $17, $ra
nop
exit676:


j entrance677
nop
entrance677:
jal block677
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit677
nop
block677:

and $4 $20 $18
divu $4 $4
sw $4 8124($0)

and $4 $18 $21
nop
divu $4 $4
sw $4 8128($0)

and $4 $18 $19
nop
nop
divu $4 $4
sw $4 8132($0)

jr $ra
nop
exit677:


j entrance678
nop
entrance678:
jal block678
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit678
nop
block678:

and $1 $18 $17
sll $1 $16 26
sw $1 8136($0)

and $1 $23 $20
nop
sll $1 $23 14
sw $1 8140($0)

and $1 $18 $22
nop
nop
sll $1 $20 16
sw $1 8144($0)

jr $ra
nop
exit678:


j entrance679
nop
entrance679:
jal block679
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit679
nop
block679:

and $6 $19 $19
srl $6 $16 5
sw $1 8148($0)

and $6 $21 $16
nop
srl $6 $17 19
sw $1 8152($0)

and $6 $17 $21
nop
nop
srl $6 $22 8
sw $1 8156($0)

jr $ra
nop
exit679:


j entrance680
nop
entrance680:
jal block680
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit680
nop
block680:

and $14 $18 $18
sra $14 $16 20
sw $1 8160($0)

and $14 $16 $20
nop
sra $14 $17 10
sw $1 8164($0)

and $14 $18 $20
nop
nop
sra $14 $20 9
sw $1 8168($0)

jalr $4, $ra
nop
exit680:


j entrance681
nop
entrance681:
jal block681
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit681
nop
block681:

and $6 $19 $20
sllv $1 $6 $6
sw $1 8172($0)

and $6 $23 $23
nop
sllv $1 $6 $6
sw $1 8176($0)

and $6 $17 $20
nop
nop
sllv $1 $6 $6
sw $1 8180($0)

jr $ra
nop
exit681: