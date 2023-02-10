ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925

ori $16 $0 762
ori $17 $0 3948
ori $18 $0 3697
ori $19 $0 2275
ori $20 $0 2483
ori $21 $0 3699
ori $22 $0 2055
ori $23 $0 4134

j entrance1085
nop
entrance1085:
jal block1085
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1085
nop
block1085:

sltiu $3 $19 357
lb $17 5148($0)
sw $17 10020($0)

sltiu $3 $18 3740
nop
lb $20 756($0)
sw $20 10024($0)

sltiu $3 $20 2216
nop
nop
lb $18 6932($0)
sw $18 10028($0)

jalr $6, $ra
nop
exit1085:


j entrance1086
nop
entrance1086:
jal block1086
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1086
nop
block1086:

sltiu $8 $23 3226
lbu $23 7476($0)
sw $23 10032($0)

sltiu $8 $22 1853
nop
lbu $16 6212($0)
sw $16 10036($0)

sltiu $8 $19 1671
nop
nop
lbu $18 204($0)
sw $18 10040($0)

jalr $10, $ra
nop
exit1086:


j entrance1087
nop
entrance1087:
jal block1087
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit1087
nop
block1087:

sltiu $2 $16 3012
lh $23 1072($0)
sw $23 10044($0)

sltiu $2 $17 453
nop
lh $22 5616($0)
sw $22 10048($0)

sltiu $2 $18 134
nop
nop
lh $23 5720($0)
sw $23 10052($0)

jr $ra
nop
exit1087:


j entrance1088
nop
entrance1088:
jal block1088
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit1088
nop
block1088:

sltiu $11 $16 591
lhu $17 7992($0)
sw $17 10056($0)

sltiu $11 $21 2791
nop
lhu $16 5472($0)
sw $16 10060($0)

sltiu $11 $19 2093
nop
nop
lhu $17 5956($0)
sw $17 10064($0)

jalr $30, $ra
nop
exit1088:


j entrance1089
nop
entrance1089:
jal block1089
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1089
nop
block1089:

sltiu $4 $23 447
lw $23 6888($0)
sw $23 10068($0)

sltiu $4 $17 684
nop
lw $22 1152($0)
sw $22 10072($0)

sltiu $4 $18 2769
nop
nop
lw $17 220($0)
sw $17 10076($0)

jr $ra
nop
exit1089:


j entrance1090
nop
entrance1090:
jal block1090
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit1090
nop
block1090:

sltiu $3 $23 3311
add $1 $3 $3
sw $1 10080($0)

sltiu $3 $21 3017
nop
add $1 $3 $3
sw $1 10084($0)

sltiu $3 $22 3090
nop
nop
add $1 $3 $3
sw $1 10088($0)

jr $ra
nop
exit1090:


j entrance1091
nop
entrance1091:
jal block1091
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1091
nop
block1091:

sltiu $13 $22 2397
addu $1 $13 $13
sw $1 10092($0)

sltiu $13 $16 3893
nop
addu $1 $13 $13
sw $1 10096($0)

sltiu $13 $17 1722
nop
nop
addu $1 $13 $13
sw $1 10100($0)

jr $ra
nop
exit1091:


j entrance1092
nop
entrance1092:
jal block1092
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit1092
nop
block1092:

sltiu $2 $17 317
sub $1 $2 $2
sw $1 10104($0)

sltiu $2 $17 575
nop
sub $1 $2 $2
sw $1 10108($0)

sltiu $2 $18 2807
nop
nop
sub $1 $2 $2
sw $1 10112($0)

jr $ra
nop
exit1092:


j entrance1093
nop
entrance1093:
jal block1093
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit1093
nop
block1093:

sltiu $14 $21 209
subu $1 $14 $14
sw $1 10116($0)

sltiu $14 $20 2600
nop
subu $1 $14 $14
sw $1 10120($0)

sltiu $14 $17 3165
nop
nop
subu $1 $14 $14
sw $1 10124($0)

jr $ra
nop
exit1093:


j entrance1094
nop
entrance1094:
jal block1094
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1094
nop
block1094:

sltiu $4 $21 991
mult $4 $4
sw $4 10128($0)

sltiu $4 $21 2161
nop
mult $4 $4
sw $4 10132($0)

sltiu $4 $18 1399
nop
nop
mult $4 $4
sw $4 10136($0)

jalr $6, $ra
nop
exit1094:


j entrance1095
nop
entrance1095:
jal block1095
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit1095
nop
block1095:

sltiu $3 $22 1866
multu $3 $3
sw $3 10140($0)

sltiu $3 $17 2669
nop
multu $3 $3
sw $3 10144($0)

sltiu $3 $21 758
nop
nop
multu $3 $3
sw $3 10148($0)

jr $ra
nop
exit1095:


j entrance1096
nop
entrance1096:
jal block1096
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1096
nop
block1096:

sltiu $14 $23 2977
div $14 $14
sw $14 10152($0)

sltiu $14 $23 3868
nop
div $14 $14
sw $14 10156($0)

sltiu $14 $17 2056
nop
nop
div $14 $14
sw $14 10160($0)

jalr $23, $ra
nop
exit1096:


j entrance1097
nop
entrance1097:
jal block1097
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit1097
nop
block1097:

sltiu $3 $20 347
divu $3 $3
sw $3 10164($0)

sltiu $3 $19 698
nop
divu $3 $3
sw $3 10168($0)

sltiu $3 $20 2646
nop
nop
divu $3 $3
sw $3 10172($0)

jr $ra
nop
exit1097:


j entrance1098
nop
entrance1098:
jal block1098
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1098
nop
block1098:

sltiu $1 $20 320
sll $1 $23 26
sw $1 10176($0)

sltiu $1 $23 2740
nop
sll $1 $17 21
sw $1 10180($0)

sltiu $1 $23 817
nop
nop
sll $1 $19 7
sw $1 10184($0)

jr $ra
nop
exit1098:


j entrance1099
nop
entrance1099:
jal block1099
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit1099
nop
block1099:

sltiu $4 $22 3257
srl $4 $21 5
sw $1 10188($0)

sltiu $4 $17 2681
nop
srl $4 $23 12
sw $1 10192($0)

sltiu $4 $22 3126
nop
nop
srl $4 $20 22
sw $1 10196($0)

jalr $13, $ra
nop
exit1099:


j entrance1100
nop
entrance1100:
jal block1100
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1100
nop
block1100:

sltiu $4 $21 2929
sra $4 $20 6
sw $1 10200($0)

sltiu $4 $20 1792
nop
sra $4 $23 12
sw $1 10204($0)

sltiu $4 $17 912
nop
nop
sra $4 $23 23
sw $1 10208($0)

jr $ra
nop
exit1100:


j entrance1101
nop
entrance1101:
jal block1101
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit1101
nop
block1101:

sltiu $12 $18 362
sllv $1 $12 $12
sw $1 10212($0)

sltiu $12 $22 1592
nop
sllv $1 $12 $12
sw $1 10216($0)

sltiu $12 $19 2711
nop
nop
sllv $1 $12 $12
sw $1 10220($0)

jr $ra
nop
exit1101:


j entrance1102
nop
entrance1102:
jal block1102
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit1102
nop
block1102:

sltiu $8 $17 3840
srlv $1 $8 $8
sw $1 10224($0)

sltiu $8 $19 1840
nop
srlv $1 $8 $8
sw $1 10228($0)

sltiu $8 $21 3087
nop
nop
srlv $1 $8 $8
sw $1 10232($0)

jr $ra
nop
exit1102:


j entrance1103
nop
entrance1103:
jal block1103
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1103
nop
block1103:

sltiu $5 $21 2209
srav $1 $5 $5
sw $1 10236($0)

sltiu $5 $18 3365
nop
srav $1 $5 $5
sw $1 10240($0)

sltiu $5 $19 2989
nop
nop
srav $1 $5 $5
sw $1 10244($0)

jalr $23, $ra
nop
exit1103:


j entrance1104
nop
entrance1104:
jal block1104
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit1104
nop
block1104:

sltiu $15 $22 1446
and $1 $15 $15
sw $1 10248($0)

sltiu $15 $23 275
nop
and $1 $15 $15
sw $1 10252($0)

sltiu $15 $19 2816
nop
nop
and $1 $15 $15
sw $1 10256($0)

jalr $22, $ra
nop
exit1104:


j entrance1105
nop
entrance1105:
jal block1105
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit1105
nop
block1105:

sltiu $8 $17 534
or $1 $8 $8
sw $1 10260($0)

sltiu $8 $22 2249
nop
or $1 $8 $8
sw $1 10264($0)

sltiu $8 $17 1194
nop
nop
or $1 $8 $8
sw $1 10268($0)

jr $ra
nop
exit1105:


j entrance1106
nop
entrance1106:
jal block1106
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1106
nop
block1106:

sltiu $6 $16 1830
xor $1 $6 $6
sw $1 10272($0)

sltiu $6 $16 3734
nop
xor $1 $6 $6
sw $1 10276($0)

sltiu $6 $18 3084
nop
nop
xor $1 $6 $6
sw $1 10280($0)

jr $ra
nop
exit1106:


j entrance1107
nop
entrance1107:
jal block1107
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1107
nop
block1107:

sltiu $9 $19 2411
nor $1 $9 $9
sw $1 10284($0)

sltiu $9 $20 2427
nop
nor $1 $9 $9
sw $1 10288($0)

sltiu $9 $17 1300
nop
nop
nor $1 $9 $9
sw $1 10292($0)

jalr $12, $ra
nop
exit1107:


j entrance1108
nop
entrance1108:
jal block1108
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1108
nop
block1108:

sltiu $5 $16 2863
addi $19 $5 3790
sw $19 10296($0)

sltiu $5 $22 4064
nop
addi $19 $5 878
sw $19 10300($0)

sltiu $5 $22 4094
nop
nop
addi $17 $5 3934
sw $17 10304($0)

jalr $20, $ra
nop
exit1108:


j entrance1109
nop
entrance1109:
jal block1109
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit1109
nop
block1109:

sltiu $9 $17 3851
addiu $17 $9 2418
sw $17 10308($0)

sltiu $9 $18 124
nop
addiu $19 $9 3957
sw $19 10312($0)

sltiu $9 $17 3571
nop
nop
addiu $18 $9 389
sw $18 10316($0)

jalr $26, $ra
nop
exit1109:


j entrance1110
nop
entrance1110:
jal block1110
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit1110
nop
block1110:

sltiu $1 $21 1103
andi $18 $1 4098
sw $18 10320($0)

sltiu $1 $19 2760
nop
andi $19 $1 1895
sw $19 10324($0)

sltiu $1 $16 3578
nop
nop
andi $22 $1 1887
sw $22 10328($0)

jr $ra
nop
exit1110:


j entrance1111
nop
entrance1111:
jal block1111
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1111
nop
block1111:

sltiu $14 $21 913
ori $18 $14 953
sw $18 10332($0)

sltiu $14 $18 1751
nop
ori $20 $14 2447
sw $20 10336($0)

sltiu $14 $22 2715
nop
nop
ori $18 $14 2283
sw $18 10340($0)

jr $ra
nop
exit1111:


j entrance1112
nop
entrance1112:
jal block1112
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1112
nop
block1112:

sltiu $8 $21 3936
xori $22 $8 1598
sw $22 10344($0)

sltiu $8 $18 2097
nop
xori $22 $8 3759
sw $22 10348($0)

sltiu $8 $17 1303
nop
nop
xori $18 $8 2482
sw $18 10352($0)

jr $ra
nop
exit1112:


j entrance1113
nop
entrance1113:
jal block1113
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1113
nop
block1113:

sltiu $4 $21 442
lui $22 551
sw $22 10356($0)

sltiu $4 $20 946
nop
lui $18 1789
sw $18 10360($0)

sltiu $4 $16 2429
nop
nop
lui $21 1565
sw $21 10364($0)

jr $ra
nop
exit1113:


j entrance1114
nop
entrance1114:
jal block1114
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit1114
nop
block1114:

sltiu $14 $19 220
slt $1 $14 $14
sw $1 10368($0)

sltiu $14 $21 2173
nop
slt $1 $14 $14
sw $1 10372($0)

sltiu $14 $22 3875
nop
nop
slt $1 $14 $14
sw $1 10376($0)

jr $ra
nop
exit1114:


j entrance1115
nop
entrance1115:
jal block1115
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit1115
nop
block1115:

sltiu $6 $17 2413
slti $16 $6 3939
sw $16 10380($0)

sltiu $6 $22 3726
nop
slti $23 $6 1263
sw $23 10384($0)

sltiu $6 $16 4107
nop
nop
slti $22 $6 4012
sw $22 10388($0)

jalr $14, $ra
nop
exit1115: