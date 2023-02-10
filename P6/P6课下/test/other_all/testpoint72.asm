ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance341
nop
entrance341:
jal block341
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit341
nop
block341:

mult $23 $17
mfhi $15
mflo $15
ori $22 $15 3475
sw $22 4092($0)

mult $21 $16
mfhi $15
mflo $15
nop
ori $20 $15 2174
sw $20 4096($0)

mult $23 $23
mfhi $15
mflo $15
nop
nop
ori $20 $15 3075
sw $20 4100($0)

jr $ra
nop
exit341:


j entrance342
nop
entrance342:
jal block342
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit342
nop
block342:

mult $16 $19
mfhi $11
mflo $11
xori $22 $11 977
sw $22 4104($0)

mult $23 $20
mfhi $11
mflo $11
nop
xori $20 $11 2227
sw $20 4108($0)

mult $17 $22
mfhi $11
mflo $11
nop
nop
xori $21 $11 4057
sw $21 4112($0)

jr $ra
nop
exit342:


j entrance343
nop
entrance343:
jal block343
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit343
nop
block343:

mult $22 $22
mfhi $8
mflo $8
lui $20 4017
sw $20 4116($0)

mult $18 $17
mfhi $8
mflo $8
nop
lui $19 3975
sw $19 4120($0)

mult $19 $18
mfhi $8
mflo $8
nop
nop
lui $23 1211
sw $23 4124($0)

jalr $30, $ra
nop
exit343:


j entrance344
nop
entrance344:
jal block344
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit344
nop
block344:

mult $22 $19
mfhi $1
mflo $1
slt $1 $1 $1
sw $1 4128($0)

mult $23 $23
mfhi $1
mflo $1
nop
slt $1 $1 $1
sw $1 4132($0)

mult $20 $22
mfhi $1
mflo $1
nop
nop
slt $1 $1 $1
sw $1 4136($0)

jalr $13, $ra
nop
exit344:


j entrance345
nop
entrance345:
jal block345
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit345
nop
block345:

mult $18 $23
mfhi $1
mflo $1
slti $21 $1 2736
sw $21 4140($0)

mult $18 $22
mfhi $1
mflo $1
nop
slti $16 $1 3381
sw $16 4144($0)

mult $17 $17
mfhi $1
mflo $1
nop
nop
slti $23 $1 115
sw $23 4148($0)

jr $ra
nop
exit345:


j entrance346
nop
entrance346:
jal block346
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit346
nop
block346:

mult $19 $20
mfhi $8
mflo $8
sltiu $20 $8 3653
sw $20 4152($0)

mult $22 $21
mfhi $8
mflo $8
nop
sltiu $21 $8 3359
sw $21 4156($0)

mult $16 $18
mfhi $8
mflo $8
nop
nop
sltiu $19 $8 2184
sw $19 4160($0)

jalr $17, $ra
nop
exit346:


j entrance347
nop
entrance347:
jal block347
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit347
nop
block347:

mult $21 $21
mfhi $3
mflo $3
sltu $1 $3 $3
sw $1 4164($0)

mult $20 $20
mfhi $3
mflo $3
nop
sltu $1 $3 $3
sw $1 4168($0)

mult $18 $22
mfhi $3
mflo $3
nop
nop
sltu $1 $3 $3
sw $1 4172($0)

jr $ra
nop
exit347:


j entrance348
nop
entrance348:
jal block348
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit348
nop
block348:

mult $19 $21
mfhi $2
mflo $2
mthi $2
sw $2 4176($0)

mult $20 $23
mfhi $2
mflo $2
nop
mthi $2
sw $2 4180($0)

mult $16 $21
mfhi $2
mflo $2
nop
nop
mthi $2
sw $2 4184($0)

jalr $18, $ra
nop
exit348:


j entrance349
nop
entrance349:
jal block349
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit349
nop
block349:

mult $21 $18
mfhi $14
mflo $14
mtlo $14
sw $14 4188($0)

mult $19 $22
mfhi $14
mflo $14
nop
mtlo $14
sw $14 4192($0)

mult $17 $19
mfhi $14
mflo $14
nop
nop
mtlo $14
sw $14 4196($0)

jalr $14, $ra
nop
exit349:

ori $16 $0 1457
ori $17 $0 2622
ori $18 $0 3506
ori $19 $0 1672
ori $20 $0 72
ori $21 $0 1426
ori $22 $0 3651
ori $23 $0 1891

j entrance350
nop
entrance350:
jal block350
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit350
nop
block350:

multu $17 $17
mfhi $9
mflo $9
lb $18 1864($0)
sw $18 4200($0)

multu $16 $20
mfhi $9
mflo $9
nop
lb $23 456($0)
sw $23 4204($0)

multu $21 $22
mfhi $9
mflo $9
nop
nop
lb $22 944($0)
sw $22 4208($0)

jr $ra
nop
exit350:


j entrance351
nop
entrance351:
jal block351
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit351
nop
block351:

multu $18 $21
mfhi $1
mflo $1
lbu $19 1032($0)
sw $19 4212($0)

multu $22 $23
mfhi $1
mflo $1
nop
lbu $20 4212($0)
sw $20 4216($0)

multu $18 $20
mfhi $1
mflo $1
nop
nop
lbu $17 3384($0)
sw $17 4220($0)

jr $ra
nop
exit351:


j entrance352
nop
entrance352:
jal block352
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit352
nop
block352:

multu $20 $19
mfhi $11
mflo $11
lh $23 4220($0)
sw $23 4224($0)

multu $19 $23
mfhi $11
mflo $11
nop
lh $18 1008($0)
sw $18 4228($0)

multu $16 $23
mfhi $11
mflo $11
nop
nop
lh $18 4228($0)
sw $18 4232($0)

jalr $12, $ra
nop
exit352:


j entrance353
nop
entrance353:
jal block353
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit353
nop
block353:

multu $23 $22
mfhi $8
mflo $8
lhu $23 4044($0)
sw $23 4236($0)

multu $18 $23
mfhi $8
mflo $8
nop
lhu $18 4236($0)
sw $18 4240($0)

multu $18 $21
mfhi $8
mflo $8
nop
nop
lhu $22 1184($0)
sw $22 4244($0)

jalr $9, $ra
nop
exit353:


j entrance354
nop
entrance354:
jal block354
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit354
nop
block354:

multu $21 $20
mfhi $1
mflo $1
lw $18 972($0)
sw $18 4248($0)

multu $18 $21
mfhi $1
mflo $1
nop
lw $19 4248($0)
sw $19 4252($0)

multu $19 $23
mfhi $1
mflo $1
nop
nop
lw $17 3516($0)
sw $17 4256($0)

jalr $25, $ra
nop
exit354:


j entrance355
nop
entrance355:
jal block355
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit355
nop
block355:

multu $23 $16
mfhi $10
mflo $10
add $1 $10 $10
sw $1 4260($0)

multu $23 $22
mfhi $10
mflo $10
nop
add $1 $10 $10
sw $1 4264($0)

multu $23 $22
mfhi $10
mflo $10
nop
nop
add $1 $10 $10
sw $1 4268($0)

jalr $9, $ra
nop
exit355:


j entrance356
nop
entrance356:
jal block356
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit356
nop
block356:

multu $19 $18
mfhi $9
mflo $9
addu $1 $9 $9
sw $1 4272($0)

multu $20 $22
mfhi $9
mflo $9
nop
addu $1 $9 $9
sw $1 4276($0)

multu $21 $16
mfhi $9
mflo $9
nop
nop
addu $1 $9 $9
sw $1 4280($0)

jalr $3, $ra
nop
exit356:


j entrance357
nop
entrance357:
jal block357
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit357
nop
block357:

multu $16 $23
mfhi $3
mflo $3
sub $1 $3 $3
sw $1 4284($0)

multu $22 $22
mfhi $3
mflo $3
nop
sub $1 $3 $3
sw $1 4288($0)

multu $20 $16
mfhi $3
mflo $3
nop
nop
sub $1 $3 $3
sw $1 4292($0)

jalr $28, $ra
nop
exit357:


j entrance358
nop
entrance358:
jal block358
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit358
nop
block358:

multu $20 $22
mfhi $12
mflo $12
subu $1 $12 $12
sw $1 4296($0)

multu $20 $23
mfhi $12
mflo $12
nop
subu $1 $12 $12
sw $1 4300($0)

multu $21 $21
mfhi $12
mflo $12
nop
nop
subu $1 $12 $12
sw $1 4304($0)

jalr $4, $ra
nop
exit358:


j entrance359
nop
entrance359:
jal block359
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit359
nop
block359:

multu $20 $18
mfhi $6
mflo $6
mult $6 $6
sw $6 4308($0)

multu $23 $20
mfhi $6
mflo $6
nop
mult $6 $6
sw $6 4312($0)

multu $22 $18
mfhi $6
mflo $6
nop
nop
mult $6 $6
sw $6 4316($0)

jr $ra
nop
exit359:


j entrance360
nop
entrance360:
jal block360
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit360
nop
block360:

multu $18 $16
mfhi $1
mflo $1
multu $1 $1
sw $1 4320($0)

multu $21 $23
mfhi $1
mflo $1
nop
multu $1 $1
sw $1 4324($0)

multu $16 $22
mfhi $1
mflo $1
nop
nop
multu $1 $1
sw $1 4328($0)

jalr $14, $ra
nop
exit360:


j entrance361
nop
entrance361:
jal block361
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit361
nop
block361:

multu $22 $18
mfhi $1
mflo $1
div $1 $1
sw $1 4332($0)

multu $17 $23
mfhi $1
mflo $1
nop
div $1 $1
sw $1 4336($0)

multu $18 $18
mfhi $1
mflo $1
nop
nop
div $1 $1
sw $1 4340($0)

jr $ra
nop
exit361:


j entrance362
nop
entrance362:
jal block362
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit362
nop
block362:

multu $20 $16
mfhi $12
mflo $12
divu $12 $12
sw $12 4344($0)

multu $20 $21
mfhi $12
mflo $12
nop
divu $12 $12
sw $12 4348($0)

multu $23 $18
mfhi $12
mflo $12
nop
nop
divu $12 $12
sw $12 4352($0)

jr $ra
nop
exit362:


j entrance363
nop
entrance363:
jal block363
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit363
nop
block363:

multu $16 $18
mfhi $15
mflo $15
sll $15 $21 6
sw $1 4356($0)

multu $23 $21
mfhi $15
mflo $15
nop
sll $15 $22 21
sw $1 4360($0)

multu $22 $17
mfhi $15
mflo $15
nop
nop
sll $15 $21 23
sw $1 4364($0)

jalr $23, $ra
nop
exit363:


j entrance364
nop
entrance364:
jal block364
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit364
nop
block364:

multu $21 $16
mfhi $14
mflo $14
srl $14 $23 11
sw $1 4368($0)

multu $22 $22
mfhi $14
mflo $14
nop
srl $14 $17 17
sw $1 4372($0)

multu $18 $20
mfhi $14
mflo $14
nop
nop
srl $14 $23 21
sw $1 4376($0)

jr $ra
nop
exit364:


j entrance365
nop
entrance365:
jal block365
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit365
nop
block365:

multu $16 $16
mfhi $8
mflo $8
sra $8 $19 5
sw $1 4380($0)

multu $21 $18
mfhi $8
mflo $8
nop
sra $8 $16 29
sw $1 4384($0)

multu $23 $21
mfhi $8
mflo $8
nop
nop
sra $8 $18 13
sw $1 4388($0)

jalr $22, $ra
nop
exit365:


j entrance366
nop
entrance366:
jal block366
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit366
nop
block366:

multu $21 $20
mfhi $8
mflo $8
sllv $1 $8 $8
sw $1 4392($0)

multu $22 $17
mfhi $8
mflo $8
nop
sllv $1 $8 $8
sw $1 4396($0)

multu $21 $18
mfhi $8
mflo $8
nop
nop
sllv $1 $8 $8
sw $1 4400($0)

jr $ra
nop
exit366:


j entrance367
nop
entrance367:
jal block367
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit367
nop
block367:

multu $18 $19
mfhi $10
mflo $10
srlv $1 $10 $10
sw $1 4404($0)

multu $19 $18
mfhi $10
mflo $10
nop
srlv $1 $10 $10
sw $1 4408($0)

multu $21 $23
mfhi $10
mflo $10
nop
nop
srlv $1 $10 $10
sw $1 4412($0)

jalr $18, $ra
nop
exit367:


j entrance368
nop
entrance368:
jal block368
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit368
nop
block368:

multu $17 $23
mfhi $5
mflo $5
srav $1 $5 $5
sw $1 4416($0)

multu $17 $22
mfhi $5
mflo $5
nop
srav $1 $5 $5
sw $1 4420($0)

multu $19 $16
mfhi $5
mflo $5
nop
nop
srav $1 $5 $5
sw $1 4424($0)

jr $ra
nop
exit368:


j entrance369
nop
entrance369:
jal block369
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit369
nop
block369:

multu $23 $17
mfhi $5
mflo $5
and $1 $5 $5
sw $1 4428($0)

multu $22 $17
mfhi $5
mflo $5
nop
and $1 $5 $5
sw $1 4432($0)

multu $20 $20
mfhi $5
mflo $5
nop
nop
and $1 $5 $5
sw $1 4436($0)

jr $ra
nop
exit369:


j entrance370
nop
entrance370:
jal block370
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit370
nop
block370:

multu $19 $22
mfhi $8
mflo $8
or $1 $8 $8
sw $1 4440($0)

multu $22 $17
mfhi $8
mflo $8
nop
or $1 $8 $8
sw $1 4444($0)

multu $18 $17
mfhi $8
mflo $8
nop
nop
or $1 $8 $8
sw $1 4448($0)

jr $ra
nop
exit370:


j entrance371
nop
entrance371:
jal block371
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit371
nop
block371:

multu $18 $17
mfhi $14
mflo $14
xor $1 $14 $14
sw $1 4452($0)

multu $17 $21
mfhi $14
mflo $14
nop
xor $1 $14 $14
sw $1 4456($0)

multu $16 $20
mfhi $14
mflo $14
nop
nop
xor $1 $14 $14
sw $1 4460($0)

jr $ra
nop
exit371: