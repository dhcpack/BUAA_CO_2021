ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance186
nop
entrance186:
jal block186
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit186
nop
block186:

add $10 $20 $18
div $10 $10
sw $10 2232($0)

add $10 $21 $21
nop
div $10 $10
sw $10 2236($0)

add $10 $16 $18
nop
nop
div $10 $10
sw $10 2240($0)

jalr $7, $ra
nop
exit186:


j entrance187
nop
entrance187:
jal block187
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit187
nop
block187:

add $11 $18 $18
divu $11 $11
sw $11 2244($0)

add $11 $23 $22
nop
divu $11 $11
sw $11 2248($0)

add $11 $19 $23
nop
nop
divu $11 $11
sw $11 2252($0)

jr $ra
nop
exit187:


j entrance188
nop
entrance188:
jal block188
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit188
nop
block188:

add $13 $20 $19
sll $13 $18 9
sw $1 2256($0)

add $13 $18 $23
nop
sll $13 $17 15
sw $1 2260($0)

add $13 $19 $17
nop
nop
sll $13 $23 27
sw $1 2264($0)

jr $ra
nop
exit188:


j entrance189
nop
entrance189:
jal block189
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit189
nop
block189:

add $12 $18 $19
srl $12 $23 3
sw $1 2268($0)

add $12 $18 $16
nop
srl $12 $23 12
sw $1 2272($0)

add $12 $17 $21
nop
nop
srl $12 $23 0
sw $1 2276($0)

jalr $6, $ra
nop
exit189:


j entrance190
nop
entrance190:
jal block190
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit190
nop
block190:

add $5 $21 $22
sra $5 $18 16
sw $1 2280($0)

add $5 $19 $23
nop
sra $5 $20 17
sw $1 2284($0)

add $5 $20 $19
nop
nop
sra $5 $18 6
sw $1 2288($0)

jalr $5, $ra
nop
exit190:


j entrance191
nop
entrance191:
jal block191
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit191
nop
block191:

add $14 $22 $20
sllv $1 $14 $14
sw $1 2292($0)

add $14 $17 $16
nop
sllv $1 $14 $14
sw $1 2296($0)

add $14 $19 $18
nop
nop
sllv $1 $14 $14
sw $1 2300($0)

jr $ra
nop
exit191:


j entrance192
nop
entrance192:
jal block192
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit192
nop
block192:

add $12 $17 $16
srlv $1 $12 $12
sw $1 2304($0)

add $12 $20 $16
nop
srlv $1 $12 $12
sw $1 2308($0)

add $12 $18 $21
nop
nop
srlv $1 $12 $12
sw $1 2312($0)

jr $ra
nop
exit192:


j entrance193
nop
entrance193:
jal block193
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit193
nop
block193:

add $8 $19 $18
srav $1 $8 $8
sw $1 2316($0)

add $8 $21 $23
nop
srav $1 $8 $8
sw $1 2320($0)

add $8 $21 $23
nop
nop
srav $1 $8 $8
sw $1 2324($0)

jalr $8, $ra
nop
exit193:


j entrance194
nop
entrance194:
jal block194
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit194
nop
block194:

add $9 $22 $21
and $1 $9 $9
sw $1 2328($0)

add $9 $16 $21
nop
and $1 $9 $9
sw $1 2332($0)

add $9 $21 $23
nop
nop
and $1 $9 $9
sw $1 2336($0)

jr $ra
nop
exit194:


j entrance195
nop
entrance195:
jal block195
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit195
nop
block195:

add $15 $23 $16
or $1 $15 $15
sw $1 2340($0)

add $15 $21 $17
nop
or $1 $15 $15
sw $1 2344($0)

add $15 $18 $18
nop
nop
or $1 $15 $15
sw $1 2348($0)

jr $ra
nop
exit195:


j entrance196
nop
entrance196:
jal block196
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit196
nop
block196:

add $8 $22 $16
xor $1 $8 $8
sw $1 2352($0)

add $8 $19 $19
nop
xor $1 $8 $8
sw $1 2356($0)

add $8 $17 $18
nop
nop
xor $1 $8 $8
sw $1 2360($0)

jr $ra
nop
exit196:


j entrance197
nop
entrance197:
jal block197
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit197
nop
block197:

add $9 $22 $21
nor $1 $9 $9
sw $1 2364($0)

add $9 $18 $22
nop
nor $1 $9 $9
sw $1 2368($0)

add $9 $23 $19
nop
nop
nor $1 $9 $9
sw $1 2372($0)

jr $ra
nop
exit197:


j entrance198
nop
entrance198:
jal block198
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit198
nop
block198:

add $3 $18 $18
addi $23 $3 3574
sw $23 2376($0)

add $3 $20 $22
nop
addi $22 $3 3771
sw $22 2380($0)

add $3 $22 $23
nop
nop
addi $19 $3 221
sw $19 2384($0)

jr $ra
nop
exit198:


j entrance199
nop
entrance199:
jal block199
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit199
nop
block199:

add $10 $21 $21
addiu $19 $10 1183
sw $19 2388($0)

add $10 $18 $18
nop
addiu $17 $10 3588
sw $17 2392($0)

add $10 $21 $16
nop
nop
addiu $17 $10 1184
sw $17 2396($0)

jr $ra
nop
exit199:


j entrance200
nop
entrance200:
jal block200
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit200
nop
block200:

add $9 $16 $19
andi $16 $9 2649
sw $16 2400($0)

add $9 $18 $19
nop
andi $21 $9 2195
sw $21 2404($0)

add $9 $18 $19
nop
nop
andi $22 $9 3473
sw $22 2408($0)

jalr $11, $ra
nop
exit200:


j entrance201
nop
entrance201:
jal block201
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit201
nop
block201:

add $1 $18 $19
ori $18 $1 3614
sw $18 2412($0)

add $1 $23 $16
nop
ori $16 $1 1209
sw $16 2416($0)

add $1 $20 $18
nop
nop
ori $18 $1 3774
sw $18 2420($0)

jalr $14, $ra
nop
exit201:


j entrance202
nop
entrance202:
jal block202
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit202
nop
block202:

add $10 $16 $16
xori $23 $10 395
sw $23 2424($0)

add $10 $18 $16
nop
xori $20 $10 2516
sw $20 2428($0)

add $10 $18 $19
nop
nop
xori $17 $10 902
sw $17 2432($0)

jr $ra
nop
exit202:


j entrance203
nop
entrance203:
jal block203
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit203
nop
block203:

add $7 $22 $16
lui $18 2147
sw $18 2436($0)

add $7 $18 $17
nop
lui $16 2020
sw $16 2440($0)

add $7 $17 $16
nop
nop
lui $21 1423
sw $21 2444($0)

jalr $9, $ra
nop
exit203:


j entrance204
nop
entrance204:
jal block204
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit204
nop
block204:

add $2 $23 $22
slt $1 $2 $2
sw $1 2448($0)

add $2 $18 $19
nop
slt $1 $2 $2
sw $1 2452($0)

add $2 $17 $23
nop
nop
slt $1 $2 $2
sw $1 2456($0)

jr $ra
nop
exit204:


j entrance205
nop
entrance205:
jal block205
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit205
nop
block205:

add $10 $23 $18
slti $19 $10 4050
sw $19 2460($0)

add $10 $23 $16
nop
slti $21 $10 2029
sw $21 2464($0)

add $10 $21 $16
nop
nop
slti $19 $10 984
sw $19 2468($0)

jr $ra
nop
exit205:


j entrance206
nop
entrance206:
jal block206
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit206
nop
block206:

add $1 $21 $18
sltiu $18 $1 3522
sw $18 2472($0)

add $1 $17 $16
nop
sltiu $19 $1 915
sw $19 2476($0)

add $1 $21 $22
nop
nop
sltiu $23 $1 3130
sw $23 2480($0)

jalr $28, $ra
nop
exit206:


j entrance207
nop
entrance207:
jal block207
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit207
nop
block207:

add $8 $22 $17
sltu $1 $8 $8
sw $1 2484($0)

add $8 $19 $23
nop
sltu $1 $8 $8
sw $1 2488($0)

add $8 $20 $18
nop
nop
sltu $1 $8 $8
sw $1 2492($0)

jr $ra
nop
exit207:


j entrance208
nop
entrance208:
jal block208
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit208
nop
block208:

add $11 $22 $22
mthi $11
sw $11 2496($0)

add $11 $22 $18
nop
mthi $11
sw $11 2500($0)

add $11 $16 $17
nop
nop
mthi $11
sw $11 2504($0)

jalr $3, $ra
nop
exit208:


j entrance209
nop
entrance209:
jal block209
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit209
nop
block209:

add $15 $23 $16
mtlo $15
sw $15 2508($0)

add $15 $18 $16
nop
mtlo $15
sw $15 2512($0)

add $15 $23 $18
nop
nop
mtlo $15
sw $15 2516($0)

jalr $18, $ra
nop
exit209:

ori $16 $0 3974
ori $17 $0 851
ori $18 $0 2088
ori $19 $0 1146
ori $20 $0 452
ori $21 $0 1111
ori $22 $0 4279
ori $23 $0 569

j entrance210
nop
entrance210:
jal block210
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit210
nop
block210:

addu $9 $21 $16
lb $23 2516($0)
sw $23 2520($0)

addu $9 $17 $19
nop
lb $21 516($0)
sw $21 2524($0)

addu $9 $23 $17
nop
nop
lb $22 1460($0)
sw $22 2528($0)

jr $ra
nop
exit210:


j entrance211
nop
entrance211:
jal block211
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit211
nop
block211:

addu $10 $18 $21
lbu $18 2528($0)
sw $18 2532($0)

addu $10 $22 $19
nop
lbu $16 2532($0)
sw $16 2536($0)

addu $10 $23 $17
nop
nop
lbu $17 2536($0)
sw $17 2540($0)

jr $ra
nop
exit211:


j entrance212
nop
entrance212:
jal block212
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit212
nop
block212:

addu $2 $18 $17
lh $18 1768($0)
sw $18 2544($0)

addu $2 $23 $18
nop
lh $17 2544($0)
sw $17 2548($0)

addu $2 $19 $16
nop
nop
lh $20 2548($0)
sw $20 2552($0)

jr $ra
nop
exit212:


j entrance213
nop
entrance213:
jal block213
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit213
nop
block213:

addu $12 $17 $19
lhu $21 960($0)
sw $21 2556($0)

addu $12 $21 $20
nop
lhu $22 2556($0)
sw $22 2560($0)

addu $12 $17 $17
nop
nop
lhu $18 2560($0)
sw $18 2564($0)

jr $ra
nop
exit213:


j entrance214
nop
entrance214:
jal block214
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit214
nop
block214:

addu $14 $20 $18
lw $20 1580($0)
sw $20 2568($0)

addu $14 $21 $22
nop
lw $17 2568($0)
sw $17 2572($0)

addu $14 $18 $17
nop
nop
lw $20 1560($0)
sw $20 2576($0)

jr $ra
nop
exit214:


j entrance215
nop
entrance215:
jal block215
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit215
nop
block215:

addu $6 $23 $20
add $1 $6 $6
sw $1 2580($0)

addu $6 $22 $19
nop
add $1 $6 $6
sw $1 2584($0)

addu $6 $23 $18
nop
nop
add $1 $6 $6
sw $1 2588($0)

jr $ra
nop
exit215:


j entrance216
nop
entrance216:
jal block216
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit216
nop
block216:

addu $6 $16 $20
addu $1 $6 $6
sw $1 2592($0)

addu $6 $23 $22
nop
addu $1 $6 $6
sw $1 2596($0)

addu $6 $22 $19
nop
nop
addu $1 $6 $6
sw $1 2600($0)

jalr $21, $ra
nop
exit216: