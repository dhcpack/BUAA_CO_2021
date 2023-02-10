ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance124
nop
entrance124:
jal block124
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit124
nop
block124:

lhu $6 1484($0)
and $1 $6 $6
sw $1 1488($0)

lhu $6 1488($0)
nop
and $1 $6 $6
sw $1 1492($0)

lhu $6 1492($0)
nop
nop
and $1 $6 $6
sw $1 1496($0)

jr $ra
nop
exit124:


j entrance125
nop
entrance125:
jal block125
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit125
nop
block125:

lhu $14 1496($0)
or $1 $14 $14
sw $1 1500($0)

lhu $14 1500($0)
nop
or $1 $14 $14
sw $1 1504($0)

lhu $14 1504($0)
nop
nop
or $1 $14 $14
sw $1 1508($0)

jr $ra
nop
exit125:


j entrance126
nop
entrance126:
jal block126
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit126
nop
block126:

lhu $3 1184($0)
xor $1 $3 $3
sw $1 1512($0)

lhu $3 1512($0)
nop
xor $1 $3 $3
sw $1 1516($0)

lhu $3 1516($0)
nop
nop
xor $1 $3 $3
sw $1 1520($0)

jalr $21, $ra
nop
exit126:


j entrance127
nop
entrance127:
jal block127
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit127
nop
block127:

lhu $2 1520($0)
nor $1 $2 $2
sw $1 1524($0)

lhu $2 1524($0)
nop
nor $1 $2 $2
sw $1 1528($0)

lhu $2 1528($0)
nop
nop
nor $1 $2 $2
sw $1 1532($0)

jr $ra
nop
exit127:


j entrance128
nop
entrance128:
jal block128
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit128
nop
block128:

lhu $2 1532($0)
addi $19 $2 3646
sw $19 1536($0)

lhu $2 1536($0)
nop
addi $19 $2 1708
sw $19 1540($0)

lhu $2 1540($0)
nop
nop
addi $20 $2 2396
sw $20 1544($0)

jalr $5, $ra
nop
exit128:


j entrance129
nop
entrance129:
jal block129
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit129
nop
block129:

lhu $9 1544($0)
addiu $16 $9 2209
sw $16 1548($0)

lhu $9 1548($0)
nop
addiu $16 $9 3107
sw $16 1552($0)

lhu $9 1552($0)
nop
nop
addiu $17 $9 1842
sw $17 1556($0)

jr $ra
nop
exit129:


j entrance130
nop
entrance130:
jal block130
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit130
nop
block130:

lhu $6 1556($0)
andi $17 $6 2831
sw $17 1560($0)

lhu $6 1560($0)
nop
andi $17 $6 1322
sw $17 1564($0)

lhu $6 1564($0)
nop
nop
andi $23 $6 3437
sw $23 1568($0)

jr $ra
nop
exit130:


j entrance131
nop
entrance131:
jal block131
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit131
nop
block131:

lhu $1 1568($0)
ori $16 $1 3776
sw $16 1572($0)

lhu $1 796($0)
nop
ori $22 $1 2492
sw $22 1576($0)

lhu $1 1576($0)
nop
nop
ori $23 $1 1646
sw $23 1580($0)

jr $ra
nop
exit131:


j entrance132
nop
entrance132:
jal block132
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit132
nop
block132:

lhu $15 1580($0)
xori $20 $15 3393
sw $20 1584($0)

lhu $15 1584($0)
nop
xori $17 $15 1658
sw $17 1588($0)

lhu $15 1588($0)
nop
nop
xori $20 $15 3526
sw $20 1592($0)

jr $ra
nop
exit132:


j entrance133
nop
entrance133:
jal block133
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit133
nop
block133:

lhu $11 932($0)
lui $22 3919
sw $22 1596($0)

lhu $11 1596($0)
nop
lui $19 1669
sw $19 1600($0)

lhu $11 1600($0)
nop
nop
lui $17 1255
sw $17 1604($0)

jr $ra
nop
exit133:


j entrance134
nop
entrance134:
jal block134
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit134
nop
block134:

lhu $13 1604($0)
slt $1 $13 $13
sw $1 1608($0)

lhu $13 1608($0)
nop
slt $1 $13 $13
sw $1 1612($0)

lhu $13 1612($0)
nop
nop
slt $1 $13 $13
sw $1 1616($0)

jr $ra
nop
exit134:


j entrance135
nop
entrance135:
jal block135
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit135
nop
block135:

lhu $4 1616($0)
slti $20 $4 2079
sw $20 1620($0)

lhu $4 1620($0)
nop
slti $20 $4 416
sw $20 1624($0)

lhu $4 1624($0)
nop
nop
slti $18 $4 1481
sw $18 1628($0)

jalr $17, $ra
nop
exit135:


j entrance136
nop
entrance136:
jal block136
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit136
nop
block136:

lhu $14 1628($0)
sltiu $23 $14 54
sw $23 1632($0)

lhu $14 1632($0)
nop
sltiu $22 $14 3510
sw $22 1636($0)

lhu $14 1636($0)
nop
nop
sltiu $21 $14 2302
sw $21 1640($0)

jr $ra
nop
exit136:


j entrance137
nop
entrance137:
jal block137
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit137
nop
block137:

lhu $3 1420($0)
sltu $1 $3 $3
sw $1 1644($0)

lhu $3 1644($0)
nop
sltu $1 $3 $3
sw $1 1648($0)

lhu $3 892($0)
nop
nop
sltu $1 $3 $3
sw $1 1652($0)

jr $ra
nop
exit137:


j entrance138
nop
entrance138:
jal block138
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit138
nop
block138:

lhu $9 1652($0)
mthi $9
sw $9 1656($0)

lhu $9 1656($0)
nop
mthi $9
sw $9 1660($0)

lhu $9 1660($0)
nop
nop
mthi $9
sw $9 1664($0)

jr $ra
nop
exit138:


j entrance139
nop
entrance139:
jal block139
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit139
nop
block139:

lhu $7 1664($0)
mtlo $7
sw $7 1668($0)

lhu $7 1492($0)
nop
mtlo $7
sw $7 1672($0)

lhu $7 1672($0)
nop
nop
mtlo $7
sw $7 1676($0)

jr $ra
nop
exit139:

ori $16 $0 1167
ori $17 $0 4451
ori $18 $0 1704
ori $19 $0 1103
ori $20 $0 2021
ori $21 $0 417
ori $22 $0 2593
ori $23 $0 4410

j entrance140
nop
entrance140:
jal block140
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit140
nop
block140:

lw $3 1676($0)
lb $22 368($0)
sw $22 1680($0)

lw $3 1680($0)
nop
lb $18 1388($0)
sw $18 1684($0)

lw $3 1684($0)
nop
nop
lb $21 1684($0)
sw $21 1688($0)

jalr $7, $ra
nop
exit140:


j entrance141
nop
entrance141:
jal block141
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit141
nop
block141:

lw $4 1688($0)
lbu $23 1428($0)
sw $23 1692($0)

lw $4 1692($0)
nop
lbu $19 900($0)
sw $19 1696($0)

lw $4 1696($0)
nop
nop
lbu $18 1696($0)
sw $18 1700($0)

jr $ra
nop
exit141:


j entrance142
nop
entrance142:
jal block142
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit142
nop
block142:

lw $5 680($0)
lh $20 1700($0)
sw $20 1704($0)

lw $5 1704($0)
nop
lh $23 1704($0)
sw $23 1708($0)

lw $5 1708($0)
nop
nop
lh $21 1708($0)
sw $21 1712($0)

jalr $24, $ra
nop
exit142:


j entrance143
nop
entrance143:
jal block143
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit143
nop
block143:

lw $8 1712($0)
lhu $17 1712($0)
sw $17 1716($0)

lw $8 1716($0)
nop
lhu $20 1716($0)
sw $20 1720($0)

lw $8 1720($0)
nop
nop
lhu $19 1720($0)
sw $19 1724($0)

jalr $3, $ra
nop
exit143:


j entrance144
nop
entrance144:
jal block144
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit144
nop
block144:

lw $5 1724($0)
lw $20 1724($0)
sw $20 1728($0)

lw $5 1728($0)
nop
lw $20 1728($0)
sw $20 1732($0)

lw $5 1560($0)
nop
nop
lw $22 1708($0)
sw $22 1736($0)

jr $ra
nop
exit144:


j entrance145
nop
entrance145:
jal block145
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit145
nop
block145:

lw $2 1736($0)
add $1 $2 $2
sw $1 1740($0)

lw $2 1740($0)
nop
add $1 $2 $2
sw $1 1744($0)

lw $2 1744($0)
nop
nop
add $1 $2 $2
sw $1 1748($0)

jr $ra
nop
exit145:


j entrance146
nop
entrance146:
jal block146
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit146
nop
block146:

lw $5 1748($0)
addu $1 $5 $5
sw $1 1752($0)

lw $5 184($0)
nop
addu $1 $5 $5
sw $1 1756($0)

lw $5 1756($0)
nop
nop
addu $1 $5 $5
sw $1 1760($0)

jr $ra
nop
exit146:


j entrance147
nop
entrance147:
jal block147
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit147
nop
block147:

lw $3 1760($0)
sub $1 $3 $3
sw $1 1764($0)

lw $3 1764($0)
nop
sub $1 $3 $3
sw $1 1768($0)

lw $3 1768($0)
nop
nop
sub $1 $3 $3
sw $1 1772($0)

jr $ra
nop
exit147:


j entrance148
nop
entrance148:
jal block148
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit148
nop
block148:

lw $8 1772($0)
subu $1 $8 $8
sw $1 1776($0)

lw $8 1776($0)
nop
subu $1 $8 $8
sw $1 1780($0)

lw $8 208($0)
nop
nop
subu $1 $8 $8
sw $1 1784($0)

jr $ra
nop
exit148:


j entrance149
nop
entrance149:
jal block149
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit149
nop
block149:

lw $12 1784($0)
mult $12 $12
sw $12 1788($0)

lw $12 1788($0)
nop
mult $12 $12
sw $12 1792($0)

lw $12 108($0)
nop
nop
mult $12 $12
sw $12 1796($0)

jr $ra
nop
exit149:


j entrance150
nop
entrance150:
jal block150
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit150
nop
block150:

lw $9 1796($0)
multu $9 $9
sw $9 1800($0)

lw $9 1800($0)
nop
multu $9 $9
sw $9 1804($0)

lw $9 1804($0)
nop
nop
multu $9 $9
sw $9 1808($0)

jr $ra
nop
exit150:


j entrance151
nop
entrance151:
jal block151
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit151
nop
block151:

lw $6 1592($0)
div $6 $6
sw $6 1812($0)

lw $6 372($0)
nop
div $6 $6
sw $6 1816($0)

lw $6 1816($0)
nop
nop
div $6 $6
sw $6 1820($0)

jr $ra
nop
exit151:


j entrance152
nop
entrance152:
jal block152
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit152
nop
block152:

lw $6 1820($0)
divu $6 $6
sw $6 1824($0)

lw $6 1824($0)
nop
divu $6 $6
sw $6 1828($0)

lw $6 648($0)
nop
nop
divu $6 $6
sw $6 1832($0)

jr $ra
nop
exit152:


j entrance153
nop
entrance153:
jal block153
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit153
nop
block153:

lw $2 176($0)
sll $2 $19 11
sw $1 1836($0)

lw $2 1836($0)
nop
sll $2 $23 23
sw $1 1840($0)

lw $2 1840($0)
nop
nop
sll $2 $16 9
sw $1 1844($0)

jalr $26, $ra
nop
exit153:


j entrance154
nop
entrance154:
jal block154
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit154
nop
block154:

lw $3 1844($0)
srl $3 $17 1
sw $1 1848($0)

lw $3 24($0)
nop
srl $3 $20 28
sw $1 1852($0)

lw $3 1852($0)
nop
nop
srl $3 $18 26
sw $1 1856($0)

jalr $10, $ra
nop
exit154: