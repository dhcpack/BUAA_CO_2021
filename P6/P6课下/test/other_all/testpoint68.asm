ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance217
nop
entrance217:
jal block217
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit217
nop
block217:

addu $4 $21 $23
sub $1 $4 $4
sw $1 2604($0)

addu $4 $17 $22
nop
sub $1 $4 $4
sw $1 2608($0)

addu $4 $21 $23
nop
nop
sub $1 $4 $4
sw $1 2612($0)

jalr $26, $ra
nop
exit217:


j entrance218
nop
entrance218:
jal block218
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit218
nop
block218:

addu $12 $16 $16
subu $1 $12 $12
sw $1 2616($0)

addu $12 $23 $17
nop
subu $1 $12 $12
sw $1 2620($0)

addu $12 $22 $16
nop
nop
subu $1 $12 $12
sw $1 2624($0)

jr $ra
nop
exit218:


j entrance219
nop
entrance219:
jal block219
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit219
nop
block219:

addu $6 $22 $19
mult $6 $6
sw $6 2628($0)

addu $6 $21 $20
nop
mult $6 $6
sw $6 2632($0)

addu $6 $22 $23
nop
nop
mult $6 $6
sw $6 2636($0)

jr $ra
nop
exit219:


j entrance220
nop
entrance220:
jal block220
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit220
nop
block220:

addu $3 $19 $20
multu $3 $3
sw $3 2640($0)

addu $3 $19 $23
nop
multu $3 $3
sw $3 2644($0)

addu $3 $18 $17
nop
nop
multu $3 $3
sw $3 2648($0)

jr $ra
nop
exit220:


j entrance221
nop
entrance221:
jal block221
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit221
nop
block221:

addu $4 $18 $19
div $4 $4
sw $4 2652($0)

addu $4 $19 $23
nop
div $4 $4
sw $4 2656($0)

addu $4 $16 $18
nop
nop
div $4 $4
sw $4 2660($0)

jr $ra
nop
exit221:


j entrance222
nop
entrance222:
jal block222
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit222
nop
block222:

addu $12 $17 $21
divu $12 $12
sw $12 2664($0)

addu $12 $18 $17
nop
divu $12 $12
sw $12 2668($0)

addu $12 $18 $18
nop
nop
divu $12 $12
sw $12 2672($0)

jr $ra
nop
exit222:


j entrance223
nop
entrance223:
jal block223
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit223
nop
block223:

addu $2 $21 $17
sll $2 $22 26
sw $1 2676($0)

addu $2 $22 $19
nop
sll $2 $22 31
sw $1 2680($0)

addu $2 $18 $21
nop
nop
sll $2 $19 17
sw $1 2684($0)

jr $ra
nop
exit223:


j entrance224
nop
entrance224:
jal block224
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit224
nop
block224:

addu $12 $23 $23
srl $12 $19 20
sw $1 2688($0)

addu $12 $20 $17
nop
srl $12 $19 5
sw $1 2692($0)

addu $12 $19 $22
nop
nop
srl $12 $18 19
sw $1 2696($0)

jr $ra
nop
exit224:


j entrance225
nop
entrance225:
jal block225
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit225
nop
block225:

addu $12 $19 $20
sra $12 $22 16
sw $1 2700($0)

addu $12 $21 $17
nop
sra $12 $20 7
sw $1 2704($0)

addu $12 $17 $16
nop
nop
sra $12 $19 6
sw $1 2708($0)

jr $ra
nop
exit225:


j entrance226
nop
entrance226:
jal block226
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit226
nop
block226:

addu $3 $22 $16
sllv $1 $3 $3
sw $1 2712($0)

addu $3 $19 $22
nop
sllv $1 $3 $3
sw $1 2716($0)

addu $3 $19 $18
nop
nop
sllv $1 $3 $3
sw $1 2720($0)

jr $ra
nop
exit226:


j entrance227
nop
entrance227:
jal block227
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit227
nop
block227:

addu $2 $22 $18
srlv $1 $2 $2
sw $1 2724($0)

addu $2 $18 $23
nop
srlv $1 $2 $2
sw $1 2728($0)

addu $2 $20 $21
nop
nop
srlv $1 $2 $2
sw $1 2732($0)

jr $ra
nop
exit227:


j entrance228
nop
entrance228:
jal block228
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit228
nop
block228:

addu $12 $20 $22
srav $1 $12 $12
sw $1 2736($0)

addu $12 $23 $17
nop
srav $1 $12 $12
sw $1 2740($0)

addu $12 $20 $21
nop
nop
srav $1 $12 $12
sw $1 2744($0)

jr $ra
nop
exit228:


j entrance229
nop
entrance229:
jal block229
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit229
nop
block229:

addu $12 $22 $22
and $1 $12 $12
sw $1 2748($0)

addu $12 $19 $23
nop
and $1 $12 $12
sw $1 2752($0)

addu $12 $23 $19
nop
nop
and $1 $12 $12
sw $1 2756($0)

jr $ra
nop
exit229:


j entrance230
nop
entrance230:
jal block230
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit230
nop
block230:

addu $3 $22 $19
or $1 $3 $3
sw $1 2760($0)

addu $3 $21 $17
nop
or $1 $3 $3
sw $1 2764($0)

addu $3 $19 $16
nop
nop
or $1 $3 $3
sw $1 2768($0)

jalr $25, $ra
nop
exit230:


j entrance231
nop
entrance231:
jal block231
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit231
nop
block231:

addu $7 $17 $21
xor $1 $7 $7
sw $1 2772($0)

addu $7 $18 $17
nop
xor $1 $7 $7
sw $1 2776($0)

addu $7 $23 $23
nop
nop
xor $1 $7 $7
sw $1 2780($0)

jr $ra
nop
exit231:


j entrance232
nop
entrance232:
jal block232
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit232
nop
block232:

addu $7 $22 $20
nor $1 $7 $7
sw $1 2784($0)

addu $7 $19 $20
nop
nor $1 $7 $7
sw $1 2788($0)

addu $7 $20 $19
nop
nop
nor $1 $7 $7
sw $1 2792($0)

jr $ra
nop
exit232:


j entrance233
nop
entrance233:
jal block233
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit233
nop
block233:

addu $14 $22 $19
addi $23 $14 2715
sw $23 2796($0)

addu $14 $19 $16
nop
addi $21 $14 1748
sw $21 2800($0)

addu $14 $17 $20
nop
nop
addi $22 $14 155
sw $22 2804($0)

jalr $15, $ra
nop
exit233:


j entrance234
nop
entrance234:
jal block234
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit234
nop
block234:

addu $10 $21 $21
addiu $21 $10 2582
sw $21 2808($0)

addu $10 $22 $23
nop
addiu $23 $10 4
sw $23 2812($0)

addu $10 $20 $21
nop
nop
addiu $18 $10 3036
sw $18 2816($0)

jalr $11, $ra
nop
exit234:


j entrance235
nop
entrance235:
jal block235
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit235
nop
block235:

addu $2 $23 $16
andi $16 $2 2322
sw $16 2820($0)

addu $2 $22 $18
nop
andi $18 $2 2730
sw $18 2824($0)

addu $2 $16 $19
nop
nop
andi $23 $2 1499
sw $23 2828($0)

jr $ra
nop
exit235:


j entrance236
nop
entrance236:
jal block236
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit236
nop
block236:

addu $5 $21 $21
ori $22 $5 429
sw $22 2832($0)

addu $5 $23 $21
nop
ori $17 $5 2792
sw $17 2836($0)

addu $5 $17 $16
nop
nop
ori $18 $5 754
sw $18 2840($0)

jalr $6, $ra
nop
exit236:


j entrance237
nop
entrance237:
jal block237
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit237
nop
block237:

addu $2 $19 $19
xori $20 $2 2983
sw $20 2844($0)

addu $2 $17 $22
nop
xori $22 $2 3190
sw $22 2848($0)

addu $2 $19 $23
nop
nop
xori $16 $2 1961
sw $16 2852($0)

jr $ra
nop
exit237:


j entrance238
nop
entrance238:
jal block238
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit238
nop
block238:

addu $1 $22 $20
lui $17 3261
sw $17 2856($0)

addu $1 $17 $16
nop
lui $17 3222
sw $17 2860($0)

addu $1 $20 $22
nop
nop
lui $23 3362
sw $23 2864($0)

jr $ra
nop
exit238:


j entrance239
nop
entrance239:
jal block239
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit239
nop
block239:

addu $10 $23 $16
slt $1 $10 $10
sw $1 2868($0)

addu $10 $21 $19
nop
slt $1 $10 $10
sw $1 2872($0)

addu $10 $20 $16
nop
nop
slt $1 $10 $10
sw $1 2876($0)

jalr $27, $ra
nop
exit239:


j entrance240
nop
entrance240:
jal block240
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit240
nop
block240:

addu $12 $22 $17
slti $20 $12 2970
sw $20 2880($0)

addu $12 $21 $20
nop
slti $17 $12 1891
sw $17 2884($0)

addu $12 $16 $16
nop
nop
slti $23 $12 2048
sw $23 2888($0)

jalr $7, $ra
nop
exit240:


j entrance241
nop
entrance241:
jal block241
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit241
nop
block241:

addu $9 $22 $16
sltiu $18 $9 2476
sw $18 2892($0)

addu $9 $20 $20
nop
sltiu $20 $9 2617
sw $20 2896($0)

addu $9 $22 $23
nop
nop
sltiu $19 $9 539
sw $19 2900($0)

jr $ra
nop
exit241:


j entrance242
nop
entrance242:
jal block242
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit242
nop
block242:

addu $7 $17 $20
sltu $1 $7 $7
sw $1 2904($0)

addu $7 $21 $17
nop
sltu $1 $7 $7
sw $1 2908($0)

addu $7 $21 $16
nop
nop
sltu $1 $7 $7
sw $1 2912($0)

jalr $16, $ra
nop
exit242:


j entrance243
nop
entrance243:
jal block243
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit243
nop
block243:

addu $2 $16 $23
mthi $2
sw $2 2916($0)

addu $2 $21 $17
nop
mthi $2
sw $2 2920($0)

addu $2 $22 $21
nop
nop
mthi $2
sw $2 2924($0)

jr $ra
nop
exit243:


j entrance244
nop
entrance244:
jal block244
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit244
nop
block244:

addu $9 $20 $19
mtlo $9
sw $9 2928($0)

addu $9 $22 $18
nop
mtlo $9
sw $9 2932($0)

addu $9 $18 $22
nop
nop
mtlo $9
sw $9 2936($0)

jr $ra
nop
exit244:

ori $16 $0 267
ori $17 $0 1609
ori $18 $0 943
ori $19 $0 3446
ori $20 $0 2988
ori $21 $0 391
ori $22 $0 2373
ori $23 $0 2072

j entrance245
nop
entrance245:
jal block245
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit245
nop
block245:

sub $5 $18 $22
lb $17 2936($0)
sw $17 2940($0)

sub $5 $22 $20
nop
lb $18 2940($0)
sw $18 2944($0)

sub $5 $17 $17
nop
nop
lb $18 156($0)
sw $18 2948($0)

jr $ra
nop
exit245:


j entrance246
nop
entrance246:
jal block246
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit246
nop
block246:

sub $10 $16 $21
lbu $19 2948($0)
sw $19 2952($0)

sub $10 $23 $16
nop
lbu $18 328($0)
sw $18 2956($0)

sub $10 $20 $23
nop
nop
lbu $23 2956($0)
sw $23 2960($0)

jr $ra
nop
exit246:


j entrance247
nop
entrance247:
jal block247
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit247
nop
block247:

sub $9 $16 $16
lh $17 2960($0)
sw $17 2964($0)

sub $9 $17 $17
nop
lh $22 2964($0)
sw $22 2968($0)

sub $9 $18 $20
nop
nop
lh $22 1816($0)
sw $22 2972($0)

jalr $24, $ra
nop
exit247: