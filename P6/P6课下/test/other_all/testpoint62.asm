ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance31
nop
entrance31:
jal block31
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit31
nop
block31:

lb $8 368($0)
sltiu $16 $8 1434
sw $16 372($0)

lb $8 372($0)
nop
sltiu $17 $8 1931
sw $17 376($0)

lb $8 376($0)
nop
nop
sltiu $19 $8 889
sw $19 380($0)

jr $ra
nop
exit31:


j entrance32
nop
entrance32:
jal block32
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit32
nop
block32:

lb $1 380($0)
sltu $1 $1 $1
sw $1 384($0)

lb $1 384($0)
nop
sltu $1 $1 $1
sw $1 388($0)

lb $1 388($0)
nop
nop
sltu $1 $1 $1
sw $1 392($0)

jalr $10, $ra
nop
exit32:


j entrance33
nop
entrance33:
jal block33
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit33
nop
block33:

lb $1 392($0)
mthi $1
sw $1 396($0)

lb $1 396($0)
nop
mthi $1
sw $1 400($0)

lb $1 400($0)
nop
nop
mthi $1
sw $1 404($0)

jr $ra
nop
exit33:


j entrance34
nop
entrance34:
jal block34
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit34
nop
block34:

lb $12 404($0)
mtlo $12
sw $12 408($0)

lb $12 408($0)
nop
mtlo $12
sw $12 412($0)

lb $12 412($0)
nop
nop
mtlo $12
sw $12 416($0)

jr $ra
nop
exit34:

ori $16 $0 1032
ori $17 $0 1985
ori $18 $0 1764
ori $19 $0 3089
ori $20 $0 592
ori $21 $0 1445
ori $22 $0 1224
ori $23 $0 3302

j entrance35
nop
entrance35:
jal block35
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit35
nop
block35:

lbu $12 416($0)
lb $23 416($0)
sw $23 420($0)

lbu $12 420($0)
nop
lb $19 420($0)
sw $19 424($0)

lbu $12 424($0)
nop
nop
lb $19 424($0)
sw $19 428($0)

jr $ra
nop
exit35:


j entrance36
nop
entrance36:
jal block36
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit36
nop
block36:

lbu $9 428($0)
lbu $16 428($0)
sw $16 432($0)

lbu $9 432($0)
nop
lbu $23 432($0)
sw $23 436($0)

lbu $9 436($0)
nop
nop
lbu $16 436($0)
sw $16 440($0)

jalr $1, $ra
nop
exit36:


j entrance37
nop
entrance37:
jal block37
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit37
nop
block37:

lbu $4 440($0)
lh $19 440($0)
sw $19 444($0)

lbu $4 444($0)
nop
lh $16 444($0)
sw $16 448($0)

lbu $4 448($0)
nop
nop
lh $23 448($0)
sw $23 452($0)

jr $ra
nop
exit37:


j entrance38
nop
entrance38:
jal block38
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit38
nop
block38:

lbu $4 452($0)
lhu $21 452($0)
sw $21 456($0)

lbu $4 456($0)
nop
lhu $16 456($0)
sw $16 460($0)

lbu $4 460($0)
nop
nop
lhu $22 460($0)
sw $22 464($0)

jalr $13, $ra
nop
exit38:


j entrance39
nop
entrance39:
jal block39
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit39
nop
block39:

lbu $8 464($0)
lw $22 464($0)
sw $22 468($0)

lbu $8 12($0)
nop
lw $16 468($0)
sw $16 472($0)

lbu $8 472($0)
nop
nop
lw $19 472($0)
sw $19 476($0)

jr $ra
nop
exit39:


j entrance40
nop
entrance40:
jal block40
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit40
nop
block40:

lbu $1 476($0)
add $1 $1 $1
sw $1 480($0)

lbu $1 164($0)
nop
add $1 $1 $1
sw $1 484($0)

lbu $1 484($0)
nop
nop
add $1 $1 $1
sw $1 488($0)

jalr $30, $ra
nop
exit40:


j entrance41
nop
entrance41:
jal block41
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit41
nop
block41:

lbu $9 488($0)
addu $1 $9 $9
sw $1 492($0)

lbu $9 492($0)
nop
addu $1 $9 $9
sw $1 496($0)

lbu $9 496($0)
nop
nop
addu $1 $9 $9
sw $1 500($0)

jr $ra
nop
exit41:


j entrance42
nop
entrance42:
jal block42
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit42
nop
block42:

lbu $2 500($0)
sub $1 $2 $2
sw $1 504($0)

lbu $2 504($0)
nop
sub $1 $2 $2
sw $1 508($0)

lbu $2 508($0)
nop
nop
sub $1 $2 $2
sw $1 512($0)

jalr $24, $ra
nop
exit42:


j entrance43
nop
entrance43:
jal block43
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit43
nop
block43:

lbu $11 512($0)
subu $1 $11 $11
sw $1 516($0)

lbu $11 516($0)
nop
subu $1 $11 $11
sw $1 520($0)

lbu $11 520($0)
nop
nop
subu $1 $11 $11
sw $1 524($0)

jalr $20, $ra
nop
exit43:


j entrance44
nop
entrance44:
jal block44
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit44
nop
block44:

lbu $4 524($0)
mult $4 $4
sw $4 528($0)

lbu $4 528($0)
nop
mult $4 $4
sw $4 532($0)

lbu $4 532($0)
nop
nop
mult $4 $4
sw $4 536($0)

jr $ra
nop
exit44:


j entrance45
nop
entrance45:
jal block45
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit45
nop
block45:

lbu $9 536($0)
multu $9 $9
sw $9 540($0)

lbu $9 540($0)
nop
multu $9 $9
sw $9 544($0)

lbu $9 544($0)
nop
nop
multu $9 $9
sw $9 548($0)

jr $ra
nop
exit45:


j entrance46
nop
entrance46:
jal block46
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit46
nop
block46:

lbu $1 548($0)
div $1 $1
sw $1 552($0)

lbu $1 552($0)
nop
div $1 $1
sw $1 556($0)

lbu $1 556($0)
nop
nop
div $1 $1
sw $1 560($0)

jalr $13, $ra
nop
exit46:


j entrance47
nop
entrance47:
jal block47
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit47
nop
block47:

lbu $7 560($0)
divu $7 $7
sw $7 564($0)

lbu $7 468($0)
nop
divu $7 $7
sw $7 568($0)

lbu $7 316($0)
nop
nop
divu $7 $7
sw $7 572($0)

jr $ra
nop
exit47:


j entrance48
nop
entrance48:
jal block48
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit48
nop
block48:

lbu $6 572($0)
sll $6 $16 22
sw $1 576($0)

lbu $6 576($0)
nop
sll $6 $19 5
sw $1 580($0)

lbu $6 580($0)
nop
nop
sll $6 $17 22
sw $1 584($0)

jr $ra
nop
exit48:


j entrance49
nop
entrance49:
jal block49
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit49
nop
block49:

lbu $9 584($0)
srl $9 $16 17
sw $1 588($0)

lbu $9 588($0)
nop
srl $9 $21 16
sw $1 592($0)

lbu $9 592($0)
nop
nop
srl $9 $22 3
sw $1 596($0)

jalr $10, $ra
nop
exit49:


j entrance50
nop
entrance50:
jal block50
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit50
nop
block50:

lbu $15 596($0)
sra $15 $18 31
sw $1 600($0)

lbu $15 600($0)
nop
sra $15 $18 3
sw $1 604($0)

lbu $15 604($0)
nop
nop
sra $15 $23 23
sw $1 608($0)

jr $ra
nop
exit50:


j entrance51
nop
entrance51:
jal block51
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit51
nop
block51:

lbu $4 608($0)
sllv $1 $4 $4
sw $1 612($0)

lbu $4 612($0)
nop
sllv $1 $4 $4
sw $1 616($0)

lbu $4 616($0)
nop
nop
sllv $1 $4 $4
sw $1 620($0)

jalr $11, $ra
nop
exit51:


j entrance52
nop
entrance52:
jal block52
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit52
nop
block52:

lbu $12 620($0)
srlv $1 $12 $12
sw $1 624($0)

lbu $12 624($0)
nop
srlv $1 $12 $12
sw $1 628($0)

lbu $12 628($0)
nop
nop
srlv $1 $12 $12
sw $1 632($0)

jr $ra
nop
exit52:


j entrance53
nop
entrance53:
jal block53
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit53
nop
block53:

lbu $14 632($0)
srav $1 $14 $14
sw $1 636($0)

lbu $14 636($0)
nop
srav $1 $14 $14
sw $1 640($0)

lbu $14 32($0)
nop
nop
srav $1 $14 $14
sw $1 644($0)

jr $ra
nop
exit53:


j entrance54
nop
entrance54:
jal block54
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit54
nop
block54:

lbu $3 460($0)
and $1 $3 $3
sw $1 648($0)

lbu $3 648($0)
nop
and $1 $3 $3
sw $1 652($0)

lbu $3 652($0)
nop
nop
and $1 $3 $3
sw $1 656($0)

jr $ra
nop
exit54:


j entrance55
nop
entrance55:
jal block55
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit55
nop
block55:

lbu $7 656($0)
or $1 $7 $7
sw $1 660($0)

lbu $7 660($0)
nop
or $1 $7 $7
sw $1 664($0)

lbu $7 664($0)
nop
nop
or $1 $7 $7
sw $1 668($0)

jalr $24, $ra
nop
exit55:


j entrance56
nop
entrance56:
jal block56
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit56
nop
block56:

lbu $1 100($0)
xor $1 $1 $1
sw $1 672($0)

lbu $1 672($0)
nop
xor $1 $1 $1
sw $1 676($0)

lbu $1 676($0)
nop
nop
xor $1 $1 $1
sw $1 680($0)

jr $ra
nop
exit56:


j entrance57
nop
entrance57:
jal block57
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit57
nop
block57:

lbu $8 680($0)
nor $1 $8 $8
sw $1 684($0)

lbu $8 684($0)
nop
nor $1 $8 $8
sw $1 688($0)

lbu $8 688($0)
nop
nop
nor $1 $8 $8
sw $1 692($0)

jr $ra
nop
exit57:


j entrance58
nop
entrance58:
jal block58
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit58
nop
block58:

lbu $4 692($0)
addi $21 $4 2533
sw $21 696($0)

lbu $4 696($0)
nop
addi $20 $4 1503
sw $20 700($0)

lbu $4 700($0)
nop
nop
addi $19 $4 2055
sw $19 704($0)

jr $ra
nop
exit58:


j entrance59
nop
entrance59:
jal block59
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit59
nop
block59:

lbu $4 704($0)
addiu $20 $4 2928
sw $20 708($0)

lbu $4 708($0)
nop
addiu $20 $4 1518
sw $20 712($0)

lbu $4 712($0)
nop
nop
addiu $21 $4 1097
sw $21 716($0)

jalr $5, $ra
nop
exit59:


j entrance60
nop
entrance60:
jal block60
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit60
nop
block60:

lbu $4 716($0)
andi $16 $4 3708
sw $16 720($0)

lbu $4 720($0)
nop
andi $18 $4 2874
sw $18 724($0)

lbu $4 724($0)
nop
nop
andi $23 $4 3349
sw $23 728($0)

jalr $29, $ra
nop
exit60:


j entrance61
nop
entrance61:
jal block61
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit61
nop
block61:

lbu $11 728($0)
ori $22 $11 2873
sw $22 732($0)

lbu $11 732($0)
nop
ori $16 $11 2903
sw $16 736($0)

lbu $11 136($0)
nop
nop
ori $20 $11 2599
sw $20 740($0)

jalr $14, $ra
nop
exit61: