ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance775
nop
entrance775:
jal block775
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit775
nop
block775:

nor $8 $19 $16
add $1 $8 $8
sw $1 9300($0)

nor $8 $23 $17
nop
add $1 $8 $8
sw $1 9304($0)

nor $8 $23 $21
nop
nop
add $1 $8 $8
sw $1 9308($0)

jr $ra
nop
exit775:


j entrance776
nop
entrance776:
jal block776
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit776
nop
block776:

nor $5 $21 $16
addu $1 $5 $5
sw $1 9312($0)

nor $5 $23 $19
nop
addu $1 $5 $5
sw $1 9316($0)

nor $5 $23 $17
nop
nop
addu $1 $5 $5
sw $1 9320($0)

jr $ra
nop
exit776:


j entrance777
nop
entrance777:
jal block777
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit777
nop
block777:

nor $5 $19 $23
sub $1 $5 $5
sw $1 9324($0)

nor $5 $22 $19
nop
sub $1 $5 $5
sw $1 9328($0)

nor $5 $21 $18
nop
nop
sub $1 $5 $5
sw $1 9332($0)

jr $ra
nop
exit777:


j entrance778
nop
entrance778:
jal block778
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit778
nop
block778:

nor $5 $18 $19
subu $1 $5 $5
sw $1 9336($0)

nor $5 $18 $22
nop
subu $1 $5 $5
sw $1 9340($0)

nor $5 $19 $18
nop
nop
subu $1 $5 $5
sw $1 9344($0)

jr $ra
nop
exit778:


j entrance779
nop
entrance779:
jal block779
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit779
nop
block779:

nor $15 $19 $20
mult $15 $15
sw $15 9348($0)

nor $15 $20 $17
nop
mult $15 $15
sw $15 9352($0)

nor $15 $23 $17
nop
nop
mult $15 $15
sw $15 9356($0)

jalr $2, $ra
nop
exit779:


j entrance780
nop
entrance780:
jal block780
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit780
nop
block780:

nor $14 $21 $20
multu $14 $14
sw $14 9360($0)

nor $14 $22 $23
nop
multu $14 $14
sw $14 9364($0)

nor $14 $19 $17
nop
nop
multu $14 $14
sw $14 9368($0)

jr $ra
nop
exit780:


j entrance781
nop
entrance781:
jal block781
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit781
nop
block781:

nor $8 $23 $22
div $8 $8
sw $8 9372($0)

nor $8 $19 $19
nop
div $8 $8
sw $8 9376($0)

nor $8 $23 $21
nop
nop
div $8 $8
sw $8 9380($0)

jalr $16, $ra
nop
exit781:


j entrance782
nop
entrance782:
jal block782
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit782
nop
block782:

nor $6 $22 $18
divu $6 $6
sw $6 9384($0)

nor $6 $19 $19
nop
divu $6 $6
sw $6 9388($0)

nor $6 $19 $22
nop
nop
divu $6 $6
sw $6 9392($0)

jalr $3, $ra
nop
exit782:


j entrance783
nop
entrance783:
jal block783
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit783
nop
block783:

nor $13 $22 $21
sll $13 $23 13
sw $1 9396($0)

nor $13 $17 $17
nop
sll $13 $22 20
sw $1 9400($0)

nor $13 $20 $17
nop
nop
sll $13 $16 13
sw $1 9404($0)

jr $ra
nop
exit783:


j entrance784
nop
entrance784:
jal block784
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit784
nop
block784:

nor $5 $20 $20
srl $5 $17 25
sw $1 9408($0)

nor $5 $18 $23
nop
srl $5 $19 6
sw $1 9412($0)

nor $5 $19 $17
nop
nop
srl $5 $19 15
sw $1 9416($0)

jr $ra
nop
exit784:


j entrance785
nop
entrance785:
jal block785
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit785
nop
block785:

nor $10 $18 $17
sra $10 $18 25
sw $1 9420($0)

nor $10 $16 $22
nop
sra $10 $23 9
sw $1 9424($0)

nor $10 $16 $18
nop
nop
sra $10 $23 22
sw $1 9428($0)

jr $ra
nop
exit785:


j entrance786
nop
entrance786:
jal block786
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit786
nop
block786:

nor $2 $23 $22
sllv $1 $2 $2
sw $1 9432($0)

nor $2 $17 $20
nop
sllv $1 $2 $2
sw $1 9436($0)

nor $2 $19 $20
nop
nop
sllv $1 $2 $2
sw $1 9440($0)

jalr $9, $ra
nop
exit786:


j entrance787
nop
entrance787:
jal block787
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit787
nop
block787:

nor $5 $23 $17
srlv $1 $5 $5
sw $1 9444($0)

nor $5 $19 $19
nop
srlv $1 $5 $5
sw $1 9448($0)

nor $5 $16 $22
nop
nop
srlv $1 $5 $5
sw $1 9452($0)

jalr $5, $ra
nop
exit787:


j entrance788
nop
entrance788:
jal block788
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit788
nop
block788:

nor $10 $19 $17
srav $1 $10 $10
sw $1 9456($0)

nor $10 $17 $17
nop
srav $1 $10 $10
sw $1 9460($0)

nor $10 $18 $18
nop
nop
srav $1 $10 $10
sw $1 9464($0)

jalr $6, $ra
nop
exit788:


j entrance789
nop
entrance789:
jal block789
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit789
nop
block789:

nor $7 $21 $19
and $1 $7 $7
sw $1 9468($0)

nor $7 $18 $23
nop
and $1 $7 $7
sw $1 9472($0)

nor $7 $23 $16
nop
nop
and $1 $7 $7
sw $1 9476($0)

jalr $19, $ra
nop
exit789:


j entrance790
nop
entrance790:
jal block790
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit790
nop
block790:

nor $7 $23 $19
or $1 $7 $7
sw $1 9480($0)

nor $7 $17 $20
nop
or $1 $7 $7
sw $1 9484($0)

nor $7 $20 $20
nop
nop
or $1 $7 $7
sw $1 9488($0)

jalr $29, $ra
nop
exit790:


j entrance791
nop
entrance791:
jal block791
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit791
nop
block791:

nor $11 $18 $23
xor $1 $11 $11
sw $1 9492($0)

nor $11 $16 $19
nop
xor $1 $11 $11
sw $1 9496($0)

nor $11 $18 $16
nop
nop
xor $1 $11 $11
sw $1 9500($0)

jr $ra
nop
exit791:


j entrance792
nop
entrance792:
jal block792
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit792
nop
block792:

nor $11 $19 $19
nor $1 $11 $11
sw $1 9504($0)

nor $11 $23 $16
nop
nor $1 $11 $11
sw $1 9508($0)

nor $11 $22 $20
nop
nop
nor $1 $11 $11
sw $1 9512($0)

jr $ra
nop
exit792:


j entrance793
nop
entrance793:
jal block793
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit793
nop
block793:

nor $13 $16 $19
addi $21 $13 2663
sw $21 9516($0)

nor $13 $22 $21
nop
addi $16 $13 2659
sw $16 9520($0)

nor $13 $20 $23
nop
nop
addi $21 $13 254
sw $21 9524($0)

jalr $8, $ra
nop
exit793:


j entrance794
nop
entrance794:
jal block794
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit794
nop
block794:

nor $5 $23 $20
addiu $21 $5 1494
sw $21 9528($0)

nor $5 $23 $18
nop
addiu $20 $5 2373
sw $20 9532($0)

nor $5 $20 $17
nop
nop
addiu $18 $5 1907
sw $18 9536($0)

jalr $11, $ra
nop
exit794:


j entrance795
nop
entrance795:
jal block795
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit795
nop
block795:

nor $7 $16 $21
andi $20 $7 1634
sw $20 9540($0)

nor $7 $21 $19
nop
andi $23 $7 1449
sw $23 9544($0)

nor $7 $23 $23
nop
nop
andi $16 $7 2508
sw $16 9548($0)

jalr $12, $ra
nop
exit795:


j entrance796
nop
entrance796:
jal block796
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit796
nop
block796:

nor $10 $21 $17
ori $20 $10 3167
sw $20 9552($0)

nor $10 $17 $21
nop
ori $16 $10 1726
sw $16 9556($0)

nor $10 $22 $16
nop
nop
ori $20 $10 1729
sw $20 9560($0)

jr $ra
nop
exit796:


j entrance797
nop
entrance797:
jal block797
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit797
nop
block797:

nor $12 $16 $17
xori $19 $12 1433
sw $19 9564($0)

nor $12 $23 $17
nop
xori $16 $12 3787
sw $16 9568($0)

nor $12 $17 $16
nop
nop
xori $19 $12 384
sw $19 9572($0)

jr $ra
nop
exit797:


j entrance798
nop
entrance798:
jal block798
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit798
nop
block798:

nor $7 $23 $17
lui $21 1674
sw $21 9576($0)

nor $7 $20 $23
nop
lui $18 1522
sw $18 9580($0)

nor $7 $21 $16
nop
nop
lui $21 1411
sw $21 9584($0)

jalr $22, $ra
nop
exit798:


j entrance799
nop
entrance799:
jal block799
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit799
nop
block799:

nor $14 $18 $17
slt $1 $14 $14
sw $1 9588($0)

nor $14 $19 $20
nop
slt $1 $14 $14
sw $1 9592($0)

nor $14 $20 $23
nop
nop
slt $1 $14 $14
sw $1 9596($0)

jr $ra
nop
exit799:


j entrance800
nop
entrance800:
jal block800
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit800
nop
block800:

nor $12 $18 $22
slti $23 $12 2320
sw $23 9600($0)

nor $12 $19 $18
nop
slti $18 $12 887
sw $18 9604($0)

nor $12 $18 $18
nop
nop
slti $19 $12 368
sw $19 9608($0)

jr $ra
nop
exit800:


j entrance801
nop
entrance801:
jal block801
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit801
nop
block801:

nor $12 $19 $20
sltiu $19 $12 2790
sw $19 9612($0)

nor $12 $23 $16
nop
sltiu $23 $12 2527
sw $23 9616($0)

nor $12 $23 $17
nop
nop
sltiu $22 $12 2841
sw $22 9620($0)

jalr $1, $ra
nop
exit801:


j entrance802
nop
entrance802:
jal block802
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit802
nop
block802:

nor $3 $23 $21
sltu $1 $3 $3
sw $1 9624($0)

nor $3 $22 $20
nop
sltu $1 $3 $3
sw $1 9628($0)

nor $3 $17 $19
nop
nop
sltu $1 $3 $3
sw $1 9632($0)

jr $ra
nop
exit802:


j entrance803
nop
entrance803:
jal block803
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit803
nop
block803:

nor $4 $22 $22
mthi $4
sw $4 9636($0)

nor $4 $18 $18
nop
mthi $4
sw $4 9640($0)

nor $4 $19 $22
nop
nop
mthi $4
sw $4 9644($0)

jalr $3, $ra
nop
exit803:


j entrance804
nop
entrance804:
jal block804
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit804
nop
block804:

nor $14 $20 $16
mtlo $14
sw $14 9648($0)

nor $14 $20 $19
nop
mtlo $14
sw $14 9652($0)

nor $14 $17 $16
nop
nop
mtlo $14
sw $14 9656($0)

jalr $19, $ra
nop
exit804:

ori $16 $0 222
ori $17 $0 3205
ori $18 $0 2496
ori $19 $0 559
ori $20 $0 1599
ori $21 $0 2674
ori $22 $0 4106
ori $23 $0 525

j entrance805
nop
entrance805:
jal block805
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit805
nop
block805:

addi $7 $17 2006
lb $16 3572($0)
sw $16 9660($0)

addi $7 $22 3271
nop
lb $16 4968($0)
sw $16 9664($0)

addi $7 $19 2168
nop
nop
lb $23 6164($0)
sw $23 9668($0)

jr $ra
nop
exit805: