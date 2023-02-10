ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance589
nop
entrance589:
jal block589
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit589
nop
block589:

sllv $3 $20 $21
slt $1 $3 $3
sw $1 7068($0)

sllv $3 $23 $19
nop
slt $1 $3 $3
sw $1 7072($0)

sllv $3 $23 $23
nop
nop
slt $1 $3 $3
sw $1 7076($0)

jr $ra
nop
exit589:


j entrance590
nop
entrance590:
jal block590
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit590
nop
block590:

sllv $6 $17 $17
slti $20 $6 1894
sw $20 7080($0)

sllv $6 $22 $16
nop
slti $23 $6 1438
sw $23 7084($0)

sllv $6 $21 $18
nop
nop
slti $22 $6 467
sw $22 7088($0)

jr $ra
nop
exit590:


j entrance591
nop
entrance591:
jal block591
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit591
nop
block591:

sllv $12 $18 $20
sltiu $21 $12 474
sw $21 7092($0)

sllv $12 $20 $19
nop
sltiu $20 $12 3446
sw $20 7096($0)

sllv $12 $20 $18
nop
nop
sltiu $18 $12 199
sw $18 7100($0)

jalr $11, $ra
nop
exit591:


j entrance592
nop
entrance592:
jal block592
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit592
nop
block592:

sllv $6 $17 $23
sltu $1 $6 $6
sw $1 7104($0)

sllv $6 $19 $21
nop
sltu $1 $6 $6
sw $1 7108($0)

sllv $6 $22 $17
nop
nop
sltu $1 $6 $6
sw $1 7112($0)

jr $ra
nop
exit592:


j entrance593
nop
entrance593:
jal block593
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit593
nop
block593:

sllv $13 $16 $17
mthi $13
sw $13 7116($0)

sllv $13 $21 $18
nop
mthi $13
sw $13 7120($0)

sllv $13 $19 $19
nop
nop
mthi $13
sw $13 7124($0)

jr $ra
nop
exit593:


j entrance594
nop
entrance594:
jal block594
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit594
nop
block594:

sllv $14 $17 $22
mtlo $14
sw $14 7128($0)

sllv $14 $20 $16
nop
mtlo $14
sw $14 7132($0)

sllv $14 $19 $19
nop
nop
mtlo $14
sw $14 7136($0)

jr $ra
nop
exit594:

ori $16 $0 1535
ori $17 $0 3299
ori $18 $0 2811
ori $19 $0 3696
ori $20 $0 1982
ori $21 $0 946
ori $22 $0 3972
ori $23 $0 2083

j entrance595
nop
entrance595:
jal block595
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit595
nop
block595:

srlv $9 $21 $19
lb $23 4232($0)
sw $23 7140($0)

srlv $9 $21 $20
nop
lb $19 7140($0)
sw $19 7144($0)

srlv $9 $23 $18
nop
nop
lb $20 7144($0)
sw $20 7148($0)

jr $ra
nop
exit595:


j entrance596
nop
entrance596:
jal block596
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit596
nop
block596:

srlv $8 $17 $17
lbu $20 5048($0)
sw $20 7152($0)

srlv $8 $17 $22
nop
lbu $16 2284($0)
sw $16 7156($0)

srlv $8 $20 $22
nop
nop
lbu $17 3004($0)
sw $17 7160($0)

jalr $26, $ra
nop
exit596:


j entrance597
nop
entrance597:
jal block597
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit597
nop
block597:

srlv $8 $17 $22
lh $21 4736($0)
sw $21 7164($0)

srlv $8 $23 $20
nop
lh $18 6176($0)
sw $18 7168($0)

srlv $8 $22 $16
nop
nop
lh $23 1760($0)
sw $23 7172($0)

jalr $17, $ra
nop
exit597:


j entrance598
nop
entrance598:
jal block598
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit598
nop
block598:

srlv $13 $17 $20
lhu $23 2236($0)
sw $23 7176($0)

srlv $13 $20 $19
nop
lhu $17 1408($0)
sw $17 7180($0)

srlv $13 $17 $22
nop
nop
lhu $20 3924($0)
sw $20 7184($0)

jalr $22, $ra
nop
exit598:


j entrance599
nop
entrance599:
jal block599
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit599
nop
block599:

srlv $14 $19 $16
lw $22 1480($0)
sw $22 7188($0)

srlv $14 $20 $16
nop
lw $19 3680($0)
sw $19 7192($0)

srlv $14 $20 $19
nop
nop
lw $22 4864($0)
sw $22 7196($0)

jalr $27, $ra
nop
exit599:


j entrance600
nop
entrance600:
jal block600
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit600
nop
block600:

srlv $8 $22 $17
add $1 $8 $8
sw $1 7200($0)

srlv $8 $19 $21
nop
add $1 $8 $8
sw $1 7204($0)

srlv $8 $22 $16
nop
nop
add $1 $8 $8
sw $1 7208($0)

jr $ra
nop
exit600:


j entrance601
nop
entrance601:
jal block601
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit601
nop
block601:

srlv $11 $17 $23
addu $1 $11 $11
sw $1 7212($0)

srlv $11 $21 $22
nop
addu $1 $11 $11
sw $1 7216($0)

srlv $11 $19 $21
nop
nop
addu $1 $11 $11
sw $1 7220($0)

jr $ra
nop
exit601:


j entrance602
nop
entrance602:
jal block602
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit602
nop
block602:

srlv $14 $17 $23
sub $1 $14 $14
sw $1 7224($0)

srlv $14 $18 $16
nop
sub $1 $14 $14
sw $1 7228($0)

srlv $14 $19 $16
nop
nop
sub $1 $14 $14
sw $1 7232($0)

jalr $7, $ra
nop
exit602:


j entrance603
nop
entrance603:
jal block603
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit603
nop
block603:

srlv $10 $19 $17
subu $1 $10 $10
sw $1 7236($0)

srlv $10 $21 $16
nop
subu $1 $10 $10
sw $1 7240($0)

srlv $10 $21 $23
nop
nop
subu $1 $10 $10
sw $1 7244($0)

jalr $24, $ra
nop
exit603:


j entrance604
nop
entrance604:
jal block604
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit604
nop
block604:

srlv $4 $20 $17
mult $4 $4
sw $4 7248($0)

srlv $4 $20 $22
nop
mult $4 $4
sw $4 7252($0)

srlv $4 $16 $23
nop
nop
mult $4 $4
sw $4 7256($0)

jr $ra
nop
exit604:


j entrance605
nop
entrance605:
jal block605
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit605
nop
block605:

srlv $2 $17 $20
multu $2 $2
sw $2 7260($0)

srlv $2 $22 $18
nop
multu $2 $2
sw $2 7264($0)

srlv $2 $19 $22
nop
nop
multu $2 $2
sw $2 7268($0)

jalr $19, $ra
nop
exit605:


j entrance606
nop
entrance606:
jal block606
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit606
nop
block606:

srlv $4 $18 $18
div $4 $4
sw $4 7272($0)

srlv $4 $17 $23
nop
div $4 $4
sw $4 7276($0)

srlv $4 $19 $16
nop
nop
div $4 $4
sw $4 7280($0)

jr $ra
nop
exit606:


j entrance607
nop
entrance607:
jal block607
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit607
nop
block607:

srlv $9 $17 $17
divu $9 $9
sw $9 7284($0)

srlv $9 $23 $22
nop
divu $9 $9
sw $9 7288($0)

srlv $9 $22 $21
nop
nop
divu $9 $9
sw $9 7292($0)

jalr $16, $ra
nop
exit607:


j entrance608
nop
entrance608:
jal block608
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit608
nop
block608:

srlv $5 $17 $19
sll $5 $23 28
sw $1 7296($0)

srlv $5 $19 $22
nop
sll $5 $21 14
sw $1 7300($0)

srlv $5 $18 $22
nop
nop
sll $5 $19 22
sw $1 7304($0)

jr $ra
nop
exit608:


j entrance609
nop
entrance609:
jal block609
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit609
nop
block609:

srlv $15 $16 $18
srl $15 $17 28
sw $1 7308($0)

srlv $15 $17 $19
nop
srl $15 $18 12
sw $1 7312($0)

srlv $15 $22 $16
nop
nop
srl $15 $21 20
sw $1 7316($0)

jr $ra
nop
exit609:


j entrance610
nop
entrance610:
jal block610
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit610
nop
block610:

srlv $11 $23 $21
sra $11 $17 5
sw $1 7320($0)

srlv $11 $16 $20
nop
sra $11 $16 26
sw $1 7324($0)

srlv $11 $23 $22
nop
nop
sra $11 $16 0
sw $1 7328($0)

jr $ra
nop
exit610:


j entrance611
nop
entrance611:
jal block611
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit611
nop
block611:

srlv $13 $18 $20
sllv $1 $13 $13
sw $1 7332($0)

srlv $13 $22 $17
nop
sllv $1 $13 $13
sw $1 7336($0)

srlv $13 $17 $20
nop
nop
sllv $1 $13 $13
sw $1 7340($0)

jr $ra
nop
exit611:


j entrance612
nop
entrance612:
jal block612
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit612
nop
block612:

srlv $14 $18 $22
srlv $1 $14 $14
sw $1 7344($0)

srlv $14 $18 $23
nop
srlv $1 $14 $14
sw $1 7348($0)

srlv $14 $18 $20
nop
nop
srlv $1 $14 $14
sw $1 7352($0)

jr $ra
nop
exit612:


j entrance613
nop
entrance613:
jal block613
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit613
nop
block613:

srlv $4 $16 $21
srav $1 $4 $4
sw $1 7356($0)

srlv $4 $16 $18
nop
srav $1 $4 $4
sw $1 7360($0)

srlv $4 $23 $22
nop
nop
srav $1 $4 $4
sw $1 7364($0)

jr $ra
nop
exit613:


j entrance614
nop
entrance614:
jal block614
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit614
nop
block614:

srlv $13 $18 $19
and $1 $13 $13
sw $1 7368($0)

srlv $13 $18 $21
nop
and $1 $13 $13
sw $1 7372($0)

srlv $13 $20 $18
nop
nop
and $1 $13 $13
sw $1 7376($0)

jalr $29, $ra
nop
exit614:


j entrance615
nop
entrance615:
jal block615
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit615
nop
block615:

srlv $4 $16 $16
or $1 $4 $4
sw $1 7380($0)

srlv $4 $20 $19
nop
or $1 $4 $4
sw $1 7384($0)

srlv $4 $22 $18
nop
nop
or $1 $4 $4
sw $1 7388($0)

jalr $21, $ra
nop
exit615:


j entrance616
nop
entrance616:
jal block616
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit616
nop
block616:

srlv $1 $22 $22
xor $1 $1 $1
sw $1 7392($0)

srlv $1 $22 $20
nop
xor $1 $1 $1
sw $1 7396($0)

srlv $1 $19 $17
nop
nop
xor $1 $1 $1
sw $1 7400($0)

jalr $25, $ra
nop
exit616:


j entrance617
nop
entrance617:
jal block617
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit617
nop
block617:

srlv $11 $16 $20
nor $1 $11 $11
sw $1 7404($0)

srlv $11 $18 $17
nop
nor $1 $11 $11
sw $1 7408($0)

srlv $11 $16 $19
nop
nop
nor $1 $11 $11
sw $1 7412($0)

jr $ra
nop
exit617:


j entrance618
nop
entrance618:
jal block618
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit618
nop
block618:

srlv $7 $18 $23
addi $22 $7 3982
sw $22 7416($0)

srlv $7 $23 $20
nop
addi $21 $7 2023
sw $21 7420($0)

srlv $7 $20 $19
nop
nop
addi $16 $7 2717
sw $16 7424($0)

jr $ra
nop
exit618:


j entrance619
nop
entrance619:
jal block619
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit619
nop
block619:

srlv $7 $21 $16
addiu $16 $7 2175
sw $16 7428($0)

srlv $7 $19 $16
nop
addiu $18 $7 1415
sw $18 7432($0)

srlv $7 $18 $18
nop
nop
addiu $17 $7 898
sw $17 7436($0)

jalr $25, $ra
nop
exit619: