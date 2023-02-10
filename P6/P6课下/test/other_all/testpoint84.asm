ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance713
nop
entrance713:
jal block713
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit713
nop
block713:

or $7 $17 $23
sll $7 $23 12
sw $1 8556($0)

or $7 $19 $19
nop
sll $7 $18 14
sw $1 8560($0)

or $7 $16 $19
nop
nop
sll $7 $19 31
sw $1 8564($0)

jr $ra
nop
exit713:


j entrance714
nop
entrance714:
jal block714
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit714
nop
block714:

or $6 $22 $18
srl $6 $17 0
sw $1 8568($0)

or $6 $16 $22
nop
srl $6 $18 26
sw $1 8572($0)

or $6 $19 $23
nop
nop
srl $6 $19 27
sw $1 8576($0)

jr $ra
nop
exit714:


j entrance715
nop
entrance715:
jal block715
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit715
nop
block715:

or $7 $23 $21
sra $7 $16 1
sw $1 8580($0)

or $7 $16 $19
nop
sra $7 $21 7
sw $1 8584($0)

or $7 $22 $20
nop
nop
sra $7 $18 19
sw $1 8588($0)

jr $ra
nop
exit715:


j entrance716
nop
entrance716:
jal block716
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit716
nop
block716:

or $15 $21 $16
sllv $1 $15 $15
sw $1 8592($0)

or $15 $18 $16
nop
sllv $1 $15 $15
sw $1 8596($0)

or $15 $20 $22
nop
nop
sllv $1 $15 $15
sw $1 8600($0)

jr $ra
nop
exit716:


j entrance717
nop
entrance717:
jal block717
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit717
nop
block717:

or $2 $19 $19
srlv $1 $2 $2
sw $1 8604($0)

or $2 $18 $18
nop
srlv $1 $2 $2
sw $1 8608($0)

or $2 $18 $18
nop
nop
srlv $1 $2 $2
sw $1 8612($0)

jr $ra
nop
exit717:


j entrance718
nop
entrance718:
jal block718
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit718
nop
block718:

or $4 $18 $18
srav $1 $4 $4
sw $1 8616($0)

or $4 $20 $23
nop
srav $1 $4 $4
sw $1 8620($0)

or $4 $20 $20
nop
nop
srav $1 $4 $4
sw $1 8624($0)

jr $ra
nop
exit718:


j entrance719
nop
entrance719:
jal block719
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit719
nop
block719:

or $15 $21 $23
and $1 $15 $15
sw $1 8628($0)

or $15 $18 $23
nop
and $1 $15 $15
sw $1 8632($0)

or $15 $17 $17
nop
nop
and $1 $15 $15
sw $1 8636($0)

jr $ra
nop
exit719:


j entrance720
nop
entrance720:
jal block720
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit720
nop
block720:

or $1 $21 $16
or $1 $1 $1
sw $1 8640($0)

or $1 $22 $21
nop
or $1 $1 $1
sw $1 8644($0)

or $1 $19 $23
nop
nop
or $1 $1 $1
sw $1 8648($0)

jr $ra
nop
exit720:


j entrance721
nop
entrance721:
jal block721
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit721
nop
block721:

or $12 $17 $19
xor $1 $12 $12
sw $1 8652($0)

or $12 $18 $22
nop
xor $1 $12 $12
sw $1 8656($0)

or $12 $19 $17
nop
nop
xor $1 $12 $12
sw $1 8660($0)

jr $ra
nop
exit721:


j entrance722
nop
entrance722:
jal block722
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit722
nop
block722:

or $15 $16 $17
nor $1 $15 $15
sw $1 8664($0)

or $15 $21 $18
nop
nor $1 $15 $15
sw $1 8668($0)

or $15 $21 $22
nop
nop
nor $1 $15 $15
sw $1 8672($0)

jr $ra
nop
exit722:


j entrance723
nop
entrance723:
jal block723
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit723
nop
block723:

or $11 $23 $16
addi $20 $11 2827
sw $20 8676($0)

or $11 $17 $20
nop
addi $19 $11 2604
sw $19 8680($0)

or $11 $23 $21
nop
nop
addi $23 $11 2749
sw $23 8684($0)

jr $ra
nop
exit723:


j entrance724
nop
entrance724:
jal block724
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit724
nop
block724:

or $5 $21 $20
addiu $16 $5 3320
sw $16 8688($0)

or $5 $16 $16
nop
addiu $18 $5 3450
sw $18 8692($0)

or $5 $22 $16
nop
nop
addiu $17 $5 2256
sw $17 8696($0)

jalr $4, $ra
nop
exit724:


j entrance725
nop
entrance725:
jal block725
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit725
nop
block725:

or $11 $18 $19
andi $19 $11 1528
sw $19 8700($0)

or $11 $23 $23
nop
andi $17 $11 1059
sw $17 8704($0)

or $11 $17 $17
nop
nop
andi $16 $11 2538
sw $16 8708($0)

jalr $18, $ra
nop
exit725:


j entrance726
nop
entrance726:
jal block726
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit726
nop
block726:

or $10 $16 $21
ori $17 $10 2685
sw $17 8712($0)

or $10 $19 $18
nop
ori $17 $10 3993
sw $17 8716($0)

or $10 $17 $23
nop
nop
ori $19 $10 572
sw $19 8720($0)

jalr $24, $ra
nop
exit726:


j entrance727
nop
entrance727:
jal block727
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit727
nop
block727:

or $2 $20 $20
xori $23 $2 1484
sw $23 8724($0)

or $2 $19 $23
nop
xori $21 $2 2548
sw $21 8728($0)

or $2 $18 $23
nop
nop
xori $19 $2 2697
sw $19 8732($0)

jalr $24, $ra
nop
exit727:


j entrance728
nop
entrance728:
jal block728
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit728
nop
block728:

or $6 $17 $16
lui $19 10
sw $19 8736($0)

or $6 $20 $21
nop
lui $20 1799
sw $20 8740($0)

or $6 $17 $16
nop
nop
lui $17 4086
sw $17 8744($0)

jalr $5, $ra
nop
exit728:


j entrance729
nop
entrance729:
jal block729
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit729
nop
block729:

or $4 $20 $19
slt $1 $4 $4
sw $1 8748($0)

or $4 $21 $19
nop
slt $1 $4 $4
sw $1 8752($0)

or $4 $19 $16
nop
nop
slt $1 $4 $4
sw $1 8756($0)

jr $ra
nop
exit729:


j entrance730
nop
entrance730:
jal block730
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit730
nop
block730:

or $6 $18 $22
slti $18 $6 2066
sw $18 8760($0)

or $6 $21 $23
nop
slti $23 $6 2297
sw $23 8764($0)

or $6 $16 $16
nop
nop
slti $22 $6 3924
sw $22 8768($0)

jr $ra
nop
exit730:


j entrance731
nop
entrance731:
jal block731
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit731
nop
block731:

or $11 $23 $18
sltiu $18 $11 1862
sw $18 8772($0)

or $11 $22 $19
nop
sltiu $17 $11 3145
sw $17 8776($0)

or $11 $18 $20
nop
nop
sltiu $17 $11 3014
sw $17 8780($0)

jalr $25, $ra
nop
exit731:


j entrance732
nop
entrance732:
jal block732
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit732
nop
block732:

or $15 $22 $22
sltu $1 $15 $15
sw $1 8784($0)

or $15 $17 $23
nop
sltu $1 $15 $15
sw $1 8788($0)

or $15 $19 $16
nop
nop
sltu $1 $15 $15
sw $1 8792($0)

jr $ra
nop
exit732:


j entrance733
nop
entrance733:
jal block733
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit733
nop
block733:

or $12 $21 $22
mthi $12
sw $12 8796($0)

or $12 $19 $18
nop
mthi $12
sw $12 8800($0)

or $12 $22 $23
nop
nop
mthi $12
sw $12 8804($0)

jalr $22, $ra
nop
exit733:


j entrance734
nop
entrance734:
jal block734
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit734
nop
block734:

or $13 $20 $20
mtlo $13
sw $13 8808($0)

or $13 $16 $17
nop
mtlo $13
sw $13 8812($0)

or $13 $19 $20
nop
nop
mtlo $13
sw $13 8816($0)

jalr $1, $ra
nop
exit734:

ori $16 $0 4155
ori $17 $0 3644
ori $18 $0 3226
ori $19 $0 4258
ori $20 $0 2318
ori $21 $0 207
ori $22 $0 2092
ori $23 $0 2992

j entrance735
nop
entrance735:
jal block735
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit735
nop
block735:

xor $14 $21 $21
lb $19 5140($0)
sw $19 8820($0)

xor $14 $22 $20
nop
lb $22 7852($0)
sw $22 8824($0)

xor $14 $17 $22
nop
nop
lb $18 1864($0)
sw $18 8828($0)

jr $ra
nop
exit735:


j entrance736
nop
entrance736:
jal block736
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit736
nop
block736:

xor $10 $23 $18
lbu $20 5432($0)
sw $20 8832($0)

xor $10 $18 $18
nop
lbu $21 4272($0)
sw $21 8836($0)

xor $10 $19 $18
nop
nop
lbu $22 2728($0)
sw $22 8840($0)

jalr $1, $ra
nop
exit736:


j entrance737
nop
entrance737:
jal block737
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit737
nop
block737:

xor $10 $23 $20
lh $22 5420($0)
sw $22 8844($0)

xor $10 $18 $17
nop
lh $22 216($0)
sw $22 8848($0)

xor $10 $20 $18
nop
nop
lh $20 4020($0)
sw $20 8852($0)

jalr $17, $ra
nop
exit737:


j entrance738
nop
entrance738:
jal block738
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit738
nop
block738:

xor $13 $19 $18
lhu $21 4672($0)
sw $21 8856($0)

xor $13 $19 $23
nop
lhu $23 6624($0)
sw $23 8860($0)

xor $13 $21 $23
nop
nop
lhu $21 5100($0)
sw $21 8864($0)

jr $ra
nop
exit738:


j entrance739
nop
entrance739:
jal block739
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit739
nop
block739:

xor $13 $23 $21
lw $20 2728($0)
sw $20 8868($0)

xor $13 $18 $23
nop
lw $22 428($0)
sw $22 8872($0)

xor $13 $19 $17
nop
nop
lw $22 5688($0)
sw $22 8876($0)

jr $ra
nop
exit739:


j entrance740
nop
entrance740:
jal block740
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit740
nop
block740:

xor $14 $20 $18
add $1 $14 $14
sw $1 8880($0)

xor $14 $21 $22
nop
add $1 $14 $14
sw $1 8884($0)

xor $14 $19 $17
nop
nop
add $1 $14 $14
sw $1 8888($0)

jr $ra
nop
exit740:


j entrance741
nop
entrance741:
jal block741
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit741
nop
block741:

xor $13 $21 $17
addu $1 $13 $13
sw $1 8892($0)

xor $13 $20 $23
nop
addu $1 $13 $13
sw $1 8896($0)

xor $13 $22 $23
nop
nop
addu $1 $13 $13
sw $1 8900($0)

jr $ra
nop
exit741:


j entrance742
nop
entrance742:
jal block742
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit742
nop
block742:

xor $4 $22 $19
sub $1 $4 $4
sw $1 8904($0)

xor $4 $23 $18
nop
sub $1 $4 $4
sw $1 8908($0)

xor $4 $17 $18
nop
nop
sub $1 $4 $4
sw $1 8912($0)

jalr $3, $ra
nop
exit742:


j entrance743
nop
entrance743:
jal block743
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit743
nop
block743:

xor $4 $18 $20
subu $1 $4 $4
sw $1 8916($0)

xor $4 $19 $23
nop
subu $1 $4 $4
sw $1 8920($0)

xor $4 $17 $21
nop
nop
subu $1 $4 $4
sw $1 8924($0)

jr $ra
nop
exit743: