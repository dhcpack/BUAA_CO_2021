ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance248
nop
entrance248:
jal block248
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit248
nop
block248:

sub $6 $17 $21
lhu $19 2516($0)
sw $19 2976($0)

sub $6 $20 $20
nop
lhu $20 2804($0)
sw $20 2980($0)

sub $6 $17 $20
nop
nop
lhu $16 1560($0)
sw $16 2984($0)

jr $ra
nop
exit248:


j entrance249
nop
entrance249:
jal block249
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit249
nop
block249:

sub $3 $23 $21
lw $23 2984($0)
sw $23 2988($0)

sub $3 $17 $20
nop
lw $23 2988($0)
sw $23 2992($0)

sub $3 $19 $22
nop
nop
lw $16 2992($0)
sw $16 2996($0)

jr $ra
nop
exit249:


j entrance250
nop
entrance250:
jal block250
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit250
nop
block250:

sub $1 $18 $21
add $1 $1 $1
sw $1 3000($0)

sub $1 $17 $21
nop
add $1 $1 $1
sw $1 3004($0)

sub $1 $17 $22
nop
nop
add $1 $1 $1
sw $1 3008($0)

jr $ra
nop
exit250:


j entrance251
nop
entrance251:
jal block251
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit251
nop
block251:

sub $1 $18 $23
addu $1 $1 $1
sw $1 3012($0)

sub $1 $18 $22
nop
addu $1 $1 $1
sw $1 3016($0)

sub $1 $18 $20
nop
nop
addu $1 $1 $1
sw $1 3020($0)

jr $ra
nop
exit251:


j entrance252
nop
entrance252:
jal block252
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit252
nop
block252:

sub $10 $20 $22
sub $1 $10 $10
sw $1 3024($0)

sub $10 $23 $23
nop
sub $1 $10 $10
sw $1 3028($0)

sub $10 $18 $16
nop
nop
sub $1 $10 $10
sw $1 3032($0)

jalr $10, $ra
nop
exit252:


j entrance253
nop
entrance253:
jal block253
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit253
nop
block253:

sub $2 $23 $18
subu $1 $2 $2
sw $1 3036($0)

sub $2 $22 $18
nop
subu $1 $2 $2
sw $1 3040($0)

sub $2 $20 $16
nop
nop
subu $1 $2 $2
sw $1 3044($0)

jr $ra
nop
exit253:


j entrance254
nop
entrance254:
jal block254
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit254
nop
block254:

sub $10 $21 $18
mult $10 $10
sw $10 3048($0)

sub $10 $18 $22
nop
mult $10 $10
sw $10 3052($0)

sub $10 $17 $23
nop
nop
mult $10 $10
sw $10 3056($0)

jr $ra
nop
exit254:


j entrance255
nop
entrance255:
jal block255
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit255
nop
block255:

sub $6 $18 $20
multu $6 $6
sw $6 3060($0)

sub $6 $21 $16
nop
multu $6 $6
sw $6 3064($0)

sub $6 $21 $23
nop
nop
multu $6 $6
sw $6 3068($0)

jr $ra
nop
exit255:


j entrance256
nop
entrance256:
jal block256
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit256
nop
block256:

sub $15 $17 $17
div $15 $15
sw $15 3072($0)

sub $15 $16 $20
nop
div $15 $15
sw $15 3076($0)

sub $15 $16 $16
nop
nop
div $15 $15
sw $15 3080($0)

jalr $2, $ra
nop
exit256:


j entrance257
nop
entrance257:
jal block257
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit257
nop
block257:

sub $13 $22 $22
divu $13 $13
sw $13 3084($0)

sub $13 $21 $18
nop
divu $13 $13
sw $13 3088($0)

sub $13 $19 $23
nop
nop
divu $13 $13
sw $13 3092($0)

jalr $5, $ra
nop
exit257:


j entrance258
nop
entrance258:
jal block258
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit258
nop
block258:

sub $2 $19 $16
sll $2 $16 15
sw $1 3096($0)

sub $2 $20 $16
nop
sll $2 $22 24
sw $1 3100($0)

sub $2 $22 $17
nop
nop
sll $2 $22 23
sw $1 3104($0)

jalr $22, $ra
nop
exit258:


j entrance259
nop
entrance259:
jal block259
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit259
nop
block259:

sub $6 $22 $16
srl $6 $21 11
sw $1 3108($0)

sub $6 $21 $16
nop
srl $6 $20 6
sw $1 3112($0)

sub $6 $22 $23
nop
nop
srl $6 $20 23
sw $1 3116($0)

jr $ra
nop
exit259:


j entrance260
nop
entrance260:
jal block260
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit260
nop
block260:

sub $8 $16 $16
sra $8 $22 29
sw $1 3120($0)

sub $8 $18 $16
nop
sra $8 $22 4
sw $1 3124($0)

sub $8 $21 $20
nop
nop
sra $8 $22 21
sw $1 3128($0)

jalr $20, $ra
nop
exit260:


j entrance261
nop
entrance261:
jal block261
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit261
nop
block261:

sub $4 $22 $20
sllv $1 $4 $4
sw $1 3132($0)

sub $4 $20 $18
nop
sllv $1 $4 $4
sw $1 3136($0)

sub $4 $20 $21
nop
nop
sllv $1 $4 $4
sw $1 3140($0)

jr $ra
nop
exit261:


j entrance262
nop
entrance262:
jal block262
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit262
nop
block262:

sub $5 $21 $18
srlv $1 $5 $5
sw $1 3144($0)

sub $5 $22 $19
nop
srlv $1 $5 $5
sw $1 3148($0)

sub $5 $20 $23
nop
nop
srlv $1 $5 $5
sw $1 3152($0)

jr $ra
nop
exit262:


j entrance263
nop
entrance263:
jal block263
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit263
nop
block263:

sub $7 $18 $18
srav $1 $7 $7
sw $1 3156($0)

sub $7 $17 $23
nop
srav $1 $7 $7
sw $1 3160($0)

sub $7 $20 $23
nop
nop
srav $1 $7 $7
sw $1 3164($0)

jr $ra
nop
exit263:


j entrance264
nop
entrance264:
jal block264
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit264
nop
block264:

sub $15 $22 $23
and $1 $15 $15
sw $1 3168($0)

sub $15 $18 $22
nop
and $1 $15 $15
sw $1 3172($0)

sub $15 $23 $21
nop
nop
and $1 $15 $15
sw $1 3176($0)

jr $ra
nop
exit264:


j entrance265
nop
entrance265:
jal block265
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit265
nop
block265:

sub $15 $22 $17
or $1 $15 $15
sw $1 3180($0)

sub $15 $18 $21
nop
or $1 $15 $15
sw $1 3184($0)

sub $15 $21 $23
nop
nop
or $1 $15 $15
sw $1 3188($0)

jr $ra
nop
exit265:


j entrance266
nop
entrance266:
jal block266
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit266
nop
block266:

sub $3 $16 $16
xor $1 $3 $3
sw $1 3192($0)

sub $3 $21 $23
nop
xor $1 $3 $3
sw $1 3196($0)

sub $3 $23 $19
nop
nop
xor $1 $3 $3
sw $1 3200($0)

jr $ra
nop
exit266:


j entrance267
nop
entrance267:
jal block267
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit267
nop
block267:

sub $14 $17 $18
nor $1 $14 $14
sw $1 3204($0)

sub $14 $23 $23
nop
nor $1 $14 $14
sw $1 3208($0)

sub $14 $20 $19
nop
nop
nor $1 $14 $14
sw $1 3212($0)

jalr $17, $ra
nop
exit267:


j entrance268
nop
entrance268:
jal block268
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit268
nop
block268:

sub $13 $18 $23
addi $16 $13 3300
sw $16 3216($0)

sub $13 $16 $22
nop
addi $21 $13 3683
sw $21 3220($0)

sub $13 $19 $19
nop
nop
addi $17 $13 3210
sw $17 3224($0)

jr $ra
nop
exit268:


j entrance269
nop
entrance269:
jal block269
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit269
nop
block269:

sub $5 $17 $21
addiu $21 $5 2464
sw $21 3228($0)

sub $5 $21 $18
nop
addiu $16 $5 1726
sw $16 3232($0)

sub $5 $17 $20
nop
nop
addiu $20 $5 1753
sw $20 3236($0)

jr $ra
nop
exit269:


j entrance270
nop
entrance270:
jal block270
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit270
nop
block270:

sub $2 $22 $16
andi $17 $2 3797
sw $17 3240($0)

sub $2 $21 $16
nop
andi $22 $2 4
sw $22 3244($0)

sub $2 $23 $16
nop
nop
andi $18 $2 2156
sw $18 3248($0)

jalr $11, $ra
nop
exit270:


j entrance271
nop
entrance271:
jal block271
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit271
nop
block271:

sub $10 $18 $21
ori $20 $10 828
sw $20 3252($0)

sub $10 $21 $19
nop
ori $17 $10 3319
sw $17 3256($0)

sub $10 $21 $22
nop
nop
ori $23 $10 3257
sw $23 3260($0)

jalr $19, $ra
nop
exit271:


j entrance272
nop
entrance272:
jal block272
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit272
nop
block272:

sub $5 $22 $19
xori $22 $5 2168
sw $22 3264($0)

sub $5 $18 $22
nop
xori $18 $5 2831
sw $18 3268($0)

sub $5 $16 $21
nop
nop
xori $20 $5 3830
sw $20 3272($0)

jr $ra
nop
exit272:


j entrance273
nop
entrance273:
jal block273
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit273
nop
block273:

sub $10 $22 $20
lui $16 1251
sw $16 3276($0)

sub $10 $22 $22
nop
lui $16 3428
sw $16 3280($0)

sub $10 $20 $21
nop
nop
lui $19 2623
sw $19 3284($0)

jr $ra
nop
exit273:


j entrance274
nop
entrance274:
jal block274
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit274
nop
block274:

sub $10 $21 $16
slt $1 $10 $10
sw $1 3288($0)

sub $10 $20 $19
nop
slt $1 $10 $10
sw $1 3292($0)

sub $10 $19 $19
nop
nop
slt $1 $10 $10
sw $1 3296($0)

jr $ra
nop
exit274:


j entrance275
nop
entrance275:
jal block275
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit275
nop
block275:

sub $13 $18 $22
slti $23 $13 3474
sw $23 3300($0)

sub $13 $16 $17
nop
slti $22 $13 309
sw $22 3304($0)

sub $13 $22 $22
nop
nop
slti $18 $13 1165
sw $18 3308($0)

jalr $30, $ra
nop
exit275:


j entrance276
nop
entrance276:
jal block276
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit276
nop
block276:

sub $1 $16 $18
sltiu $17 $1 3232
sw $17 3312($0)

sub $1 $17 $16
nop
sltiu $23 $1 255
sw $23 3316($0)

sub $1 $16 $19
nop
nop
sltiu $18 $1 1892
sw $18 3320($0)

jalr $5, $ra
nop
exit276:


j entrance277
nop
entrance277:
jal block277
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit277
nop
block277:

sub $13 $23 $19
sltu $1 $13 $13
sw $1 3324($0)

sub $13 $18 $22
nop
sltu $1 $13 $13
sw $1 3328($0)

sub $13 $17 $16
nop
nop
sltu $1 $13 $13
sw $1 3332($0)

jr $ra
nop
exit277:


j entrance278
nop
entrance278:
jal block278
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit278
nop
block278:

sub $1 $22 $17
mthi $1
sw $1 3336($0)

sub $1 $21 $23
nop
mthi $1
sw $1 3340($0)

sub $1 $19 $23
nop
nop
mthi $1
sw $1 3344($0)

jalr $23, $ra
nop
exit278: