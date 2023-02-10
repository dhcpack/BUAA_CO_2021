ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance1054
nop
entrance1054:
jal block1054
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit1054
nop
block1054:

slti $10 $17 202
lw $16 7620($0)
sw $16 10648($0)

slti $10 $19 3107
nop
lw $21 5788($0)
sw $21 10652($0)

slti $10 $21 3403
nop
nop
lw $16 7704($0)
sw $16 10656($0)

jalr $15, $ra
nop
exit1054:


j entrance1055
nop
entrance1055:
jal block1055
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit1055
nop
block1055:

slti $9 $20 2756
add $1 $9 $9
sw $1 10660($0)

slti $9 $23 3908
nop
add $1 $9 $9
sw $1 10664($0)

slti $9 $18 1572
nop
nop
add $1 $9 $9
sw $1 10668($0)

jr $ra
nop
exit1055:


j entrance1056
nop
entrance1056:
jal block1056
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit1056
nop
block1056:

slti $10 $18 1970
addu $1 $10 $10
sw $1 10672($0)

slti $10 $16 3959
nop
addu $1 $10 $10
sw $1 10676($0)

slti $10 $20 1794
nop
nop
addu $1 $10 $10
sw $1 10680($0)

jalr $27, $ra
nop
exit1056:


j entrance1057
nop
entrance1057:
jal block1057
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit1057
nop
block1057:

slti $1 $19 3902
sub $1 $1 $1
sw $1 10684($0)

slti $1 $20 1614
nop
sub $1 $1 $1
sw $1 10688($0)

slti $1 $19 3807
nop
nop
sub $1 $1 $1
sw $1 10692($0)

jalr $22, $ra
nop
exit1057:


j entrance1058
nop
entrance1058:
jal block1058
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit1058
nop
block1058:

slti $11 $20 1172
subu $1 $11 $11
sw $1 10696($0)

slti $11 $22 1500
nop
subu $1 $11 $11
sw $1 10700($0)

slti $11 $23 210
nop
nop
subu $1 $11 $11
sw $1 10704($0)

jr $ra
nop
exit1058:


j entrance1059
nop
entrance1059:
jal block1059
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit1059
nop
block1059:

slti $2 $23 1171
mult $2 $2
sw $2 10708($0)

slti $2 $19 774
nop
mult $2 $2
sw $2 10712($0)

slti $2 $20 289
nop
nop
mult $2 $2
sw $2 10716($0)

jalr $8, $ra
nop
exit1059:


j entrance1060
nop
entrance1060:
jal block1060
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1060
nop
block1060:

slti $7 $23 959
multu $7 $7
sw $7 10720($0)

slti $7 $22 3778
nop
multu $7 $7
sw $7 10724($0)

slti $7 $21 4000
nop
nop
multu $7 $7
sw $7 10728($0)

jalr $9, $ra
nop
exit1060:


j entrance1061
nop
entrance1061:
jal block1061
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit1061
nop
block1061:

slti $14 $21 3790
div $14 $14
sw $14 10732($0)

slti $14 $18 2568
nop
div $14 $14
sw $14 10736($0)

slti $14 $16 2211
nop
nop
div $14 $14
sw $14 10740($0)

jr $ra
nop
exit1061:


j entrance1062
nop
entrance1062:
jal block1062
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit1062
nop
block1062:

slti $10 $21 1718
divu $10 $10
sw $10 10744($0)

slti $10 $22 1077
nop
divu $10 $10
sw $10 10748($0)

slti $10 $16 860
nop
nop
divu $10 $10
sw $10 10752($0)

jalr $26, $ra
nop
exit1062:


j entrance1063
nop
entrance1063:
jal block1063
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1063
nop
block1063:

slti $13 $21 2608
sll $13 $23 17
sw $1 10756($0)

slti $13 $21 2789
nop
sll $13 $21 4
sw $1 10760($0)

slti $13 $17 910
nop
nop
sll $13 $17 16
sw $1 10764($0)

jr $ra
nop
exit1063:


j entrance1064
nop
entrance1064:
jal block1064
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit1064
nop
block1064:

slti $1 $23 3340
srl $1 $21 30
sw $1 10768($0)

slti $1 $19 84
nop
srl $1 $21 23
sw $1 10772($0)

slti $1 $16 3333
nop
nop
srl $1 $19 19
sw $1 10776($0)

jr $ra
nop
exit1064:


j entrance1065
nop
entrance1065:
jal block1065
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit1065
nop
block1065:

slti $7 $23 3014
sra $7 $16 28
sw $1 10780($0)

slti $7 $23 2021
nop
sra $7 $17 23
sw $1 10784($0)

slti $7 $19 3088
nop
nop
sra $7 $18 3
sw $1 10788($0)

jr $ra
nop
exit1065:


j entrance1066
nop
entrance1066:
jal block1066
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit1066
nop
block1066:

slti $12 $19 2594
sllv $1 $12 $12
sw $1 10792($0)

slti $12 $17 3895
nop
sllv $1 $12 $12
sw $1 10796($0)

slti $12 $16 2487
nop
nop
sllv $1 $12 $12
sw $1 10800($0)

jr $ra
nop
exit1066:


j entrance1067
nop
entrance1067:
jal block1067
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1067
nop
block1067:

slti $4 $19 1127
srlv $1 $4 $4
sw $1 10804($0)

slti $4 $16 2886
nop
srlv $1 $4 $4
sw $1 10808($0)

slti $4 $19 1319
nop
nop
srlv $1 $4 $4
sw $1 10812($0)

jr $ra
nop
exit1067:


j entrance1068
nop
entrance1068:
jal block1068
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit1068
nop
block1068:

slti $5 $23 1516
srav $1 $5 $5
sw $1 10816($0)

slti $5 $22 3854
nop
srav $1 $5 $5
sw $1 10820($0)

slti $5 $17 1094
nop
nop
srav $1 $5 $5
sw $1 10824($0)

jr $ra
nop
exit1068:


j entrance1069
nop
entrance1069:
jal block1069
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit1069
nop
block1069:

slti $6 $20 1451
and $1 $6 $6
sw $1 10828($0)

slti $6 $20 1151
nop
and $1 $6 $6
sw $1 10832($0)

slti $6 $22 1620
nop
nop
and $1 $6 $6
sw $1 10836($0)

jalr $11, $ra
nop
exit1069:


j entrance1070
nop
entrance1070:
jal block1070
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit1070
nop
block1070:

slti $1 $18 1519
or $1 $1 $1
sw $1 10840($0)

slti $1 $18 2427
nop
or $1 $1 $1
sw $1 10844($0)

slti $1 $17 2347
nop
nop
or $1 $1 $1
sw $1 10848($0)

jr $ra
nop
exit1070:


j entrance1071
nop
entrance1071:
jal block1071
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit1071
nop
block1071:

slti $13 $18 2179
xor $1 $13 $13
sw $1 10852($0)

slti $13 $21 3862
nop
xor $1 $13 $13
sw $1 10856($0)

slti $13 $21 3437
nop
nop
xor $1 $13 $13
sw $1 10860($0)

jalr $2, $ra
nop
exit1071:


j entrance1072
nop
entrance1072:
jal block1072
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1072
nop
block1072:

slti $7 $19 3861
nor $1 $7 $7
sw $1 10864($0)

slti $7 $19 3047
nop
nor $1 $7 $7
sw $1 10868($0)

slti $7 $23 1314
nop
nop
nor $1 $7 $7
sw $1 10872($0)

jalr $10, $ra
nop
exit1072:


j entrance1073
nop
entrance1073:
jal block1073
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1073
nop
block1073:

slti $9 $18 466
addi $21 $9 1312
sw $21 10876($0)

slti $9 $18 3110
nop
addi $18 $9 2022
sw $18 10880($0)

slti $9 $16 3989
nop
nop
addi $19 $9 2160
sw $19 10884($0)

jr $ra
nop
exit1073:


j entrance1074
nop
entrance1074:
jal block1074
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit1074
nop
block1074:

slti $12 $19 1687
addiu $21 $12 135
sw $21 10888($0)

slti $12 $19 1298
nop
addiu $21 $12 2324
sw $21 10892($0)

slti $12 $22 1913
nop
nop
addiu $17 $12 1220
sw $17 10896($0)

jalr $13, $ra
nop
exit1074:


j entrance1075
nop
entrance1075:
jal block1075
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit1075
nop
block1075:

slti $12 $22 1606
andi $22 $12 1097
sw $22 10900($0)

slti $12 $20 1426
nop
andi $17 $12 2416
sw $17 10904($0)

slti $12 $21 1223
nop
nop
andi $22 $12 3506
sw $22 10908($0)

jalr $8, $ra
nop
exit1075:


j entrance1076
nop
entrance1076:
jal block1076
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit1076
nop
block1076:

slti $5 $23 3307
ori $18 $5 2109
sw $18 10912($0)

slti $5 $16 2732
nop
ori $17 $5 3772
sw $17 10916($0)

slti $5 $18 3045
nop
nop
ori $19 $5 717
sw $19 10920($0)

jalr $28, $ra
nop
exit1076:


j entrance1077
nop
entrance1077:
jal block1077
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit1077
nop
block1077:

slti $1 $16 313
xori $16 $1 2099
sw $16 10924($0)

slti $1 $22 2358
nop
xori $19 $1 854
sw $19 10928($0)

slti $1 $16 1979
nop
nop
xori $16 $1 2236
sw $16 10932($0)

jr $ra
nop
exit1077:


j entrance1078
nop
entrance1078:
jal block1078
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit1078
nop
block1078:

slti $9 $17 985
lui $19 2247
sw $19 10936($0)

slti $9 $19 3107
nop
lui $17 3691
sw $17 10940($0)

slti $9 $21 2492
nop
nop
lui $22 1940
sw $22 10944($0)

jalr $26, $ra
nop
exit1078:


j entrance1079
nop
entrance1079:
jal block1079
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit1079
nop
block1079:

slti $9 $21 1518
slt $1 $9 $9
sw $1 10948($0)

slti $9 $17 1500
nop
slt $1 $9 $9
sw $1 10952($0)

slti $9 $20 646
nop
nop
slt $1 $9 $9
sw $1 10956($0)

jr $ra
nop
exit1079:


j entrance1080
nop
entrance1080:
jal block1080
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit1080
nop
block1080:

slti $8 $18 2535
slti $19 $8 1390
sw $19 10960($0)

slti $8 $17 719
nop
slti $17 $8 1607
sw $17 10964($0)

slti $8 $16 3535
nop
nop
slti $23 $8 1376
sw $23 10968($0)

jalr $1, $ra
nop
exit1080:


j entrance1081
nop
entrance1081:
jal block1081
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1081
nop
block1081:

slti $3 $16 2040
sltiu $19 $3 2984
sw $19 10972($0)

slti $3 $19 2698
nop
sltiu $16 $3 3064
sw $16 10976($0)

slti $3 $16 2468
nop
nop
sltiu $16 $3 1796
sw $16 10980($0)

jr $ra
nop
exit1081:


j entrance1082
nop
entrance1082:
jal block1082
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit1082
nop
block1082:

slti $12 $20 3136
sltu $1 $12 $12
sw $1 10984($0)

slti $12 $16 3518
nop
sltu $1 $12 $12
sw $1 10988($0)

slti $12 $23 3244
nop
nop
sltu $1 $12 $12
sw $1 10992($0)

jr $ra
nop
exit1082:


j entrance1083
nop
entrance1083:
jal block1083
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit1083
nop
block1083:

slti $2 $21 2308
mthi $2
sw $2 10996($0)

slti $2 $16 225
nop
mthi $2
sw $2 10000($0)

slti $2 $17 3974
nop
nop
mthi $2
sw $2 10004($0)

jr $ra
nop
exit1083:


j entrance1084
nop
entrance1084:
jal block1084
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit1084
nop
block1084:

slti $14 $17 3829
mtlo $14
sw $14 10008($0)

slti $14 $17 373
nop
mtlo $14
sw $14 10012($0)

slti $14 $23 2605
nop
nop
mtlo $14
sw $14 10016($0)

jr $ra
nop
exit1084: