ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance1147
nop
entrance1147:
jal block1147
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1147
nop
block1147:

sltu $1 $23 $23
xori $17 $1 2718
sw $17 10764($0)

sltu $1 $17 $17
nop
xori $22 $1 959
sw $22 10768($0)

sltu $1 $20 $17
nop
nop
xori $18 $1 3192
sw $18 10772($0)

jr $ra
nop
exit1147:


j entrance1148
nop
entrance1148:
jal block1148
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit1148
nop
block1148:

sltu $15 $23 $23
lui $19 1307
sw $19 10776($0)

sltu $15 $16 $21
nop
lui $16 526
sw $16 10780($0)

sltu $15 $18 $19
nop
nop
lui $23 1427
sw $23 10784($0)

jalr $29, $ra
nop
exit1148:


j entrance1149
nop
entrance1149:
jal block1149
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit1149
nop
block1149:

sltu $14 $16 $20
slt $1 $14 $14
sw $1 10788($0)

sltu $14 $23 $16
nop
slt $1 $14 $14
sw $1 10792($0)

sltu $14 $22 $21
nop
nop
slt $1 $14 $14
sw $1 10796($0)

jr $ra
nop
exit1149:


j entrance1150
nop
entrance1150:
jal block1150
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1150
nop
block1150:

sltu $6 $23 $20
slti $21 $6 2084
sw $21 10800($0)

sltu $6 $17 $20
nop
slti $20 $6 2651
sw $20 10804($0)

sltu $6 $18 $18
nop
nop
slti $22 $6 2992
sw $22 10808($0)

jr $ra
nop
exit1150:


j entrance1151
nop
entrance1151:
jal block1151
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1151
nop
block1151:

sltu $2 $22 $18
sltiu $19 $2 1075
sw $19 10812($0)

sltu $2 $22 $23
nop
sltiu $20 $2 2782
sw $20 10816($0)

sltu $2 $16 $16
nop
nop
sltiu $20 $2 2488
sw $20 10820($0)

jr $ra
nop
exit1151:


j entrance1152
nop
entrance1152:
jal block1152
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit1152
nop
block1152:

sltu $1 $17 $21
sltu $1 $1 $1
sw $1 10824($0)

sltu $1 $21 $18
nop
sltu $1 $1 $1
sw $1 10828($0)

sltu $1 $16 $23
nop
nop
sltu $1 $1 $1
sw $1 10832($0)

jalr $16, $ra
nop
exit1152:


j entrance1153
nop
entrance1153:
jal block1153
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit1153
nop
block1153:

sltu $8 $23 $17
mthi $8
sw $8 10836($0)

sltu $8 $22 $23
nop
mthi $8
sw $8 10840($0)

sltu $8 $20 $20
nop
nop
mthi $8
sw $8 10844($0)

jr $ra
nop
exit1153:


j entrance1154
nop
entrance1154:
jal block1154
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit1154
nop
block1154:

sltu $14 $22 $19
mtlo $14
sw $14 10848($0)

sltu $14 $23 $19
nop
mtlo $14
sw $14 10852($0)

sltu $14 $22 $23
nop
nop
mtlo $14
sw $14 10856($0)

jr $ra
nop
exit1154:

ori $16 $0 4084
ori $17 $0 1154
ori $18 $0 3889
ori $19 $0 177
ori $20 $0 133
ori $21 $0 9
ori $22 $0 3353
ori $23 $0 3818

j entrance1155
nop
entrance1155:
jal block1155
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1155
nop
block1155:

mfhi $7
lb $19 60($0)
sw $19 10860($0)

mfhi $7
nop
lb $16 6744($0)
sw $16 10864($0)

mfhi $7
nop
nop
lb $16 1576($0)
sw $16 10868($0)

jalr $23, $ra
nop
exit1155:


j entrance1156
nop
entrance1156:
jal block1156
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1156
nop
block1156:

mfhi $12
lbu $19 1868($0)
sw $19 10872($0)

mfhi $12
nop
lbu $22 2992($0)
sw $22 10876($0)

mfhi $12
nop
nop
lbu $19 5344($0)
sw $19 10880($0)

jalr $23, $ra
nop
exit1156:


j entrance1157
nop
entrance1157:
jal block1157
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit1157
nop
block1157:

mfhi $1
lh $22 1084($0)
sw $22 10884($0)

mfhi $1
nop
lh $19 3504($0)
sw $19 10888($0)

mfhi $1
nop
nop
lh $19 5948($0)
sw $19 10892($0)

jr $ra
nop
exit1157:


j entrance1158
nop
entrance1158:
jal block1158
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit1158
nop
block1158:

mfhi $5
lhu $16 4352($0)
sw $16 10896($0)

mfhi $5
nop
lhu $16 5036($0)
sw $16 10900($0)

mfhi $5
nop
nop
lhu $20 2828($0)
sw $20 10904($0)

jr $ra
nop
exit1158:


j entrance1159
nop
entrance1159:
jal block1159
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit1159
nop
block1159:

mfhi $15
lw $17 6520($0)
sw $17 10908($0)

mfhi $15
nop
lw $22 3612($0)
sw $22 10912($0)

mfhi $15
nop
nop
lw $23 48($0)
sw $23 10916($0)

jr $ra
nop
exit1159:


j entrance1160
nop
entrance1160:
jal block1160
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit1160
nop
block1160:

mfhi $3
add $1 $3 $3
sw $1 10920($0)

mfhi $3
nop
add $1 $3 $3
sw $1 10924($0)

mfhi $3
nop
nop
add $1 $3 $3
sw $1 10928($0)

jr $ra
nop
exit1160:


j entrance1161
nop
entrance1161:
jal block1161
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit1161
nop
block1161:

mfhi $5
addu $1 $5 $5
sw $1 10932($0)

mfhi $5
nop
addu $1 $5 $5
sw $1 10936($0)

mfhi $5
nop
nop
addu $1 $5 $5
sw $1 10940($0)

jr $ra
nop
exit1161:


j entrance1162
nop
entrance1162:
jal block1162
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit1162
nop
block1162:

mfhi $13
sub $1 $13 $13
sw $1 10944($0)

mfhi $13
nop
sub $1 $13 $13
sw $1 10948($0)

mfhi $13
nop
nop
sub $1 $13 $13
sw $1 10952($0)

jr $ra
nop
exit1162:


j entrance1163
nop
entrance1163:
jal block1163
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit1163
nop
block1163:

mfhi $4
subu $1 $4 $4
sw $1 10956($0)

mfhi $4
nop
subu $1 $4 $4
sw $1 10960($0)

mfhi $4
nop
nop
subu $1 $4 $4
sw $1 10964($0)

jalr $24, $ra
nop
exit1163:


j entrance1164
nop
entrance1164:
jal block1164
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit1164
nop
block1164:

mfhi $13
mult $13 $13
sw $13 10968($0)

mfhi $13
nop
mult $13 $13
sw $13 10972($0)

mfhi $13
nop
nop
mult $13 $13
sw $13 10976($0)

jr $ra
nop
exit1164:


j entrance1165
nop
entrance1165:
jal block1165
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit1165
nop
block1165:

mfhi $4
multu $4 $4
sw $4 10980($0)

mfhi $4
nop
multu $4 $4
sw $4 10984($0)

mfhi $4
nop
nop
multu $4 $4
sw $4 10988($0)

jr $ra
nop
exit1165:


j entrance1166
nop
entrance1166:
jal block1166
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit1166
nop
block1166:

mfhi $10
xori $10,$31,2345
div $10 $10
sw $10 10992($0)

mthi $31
mfhi $10
nop
div $10 $10
sw $10 10996($0)

mfhi $11
nop
nop
div $10 $10
sw $10 10000($0)

jr $ra
nop
exit1166:


j entrance1167
nop
entrance1167:
jal block1167
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit1167
nop
block1167:

mfhi $3
slt $3 $3 $31
divu $3 $3
sw $3 10004($0)

mthi $31
mfhi $3
nop
divu $3 $3
sw $3 10008($0)

mflo $1
mthi $1
mfhi $3
nop
nop
divu $3 $3
sw $3 10012($0)

jr $ra
nop
exit1167:


j entrance1168
nop
entrance1168:
jal block1168
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit1168
nop
block1168:

mfhi $9
sll $9 $22 22
sw $1 10016($0)

mfhi $9
nop
sll $9 $16 23
sw $1 10020($0)

mfhi $9
nop
nop
sll $9 $16 4
sw $1 10024($0)

jr $ra
nop
exit1168:


j entrance1169
nop
entrance1169:
jal block1169
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit1169
nop
block1169:

mfhi $10
srl $10 $17 13
sw $1 10028($0)

mfhi $10
nop
srl $10 $22 26
sw $1 10032($0)

mfhi $10
nop
nop
srl $10 $18 1
sw $1 10036($0)

jalr $8, $ra
nop
exit1169:


j entrance1170
nop
entrance1170:
jal block1170
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit1170
nop
block1170:

mfhi $11
sra $11 $18 16
sw $1 10040($0)

mfhi $11
nop
sra $11 $17 8
sw $1 10044($0)

mfhi $11
nop
nop
sra $11 $20 1
sw $1 10048($0)

jr $ra
nop
exit1170:


j entrance1171
nop
entrance1171:
jal block1171
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1171
nop
block1171:

mfhi $8
sllv $1 $8 $8
sw $1 10052($0)

mfhi $8
nop
sllv $1 $8 $8
sw $1 10056($0)

mfhi $8
nop
nop
sllv $1 $8 $8
sw $1 10060($0)

jr $ra
nop
exit1171:


j entrance1172
nop
entrance1172:
jal block1172
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1172
nop
block1172:

mfhi $6
srlv $1 $6 $6
sw $1 10064($0)

mfhi $6
nop
srlv $1 $6 $6
sw $1 10068($0)

mfhi $6
nop
nop
srlv $1 $6 $6
sw $1 10072($0)

jr $ra
nop
exit1172:


j entrance1173
nop
entrance1173:
jal block1173
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit1173
nop
block1173:

mfhi $1
srav $1 $1 $1
sw $1 10076($0)

mfhi $1
nop
srav $1 $1 $1
sw $1 10080($0)

mfhi $1
nop
nop
srav $1 $1 $1
sw $1 10084($0)

jalr $27, $ra
nop
exit1173:


j entrance1174
nop
entrance1174:
jal block1174
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit1174
nop
block1174:

mfhi $14
and $1 $14 $14
sw $1 10088($0)

mfhi $14
nop
and $1 $14 $14
sw $1 10092($0)

mfhi $14
nop
nop
and $1 $14 $14
sw $1 10096($0)

jalr $8, $ra
nop
exit1174:


j entrance1175
nop
entrance1175:
jal block1175
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1175
nop
block1175:

mfhi $5
or $1 $5 $5
sw $1 10100($0)

mfhi $5
nop
or $1 $5 $5
sw $1 10104($0)

mfhi $5
nop
nop
or $1 $5 $5
sw $1 10108($0)

jalr $7, $ra
nop
exit1175:


j entrance1176
nop
entrance1176:
jal block1176
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit1176
nop
block1176:

mfhi $8
xor $1 $8 $8
sw $1 10112($0)

mfhi $8
nop
xor $1 $8 $8
sw $1 10116($0)

mfhi $8
nop
nop
xor $1 $8 $8
sw $1 10120($0)

jr $ra
nop
exit1176:


j entrance1177
nop
entrance1177:
jal block1177
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit1177
nop
block1177:

mfhi $14
nor $1 $14 $14
sw $1 10124($0)

mfhi $14
nop
nor $1 $14 $14
sw $1 10128($0)

mfhi $14
nop
nop
nor $1 $14 $14
sw $1 10132($0)

jr $ra
nop
exit1177: