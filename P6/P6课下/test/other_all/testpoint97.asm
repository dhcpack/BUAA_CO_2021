ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance1116
nop
entrance1116:
jal block1116
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1116
nop
block1116:

sltiu $9 $23 1712
sltiu $23 $9 1708
sw $23 10392($0)

sltiu $9 $20 283
nop
sltiu $16 $9 2155
sw $16 10396($0)

sltiu $9 $23 1828
nop
nop
sltiu $20 $9 1054
sw $20 10400($0)

jalr $23, $ra
nop
exit1116:


j entrance1117
nop
entrance1117:
jal block1117
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit1117
nop
block1117:

sltiu $14 $20 1497
sltu $1 $14 $14
sw $1 10404($0)

sltiu $14 $21 2325
nop
sltu $1 $14 $14
sw $1 10408($0)

sltiu $14 $16 2594
nop
nop
sltu $1 $14 $14
sw $1 10412($0)

jr $ra
nop
exit1117:


j entrance1118
nop
entrance1118:
jal block1118
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1118
nop
block1118:

sltiu $14 $22 697
mthi $14
sw $14 10416($0)

sltiu $14 $16 172
nop
mthi $14
sw $14 10420($0)

sltiu $14 $23 1676
nop
nop
mthi $14
sw $14 10424($0)

jr $ra
nop
exit1118:


j entrance1119
nop
entrance1119:
jal block1119
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit1119
nop
block1119:

sltiu $13 $20 2101
mtlo $13
sw $13 10428($0)

sltiu $13 $23 579
nop
mtlo $13
sw $13 10432($0)

sltiu $13 $16 3674
nop
nop
mtlo $13
sw $13 10436($0)

jalr $11, $ra
nop
exit1119:

ori $16 $0 2358
ori $17 $0 3629
ori $18 $0 2483
ori $19 $0 2015
ori $20 $0 682
ori $21 $0 3182
ori $22 $0 1566
ori $23 $0 2104

j entrance1120
nop
entrance1120:
jal block1120
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit1120
nop
block1120:

sltu $10 $18 $18
lb $16 1296($0)
sw $16 10440($0)

sltu $10 $22 $20
nop
lb $17 2604($0)
sw $17 10444($0)

sltu $10 $17 $18
nop
nop
lb $17 2848($0)
sw $17 10448($0)

jr $ra
nop
exit1120:


j entrance1121
nop
entrance1121:
jal block1121
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1121
nop
block1121:

sltu $13 $22 $22
lbu $16 1992($0)
sw $16 10452($0)

sltu $13 $16 $18
nop
lbu $19 4488($0)
sw $19 10456($0)

sltu $13 $22 $16
nop
nop
lbu $20 7372($0)
sw $20 10460($0)

jr $ra
nop
exit1121:


j entrance1122
nop
entrance1122:
jal block1122
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1122
nop
block1122:

sltu $15 $21 $18
lh $21 4356($0)
sw $21 10464($0)

sltu $15 $17 $23
nop
lh $23 1884($0)
sw $23 10468($0)

sltu $15 $21 $16
nop
nop
lh $22 6676($0)
sw $22 10472($0)

jr $ra
nop
exit1122:


j entrance1123
nop
entrance1123:
jal block1123
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1123
nop
block1123:

sltu $6 $21 $21
lhu $20 3816($0)
sw $20 10476($0)

sltu $6 $22 $22
nop
lhu $16 5904($0)
sw $16 10480($0)

sltu $6 $17 $19
nop
nop
lhu $22 4792($0)
sw $22 10484($0)

jr $ra
nop
exit1123:


j entrance1124
nop
entrance1124:
jal block1124
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit1124
nop
block1124:

sltu $9 $19 $18
lw $22 3784($0)
sw $22 10488($0)

sltu $9 $20 $23
nop
lw $19 4028($0)
sw $19 10492($0)

sltu $9 $18 $20
nop
nop
lw $17 7880($0)
sw $17 10496($0)

jalr $11, $ra
nop
exit1124:


j entrance1125
nop
entrance1125:
jal block1125
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1125
nop
block1125:

sltu $7 $23 $16
add $1 $7 $7
sw $1 10500($0)

sltu $7 $20 $21
nop
add $1 $7 $7
sw $1 10504($0)

sltu $7 $19 $22
nop
nop
add $1 $7 $7
sw $1 10508($0)

jr $ra
nop
exit1125:


j entrance1126
nop
entrance1126:
jal block1126
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1126
nop
block1126:

sltu $11 $17 $18
addu $1 $11 $11
sw $1 10512($0)

sltu $11 $22 $23
nop
addu $1 $11 $11
sw $1 10516($0)

sltu $11 $23 $16
nop
nop
addu $1 $11 $11
sw $1 10520($0)

jr $ra
nop
exit1126:


j entrance1127
nop
entrance1127:
jal block1127
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1127
nop
block1127:

sltu $5 $21 $21
sub $1 $5 $5
sw $1 10524($0)

sltu $5 $23 $21
nop
sub $1 $5 $5
sw $1 10528($0)

sltu $5 $20 $17
nop
nop
sub $1 $5 $5
sw $1 10532($0)

jr $ra
nop
exit1127:


j entrance1128
nop
entrance1128:
jal block1128
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit1128
nop
block1128:

sltu $1 $16 $21
subu $1 $1 $1
sw $1 10536($0)

sltu $1 $18 $16
nop
subu $1 $1 $1
sw $1 10540($0)

sltu $1 $17 $20
nop
nop
subu $1 $1 $1
sw $1 10544($0)

jr $ra
nop
exit1128:


j entrance1129
nop
entrance1129:
jal block1129
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit1129
nop
block1129:

sltu $1 $18 $18
mult $1 $1
sw $1 10548($0)

sltu $1 $19 $19
nop
mult $1 $1
sw $1 10552($0)

sltu $1 $21 $19
nop
nop
mult $1 $1
sw $1 10556($0)

jr $ra
nop
exit1129:


j entrance1130
nop
entrance1130:
jal block1130
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1130
nop
block1130:

sltu $11 $22 $21
multu $11 $11
sw $11 10560($0)

sltu $11 $16 $21
nop
multu $11 $11
sw $11 10564($0)

sltu $11 $23 $19
nop
nop
multu $11 $11
sw $11 10568($0)

jalr $6, $ra
nop
exit1130:


j entrance1131
nop
entrance1131:
jal block1131
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit1131
nop
block1131:

sltu $11 $20 $17
div $11 $11
sw $11 10572($0)

sltu $11 $18 $16
nop
div $11 $11
sw $11 10576($0)

sltu $11 $19 $21
nop
nop
div $11 $11
sw $11 10580($0)

jalr $26, $ra
nop
exit1131:


j entrance1132
nop
entrance1132:
jal block1132
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit1132
nop
block1132:

sltu $10 $18 $22
divu $10 $10
sw $10 10584($0)

sltu $10 $17 $20
nop
divu $10 $10
sw $10 10588($0)

sltu $10 $20 $16
nop
nop
divu $10 $10
sw $10 10592($0)

jr $ra
nop
exit1132:


j entrance1133
nop
entrance1133:
jal block1133
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1133
nop
block1133:

sltu $4 $16 $16
sll $4 $21 2
sw $1 10596($0)

sltu $4 $18 $21
nop
sll $4 $20 26
sw $1 10600($0)

sltu $4 $19 $17
nop
nop
sll $4 $21 2
sw $1 10604($0)

jalr $23, $ra
nop
exit1133:


j entrance1134
nop
entrance1134:
jal block1134
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1134
nop
block1134:

sltu $13 $22 $18
srl $13 $16 22
sw $1 10608($0)

sltu $13 $22 $19
nop
srl $13 $20 9
sw $1 10612($0)

sltu $13 $23 $20
nop
nop
srl $13 $23 12
sw $1 10616($0)

jr $ra
nop
exit1134:


j entrance1135
nop
entrance1135:
jal block1135
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit1135
nop
block1135:

sltu $15 $20 $18
sra $15 $17 26
sw $1 10620($0)

sltu $15 $22 $20
nop
sra $15 $23 15
sw $1 10624($0)

sltu $15 $19 $21
nop
nop
sra $15 $17 23
sw $1 10628($0)

jr $ra
nop
exit1135:


j entrance1136
nop
entrance1136:
jal block1136
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit1136
nop
block1136:

sltu $2 $20 $22
sllv $1 $2 $2
sw $1 10632($0)

sltu $2 $19 $20
nop
sllv $1 $2 $2
sw $1 10636($0)

sltu $2 $20 $21
nop
nop
sllv $1 $2 $2
sw $1 10640($0)

jr $ra
nop
exit1136:


j entrance1137
nop
entrance1137:
jal block1137
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit1137
nop
block1137:

sltu $12 $19 $16
srlv $1 $12 $12
sw $1 10644($0)

sltu $12 $22 $20
nop
srlv $1 $12 $12
sw $1 10648($0)

sltu $12 $19 $16
nop
nop
srlv $1 $12 $12
sw $1 10652($0)

jr $ra
nop
exit1137:


j entrance1138
nop
entrance1138:
jal block1138
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1138
nop
block1138:

sltu $3 $16 $23
srav $1 $3 $3
sw $1 10656($0)

sltu $3 $17 $21
nop
srav $1 $3 $3
sw $1 10660($0)

sltu $3 $20 $23
nop
nop
srav $1 $3 $3
sw $1 10664($0)

jr $ra
nop
exit1138:


j entrance1139
nop
entrance1139:
jal block1139
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit1139
nop
block1139:

sltu $10 $21 $18
and $1 $10 $10
sw $1 10668($0)

sltu $10 $23 $16
nop
and $1 $10 $10
sw $1 10672($0)

sltu $10 $19 $23
nop
nop
and $1 $10 $10
sw $1 10676($0)

jr $ra
nop
exit1139:


j entrance1140
nop
entrance1140:
jal block1140
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1140
nop
block1140:

sltu $4 $17 $18
or $1 $4 $4
sw $1 10680($0)

sltu $4 $20 $22
nop
or $1 $4 $4
sw $1 10684($0)

sltu $4 $21 $22
nop
nop
or $1 $4 $4
sw $1 10688($0)

jr $ra
nop
exit1140:


j entrance1141
nop
entrance1141:
jal block1141
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit1141
nop
block1141:

sltu $11 $21 $16
xor $1 $11 $11
sw $1 10692($0)

sltu $11 $22 $19
nop
xor $1 $11 $11
sw $1 10696($0)

sltu $11 $21 $19
nop
nop
xor $1 $11 $11
sw $1 10700($0)

jr $ra
nop
exit1141:


j entrance1142
nop
entrance1142:
jal block1142
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1142
nop
block1142:

sltu $4 $21 $17
nor $1 $4 $4
sw $1 10704($0)

sltu $4 $19 $23
nop
nor $1 $4 $4
sw $1 10708($0)

sltu $4 $16 $19
nop
nop
nor $1 $4 $4
sw $1 10712($0)

jalr $20, $ra
nop
exit1142:


j entrance1143
nop
entrance1143:
jal block1143
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit1143
nop
block1143:

sltu $5 $23 $22
addi $20 $5 707
sw $20 10716($0)

sltu $5 $16 $19
nop
addi $17 $5 2262
sw $17 10720($0)

sltu $5 $23 $23
nop
nop
addi $19 $5 1604
sw $19 10724($0)

jr $ra
nop
exit1143:


j entrance1144
nop
entrance1144:
jal block1144
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1144
nop
block1144:

sltu $3 $20 $21
addiu $16 $3 2180
sw $16 10728($0)

sltu $3 $16 $22
nop
addiu $23 $3 1693
sw $23 10732($0)

sltu $3 $16 $17
nop
nop
addiu $19 $3 3198
sw $19 10736($0)

jr $ra
nop
exit1144:


j entrance1145
nop
entrance1145:
jal block1145
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1145
nop
block1145:

sltu $1 $20 $21
andi $22 $1 3214
sw $22 10740($0)

sltu $1 $16 $16
nop
andi $23 $1 542
sw $23 10744($0)

sltu $1 $23 $18
nop
nop
andi $16 $1 703
sw $16 10748($0)

jalr $12, $ra
nop
exit1145:


j entrance1146
nop
entrance1146:
jal block1146
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit1146
nop
block1146:

sltu $6 $18 $23
ori $23 $6 1990
sw $23 10752($0)

sltu $6 $21 $20
nop
ori $23 $6 27
sw $23 10756($0)

sltu $6 $18 $19
nop
nop
ori $22 $6 2632
sw $22 10760($0)

jr $ra
nop
exit1146: