ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance62
nop
entrance62:
jal block62
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit62
nop
block62:

lbu $14 740($0)
xori $22 $14 102
sw $22 744($0)

lbu $14 744($0)
nop
xori $23 $14 121
sw $23 748($0)

lbu $14 748($0)
nop
nop
xori $18 $14 1601
sw $18 752($0)

jr $ra
nop
exit62:


j entrance63
nop
entrance63:
jal block63
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit63
nop
block63:

lbu $14 752($0)
lui $23 3787
sw $23 756($0)

lbu $14 756($0)
nop
lui $16 307
sw $16 760($0)

lbu $14 760($0)
nop
nop
lui $18 3760
sw $18 764($0)

jr $ra
nop
exit63:


j entrance64
nop
entrance64:
jal block64
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit64
nop
block64:

lbu $3 764($0)
slt $1 $3 $3
sw $1 768($0)

lbu $3 768($0)
nop
slt $1 $3 $3
sw $1 772($0)

lbu $3 772($0)
nop
nop
slt $1 $3 $3
sw $1 776($0)

jr $ra
nop
exit64:


j entrance65
nop
entrance65:
jal block65
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit65
nop
block65:

lbu $1 776($0)
slti $18 $1 4052
sw $18 780($0)

lbu $1 780($0)
nop
slti $18 $1 981
sw $18 784($0)

lbu $1 784($0)
nop
nop
slti $20 $1 1656
sw $20 788($0)

jr $ra
nop
exit65:


j entrance66
nop
entrance66:
jal block66
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit66
nop
block66:

lbu $10 788($0)
sltiu $19 $10 1691
sw $19 792($0)

lbu $10 276($0)
nop
sltiu $17 $10 3751
sw $17 796($0)

lbu $10 796($0)
nop
nop
sltiu $17 $10 3886
sw $17 800($0)

jr $ra
nop
exit66:


j entrance67
nop
entrance67:
jal block67
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit67
nop
block67:

lbu $5 800($0)
sltu $1 $5 $5
sw $1 804($0)

lbu $5 804($0)
nop
sltu $1 $5 $5
sw $1 808($0)

lbu $5 808($0)
nop
nop
sltu $1 $5 $5
sw $1 812($0)

jalr $18, $ra
nop
exit67:


j entrance68
nop
entrance68:
jal block68
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit68
nop
block68:

lbu $5 812($0)
mthi $5
sw $5 816($0)

lbu $5 816($0)
nop
mthi $5
sw $5 820($0)

lbu $5 820($0)
nop
nop
mthi $5
sw $5 824($0)

jalr $24, $ra
nop
exit68:


j entrance69
nop
entrance69:
jal block69
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit69
nop
block69:

lbu $14 824($0)
mtlo $14
sw $14 828($0)

lbu $14 828($0)
nop
mtlo $14
sw $14 832($0)

lbu $14 832($0)
nop
nop
mtlo $14
sw $14 836($0)

jr $ra
nop
exit69:

ori $16 $0 3988
ori $17 $0 498
ori $18 $0 1361
ori $19 $0 3972
ori $20 $0 248
ori $21 $0 516
ori $22 $0 2620
ori $23 $0 3801

j entrance70
nop
entrance70:
jal block70
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit70
nop
block70:

lh $12 836($0)
lb $20 836($0)
sw $20 840($0)

lh $12 840($0)
nop
lb $22 840($0)
sw $22 844($0)

lh $12 844($0)
nop
nop
lb $23 844($0)
sw $23 848($0)

jr $ra
nop
exit70:


j entrance71
nop
entrance71:
jal block71
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit71
nop
block71:

lh $15 848($0)
lbu $18 116($0)
sw $18 852($0)

lh $15 852($0)
nop
lbu $21 852($0)
sw $21 856($0)

lh $15 856($0)
nop
nop
lbu $17 856($0)
sw $17 860($0)

jalr $16, $ra
nop
exit71:


j entrance72
nop
entrance72:
jal block72
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit72
nop
block72:

lh $8 860($0)
lh $21 656($0)
sw $21 864($0)

lh $8 864($0)
nop
lh $21 864($0)
sw $21 868($0)

lh $8 868($0)
nop
nop
lh $17 868($0)
sw $17 872($0)

jalr $18, $ra
nop
exit72:


j entrance73
nop
entrance73:
jal block73
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit73
nop
block73:

lh $7 872($0)
lhu $23 52($0)
sw $23 876($0)

lh $7 876($0)
nop
lhu $17 876($0)
sw $17 880($0)

lh $7 880($0)
nop
nop
lhu $16 880($0)
sw $16 884($0)

jr $ra
nop
exit73:


j entrance74
nop
entrance74:
jal block74
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit74
nop
block74:

lh $14 884($0)
lw $22 884($0)
sw $22 888($0)

lh $14 888($0)
nop
lw $17 888($0)
sw $17 892($0)

lh $14 892($0)
nop
nop
lw $23 892($0)
sw $23 896($0)

jr $ra
nop
exit74:


j entrance75
nop
entrance75:
jal block75
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit75
nop
block75:

lh $7 896($0)
add $1 $7 $7
sw $1 900($0)

lh $7 812($0)
nop
add $1 $7 $7
sw $1 904($0)

lh $7 904($0)
nop
nop
add $1 $7 $7
sw $1 908($0)

jr $ra
nop
exit75:


j entrance76
nop
entrance76:
jal block76
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit76
nop
block76:

lh $15 908($0)
addu $1 $15 $15
sw $1 912($0)

lh $15 912($0)
nop
addu $1 $15 $15
sw $1 916($0)

lh $15 916($0)
nop
nop
addu $1 $15 $15
sw $1 920($0)

jr $ra
nop
exit76:


j entrance77
nop
entrance77:
jal block77
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit77
nop
block77:

lh $11 920($0)
sub $1 $11 $11
sw $1 924($0)

lh $11 924($0)
nop
sub $1 $11 $11
sw $1 928($0)

lh $11 928($0)
nop
nop
sub $1 $11 $11
sw $1 932($0)

jalr $23, $ra
nop
exit77:


j entrance78
nop
entrance78:
jal block78
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit78
nop
block78:

lh $8 932($0)
subu $1 $8 $8
sw $1 936($0)

lh $8 936($0)
nop
subu $1 $8 $8
sw $1 940($0)

lh $8 940($0)
nop
nop
subu $1 $8 $8
sw $1 944($0)

jr $ra
nop
exit78:


j entrance79
nop
entrance79:
jal block79
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit79
nop
block79:

lh $2 944($0)
mult $2 $2
sw $2 948($0)

lh $2 948($0)
nop
mult $2 $2
sw $2 952($0)

lh $2 952($0)
nop
nop
mult $2 $2
sw $2 956($0)

jr $ra
nop
exit79:


j entrance80
nop
entrance80:
jal block80
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit80
nop
block80:

lh $14 956($0)
multu $14 $14
sw $14 960($0)

lh $14 960($0)
nop
multu $14 $14
sw $14 964($0)

lh $14 964($0)
nop
nop
multu $14 $14
sw $14 968($0)

jr $ra
nop
exit80:


j entrance81
nop
entrance81:
jal block81
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit81
nop
block81:

lh $8 968($0)
div $8 $8
sw $8 972($0)

lh $8 972($0)
nop
div $8 $8
sw $8 976($0)

lh $8 976($0)
nop
nop
div $8 $8
sw $8 980($0)

jalr $5, $ra
nop
exit81:


j entrance82
nop
entrance82:
jal block82
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit82
nop
block82:

lh $3 980($0)
divu $3 $3
sw $3 984($0)

lh $3 984($0)
nop
divu $3 $3
sw $3 988($0)

lh $3 988($0)
nop
nop
divu $3 $3
sw $3 992($0)

jr $ra
nop
exit82:


j entrance83
nop
entrance83:
jal block83
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit83
nop
block83:

lh $9 992($0)
sll $9 $22 28
sw $1 996($0)

lh $9 996($0)
nop
sll $9 $19 20
sw $1 1000($0)

lh $9 1000($0)
nop
nop
sll $9 $20 29
sw $1 1004($0)

jr $ra
nop
exit83:


j entrance84
nop
entrance84:
jal block84
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit84
nop
block84:

lh $7 1004($0)
srl $7 $21 27
sw $1 1008($0)

lh $7 1008($0)
nop
srl $7 $22 31
sw $1 1012($0)

lh $7 920($0)
nop
nop
srl $7 $22 11
sw $1 1016($0)

jr $ra
nop
exit84:


j entrance85
nop
entrance85:
jal block85
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit85
nop
block85:

lh $12 1016($0)
sra $12 $22 13
sw $1 1020($0)

lh $12 1020($0)
nop
sra $12 $16 10
sw $1 1024($0)

lh $12 1024($0)
nop
nop
sra $12 $18 4
sw $1 1028($0)

jr $ra
nop
exit85:


j entrance86
nop
entrance86:
jal block86
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit86
nop
block86:

lh $1 1028($0)
sllv $1 $1 $1
sw $1 1032($0)

lh $1 1032($0)
nop
sllv $1 $1 $1
sw $1 1036($0)

lh $1 1036($0)
nop
nop
sllv $1 $1 $1
sw $1 1040($0)

jr $ra
nop
exit86:


j entrance87
nop
entrance87:
jal block87
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit87
nop
block87:

lh $10 1040($0)
srlv $1 $10 $10
sw $1 1044($0)

lh $10 1044($0)
nop
srlv $1 $10 $10
sw $1 1048($0)

lh $10 1048($0)
nop
nop
srlv $1 $10 $10
sw $1 1052($0)

jalr $13, $ra
nop
exit87:


j entrance88
nop
entrance88:
jal block88
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit88
nop
block88:

lh $8 1052($0)
srav $1 $8 $8
sw $1 1056($0)

lh $8 1056($0)
nop
srav $1 $8 $8
sw $1 1060($0)

lh $8 1060($0)
nop
nop
srav $1 $8 $8
sw $1 1064($0)

jr $ra
nop
exit88:


j entrance89
nop
entrance89:
jal block89
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit89
nop
block89:

lh $7 1064($0)
and $1 $7 $7
sw $1 1068($0)

lh $7 1068($0)
nop
and $1 $7 $7
sw $1 1072($0)

lh $7 1072($0)
nop
nop
and $1 $7 $7
sw $1 1076($0)

jalr $17, $ra
nop
exit89:


j entrance90
nop
entrance90:
jal block90
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit90
nop
block90:

lh $8 1076($0)
or $1 $8 $8
sw $1 1080($0)

lh $8 580($0)
nop
or $1 $8 $8
sw $1 1084($0)

lh $8 1084($0)
nop
nop
or $1 $8 $8
sw $1 1088($0)

jr $ra
nop
exit90:


j entrance91
nop
entrance91:
jal block91
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit91
nop
block91:

lh $1 1088($0)
xor $1 $1 $1
sw $1 1092($0)

lh $1 1092($0)
nop
xor $1 $1 $1
sw $1 1096($0)

lh $1 1096($0)
nop
nop
xor $1 $1 $1
sw $1 1100($0)

jalr $9, $ra
nop
exit91:


j entrance92
nop
entrance92:
jal block92
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit92
nop
block92:

lh $9 1100($0)
nor $1 $9 $9
sw $1 1104($0)

lh $9 1104($0)
nop
nor $1 $9 $9
sw $1 1108($0)

lh $9 1108($0)
nop
nop
nor $1 $9 $9
sw $1 1112($0)

jalr $2, $ra
nop
exit92: