ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance310
nop
entrance310:
jal block310
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit310
nop
block310:

subu $7 $20 $20
slti $18 $7 1337
sw $18 3720($0)

subu $7 $20 $18
nop
slti $16 $7 2347
sw $16 3724($0)

subu $7 $22 $23
nop
nop
slti $18 $7 613
sw $18 3728($0)

jalr $6, $ra
nop
exit310:


j entrance311
nop
entrance311:
jal block311
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit311
nop
block311:

subu $12 $21 $23
sltiu $23 $12 450
sw $23 3732($0)

subu $12 $23 $17
nop
sltiu $23 $12 767
sw $23 3736($0)

subu $12 $20 $21
nop
nop
sltiu $16 $12 3508
sw $16 3740($0)

jr $ra
nop
exit311:


j entrance312
nop
entrance312:
jal block312
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit312
nop
block312:

subu $1 $18 $18
sltu $1 $1 $1
sw $1 3744($0)

subu $1 $17 $17
nop
sltu $1 $1 $1
sw $1 3748($0)

subu $1 $18 $21
nop
nop
sltu $1 $1 $1
sw $1 3752($0)

jr $ra
nop
exit312:


j entrance313
nop
entrance313:
jal block313
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit313
nop
block313:

subu $8 $22 $16
mthi $8
sw $8 3756($0)

subu $8 $21 $20
nop
mthi $8
sw $8 3760($0)

subu $8 $21 $17
nop
nop
mthi $8
sw $8 3764($0)

jr $ra
nop
exit313:


j entrance314
nop
entrance314:
jal block314
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit314
nop
block314:

subu $7 $16 $21
mtlo $7
sw $7 3768($0)

subu $7 $17 $22
nop
mtlo $7
sw $7 3772($0)

subu $7 $22 $20
nop
nop
mtlo $7
sw $7 3776($0)

jr $ra
nop
exit314:

ori $16 $0 2771
ori $17 $0 4071
ori $18 $0 3554
ori $19 $0 323
ori $20 $0 3687
ori $21 $0 404
ori $22 $0 1002
ori $23 $0 2087

j entrance315
nop
entrance315:
jal block315
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit315
nop
block315:

mult $21 $18
mfhi $8
mflo $8
lb $16 172($0)
sw $16 3780($0)

mult $21 $23
mfhi $8
mflo $8
nop
lb $21 3780($0)
sw $21 3784($0)

mult $16 $22
mfhi $8
mflo $8
nop
nop
lb $16 3784($0)
sw $16 3788($0)

jr $ra
nop
exit315:


j entrance316
nop
entrance316:
jal block316
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit316
nop
block316:

mult $17 $22
mfhi $15
mflo $15
lbu $16 1524($0)
sw $16 3792($0)

mult $17 $16
mfhi $15
mflo $15
nop
lbu $23 3792($0)
sw $23 3796($0)

mult $19 $22
mfhi $15
mflo $15
nop
nop
lbu $17 624($0)
sw $17 3800($0)

jr $ra
nop
exit316:


j entrance317
nop
entrance317:
jal block317
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit317
nop
block317:

mult $21 $21
mfhi $13
mflo $13
lh $19 3800($0)
sw $19 3804($0)

mult $17 $22
mfhi $13
mflo $13
nop
lh $18 3804($0)
sw $18 3808($0)

mult $23 $23
mfhi $13
mflo $13
nop
nop
lh $22 3808($0)
sw $22 3812($0)

jalr $24, $ra
nop
exit317:


j entrance318
nop
entrance318:
jal block318
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit318
nop
block318:

mult $23 $20
mfhi $1
mflo $1
lhu $16 3812($0)
sw $16 3816($0)

mult $18 $21
mfhi $1
mflo $1
nop
lhu $18 128($0)
sw $18 3820($0)

mult $23 $17
mfhi $1
mflo $1
nop
nop
lhu $16 3820($0)
sw $16 3824($0)

jr $ra
nop
exit318:


j entrance319
nop
entrance319:
jal block319
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit319
nop
block319:

mult $18 $20
mfhi $10
mflo $10
lw $23 1340($0)
sw $23 3828($0)

mult $18 $19
mfhi $10
mflo $10
nop
lw $20 3828($0)
sw $20 3832($0)

mult $22 $19
mfhi $10
mflo $10
nop
nop
lw $17 3832($0)
sw $17 3836($0)

jr $ra
nop
exit319:


j entrance320
nop
entrance320:
jal block320
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit320
nop
block320:

mult $22 $23
mfhi $15
mflo $15
add $1 $15 $15
sw $1 3840($0)

mult $16 $20
mfhi $15
mflo $15
nop
add $1 $15 $15
sw $1 3844($0)

mult $20 $23
mfhi $15
mflo $15
nop
nop
add $1 $15 $15
sw $1 3848($0)

jr $ra
nop
exit320:


j entrance321
nop
entrance321:
jal block321
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit321
nop
block321:

mult $22 $22
mfhi $13
mflo $13
addu $1 $13 $13
sw $1 3852($0)

mult $16 $22
mfhi $13
mflo $13
nop
addu $1 $13 $13
sw $1 3856($0)

mult $17 $21
mfhi $13
mflo $13
nop
nop
addu $1 $13 $13
sw $1 3860($0)

jalr $3, $ra
nop
exit321:


j entrance322
nop
entrance322:
jal block322
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit322
nop
block322:

mult $19 $22
mfhi $2
mflo $2
sub $1 $2 $2
sw $1 3864($0)

mult $17 $17
mfhi $2
mflo $2
nop
sub $1 $2 $2
sw $1 3868($0)

mult $17 $16
mfhi $2
mflo $2
nop
nop
sub $1 $2 $2
sw $1 3872($0)

jr $ra
nop
exit322:


j entrance323
nop
entrance323:
jal block323
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit323
nop
block323:

mult $17 $23
mfhi $8
mflo $8
subu $1 $8 $8
sw $1 3876($0)

mult $19 $22
mfhi $8
mflo $8
nop
subu $1 $8 $8
sw $1 3880($0)

mult $21 $19
mfhi $8
mflo $8
nop
nop
subu $1 $8 $8
sw $1 3884($0)

jr $ra
nop
exit323:


j entrance324
nop
entrance324:
jal block324
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit324
nop
block324:

mult $17 $17
mfhi $4
mflo $4
mult $4 $4
sw $4 3888($0)

mult $21 $21
mfhi $4
mflo $4
nop
mult $4 $4
sw $4 3892($0)

mult $18 $22
mfhi $4
mflo $4
nop
nop
mult $4 $4
sw $4 3896($0)

jr $ra
nop
exit324:


j entrance325
nop
entrance325:
jal block325
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit325
nop
block325:

mult $20 $21
mfhi $10
mflo $10
multu $10 $10
sw $10 3900($0)

mult $16 $17
mfhi $10
mflo $10
nop
multu $10 $10
sw $10 3904($0)

mult $20 $23
mfhi $10
mflo $10
nop
nop
multu $10 $10
sw $10 3908($0)

jalr $9, $ra
nop
exit325:


j entrance326
nop
entrance326:
jal block326
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit326
nop
block326:

mult $20 $22
mfhi $4
mflo $4
div $4 $4
sw $4 3912($0)

mult $23 $23
mfhi $4
mflo $4
nop
div $4 $4
sw $4 3916($0)

mult $23 $18
mfhi $4
mflo $4
nop
nop
div $4 $4
sw $4 3920($0)

jr $ra
nop
exit326:


j entrance327
nop
entrance327:
jal block327
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit327
nop
block327:

mult $20 $18
mfhi $14
mflo $14
divu $14 $14
sw $14 3924($0)

mult $23 $21
mfhi $14
mflo $14
nop
divu $14 $14
sw $14 3928($0)

mult $17 $20
mfhi $14
mflo $14
nop
nop
divu $14 $14
sw $14 3932($0)

jr $ra
nop
exit327:


j entrance328
nop
entrance328:
jal block328
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit328
nop
block328:

mult $16 $20
mfhi $14
mflo $14
sll $14 $22 7
sw $1 3936($0)

mult $23 $19
mfhi $14
mflo $14
nop
sll $14 $16 0
sw $1 3940($0)

mult $17 $18
mfhi $14
mflo $14
nop
nop
sll $14 $17 21
sw $1 3944($0)

jalr $3, $ra
nop
exit328:


j entrance329
nop
entrance329:
jal block329
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit329
nop
block329:

mult $21 $22
mfhi $2
mflo $2
srl $2 $21 3
sw $1 3948($0)

mult $20 $19
mfhi $2
mflo $2
nop
srl $2 $18 21
sw $1 3952($0)

mult $18 $17
mfhi $2
mflo $2
nop
nop
srl $2 $21 13
sw $1 3956($0)

jr $ra
nop
exit329:


j entrance330
nop
entrance330:
jal block330
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit330
nop
block330:

mult $20 $18
mfhi $6
mflo $6
sra $6 $17 4
sw $1 3960($0)

mult $16 $20
mfhi $6
mflo $6
nop
sra $6 $22 5
sw $1 3964($0)

mult $17 $17
mfhi $6
mflo $6
nop
nop
sra $6 $17 12
sw $1 3968($0)

jalr $25, $ra
nop
exit330:


j entrance331
nop
entrance331:
jal block331
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit331
nop
block331:

mult $20 $16
mfhi $12
mflo $12
sllv $1 $12 $12
sw $1 3972($0)

mult $18 $20
mfhi $12
mflo $12
nop
sllv $1 $12 $12
sw $1 3976($0)

mult $22 $19
mfhi $12
mflo $12
nop
nop
sllv $1 $12 $12
sw $1 3980($0)

jr $ra
nop
exit331:


j entrance332
nop
entrance332:
jal block332
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit332
nop
block332:

mult $20 $20
mfhi $10
mflo $10
srlv $1 $10 $10
sw $1 3984($0)

mult $23 $21
mfhi $10
mflo $10
nop
srlv $1 $10 $10
sw $1 3988($0)

mult $16 $18
mfhi $10
mflo $10
nop
nop
srlv $1 $10 $10
sw $1 3992($0)

jalr $3, $ra
nop
exit332:


j entrance333
nop
entrance333:
jal block333
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit333
nop
block333:

mult $18 $22
mfhi $6
mflo $6
srav $1 $6 $6
sw $1 3996($0)

mult $17 $21
mfhi $6
mflo $6
nop
srav $1 $6 $6
sw $1 4000($0)

mult $22 $23
mfhi $6
mflo $6
nop
nop
srav $1 $6 $6
sw $1 4004($0)

jr $ra
nop
exit333:


j entrance334
nop
entrance334:
jal block334
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit334
nop
block334:

mult $20 $17
mfhi $12
mflo $12
and $1 $12 $12
sw $1 4008($0)

mult $23 $17
mfhi $12
mflo $12
nop
and $1 $12 $12
sw $1 4012($0)

mult $19 $20
mfhi $12
mflo $12
nop
nop
and $1 $12 $12
sw $1 4016($0)

jalr $2, $ra
nop
exit334:


j entrance335
nop
entrance335:
jal block335
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit335
nop
block335:

mult $19 $16
mfhi $11
mflo $11
or $1 $11 $11
sw $1 4020($0)

mult $20 $21
mfhi $11
mflo $11
nop
or $1 $11 $11
sw $1 4024($0)

mult $16 $16
mfhi $11
mflo $11
nop
nop
or $1 $11 $11
sw $1 4028($0)

jr $ra
nop
exit335:


j entrance336
nop
entrance336:
jal block336
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit336
nop
block336:

mult $16 $20
mfhi $4
mflo $4
xor $1 $4 $4
sw $1 4032($0)

mult $20 $17
mfhi $4
mflo $4
nop
xor $1 $4 $4
sw $1 4036($0)

mult $19 $21
mfhi $4
mflo $4
nop
nop
xor $1 $4 $4
sw $1 4040($0)

jalr $11, $ra
nop
exit336:


j entrance337
nop
entrance337:
jal block337
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit337
nop
block337:

mult $20 $23
mfhi $12
mflo $12
nor $1 $12 $12
sw $1 4044($0)

mult $20 $17
mfhi $12
mflo $12
nop
nor $1 $12 $12
sw $1 4048($0)

mult $18 $19
mfhi $12
mflo $12
nop
nop
nor $1 $12 $12
sw $1 4052($0)

jalr $20, $ra
nop
exit337:


j entrance338
nop
entrance338:
jal block338
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit338
nop
block338:

mult $23 $21
mfhi $7
mflo $7
addi $17 $7 1458
sw $17 4056($0)

mult $18 $20
mfhi $7
mflo $7
nop
addi $16 $7 3304
sw $16 4060($0)

mult $21 $21
mfhi $7
mflo $7
nop
nop
addi $16 $7 3965
sw $16 4064($0)

jr $ra
nop
exit338:


j entrance339
nop
entrance339:
jal block339
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit339
nop
block339:

mult $22 $21
mfhi $7
mflo $7
addiu $18 $7 2714
sw $18 4068($0)

mult $17 $21
mfhi $7
mflo $7
nop
addiu $16 $7 1151
sw $16 4072($0)

mult $17 $21
mfhi $7
mflo $7
nop
nop
addiu $23 $7 1078
sw $23 4076($0)

jr $ra
nop
exit339:


j entrance340
nop
entrance340:
jal block340
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit340
nop
block340:

mult $17 $16
mfhi $5
mflo $5
andi $16 $5 150
sw $16 4080($0)

mult $19 $23
mfhi $5
mflo $5
nop
andi $23 $5 3298
sw $23 4084($0)

mult $17 $22
mfhi $5
mflo $5
nop
nop
andi $20 $5 37
sw $20 4088($0)

jalr $30, $ra
nop
exit340: