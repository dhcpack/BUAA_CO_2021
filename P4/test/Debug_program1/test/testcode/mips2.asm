lui $2,30545
ori $2,$2,1782
lui $3,3517
ori $3,$3,12127
lui $4,36000
ori $4,$4,1463
lui $5,13117
ori $5,$5,14313
lui $6,3426
ori $6,$6,55896
lui $7,14286
ori $7,$7,2104
lui $8,58489
ori $8,$8,14494
lui $9,43172
ori $9,$9,59347
lui $10,26633
ori $10,$10,19926
lui $11,44461
ori $11,$11,3548
lui $12,35068
ori $12,$12,57280
lui $13,61900
ori $13,$13,38938
lui $14,13206
ori $14,$14,4587
lui $15,41551
ori $15,$15,19345
lui $16,43043
ori $16,$16,4370
lui $17,52208
ori $17,$17,40167
lui $18,43985
ori $18,$18,20500
lui $19,52331
ori $19,$19,27532
lui $20,10964
ori $20,$20,56988
lui $21,56408
ori $21,$21,62604
lui $22,64219
ori $22,$22,36645
lui $23,9386
ori $23,$23,46150
lui $24,36137
ori $24,$24,63282
lui $25,37133
ori $25,$25,25358
lui $26,35558
ori $26,$26,10778
lui $27,30890
ori $27,$27,21783
sw $13,0($0)
sw $6,4($0)
sw $3,8($0)
sw $6,12($0)
sw $19,16($0)
sw $3,20($0)
sw $13,24($0)
sw $22,28($0)
sw $1,32($0)
sw $6,36($0)
sw $12,40($0)
sw $10,44($0)
sw $19,48($0)
sw $10,52($0)
sw $12,56($0)
sw $9,60($0)
sw $24,64($0)
sw $23,68($0)
sw $8,72($0)
sw $11,76($0)
sw $8,80($0)
sw $18,84($0)
sw $2,88($0)
sw $7,92($0)
sw $1,96($0)
sw $4,100($0)
sw $16,104($0)
sw $10,108($0)
sw $8,112($0)
sw $21,116($0)
sw $8,120($0)
sw $4,124($0)
sw $9,128($0)
sw $2,132($0)
sw $17,136($0)
sw $27,140($0)
sw $20,144($0)
sw $24,148($0)
sw $0,152($0)
sw $10,156($0)
sw $23,160($0)
sw $2,164($0)
sw $21,168($0)
sw $1,172($0)
sw $16,176($0)
sw $0,180($0)
sw $3,184($0)
sw $20,188($0)
sw $19,192($0)
sw $23,196($0)
sw $6,200($0)
sw $5,204($0)
sw $0,208($0)
sw $23,212($0)
sw $3,216($0)
sw $16,220($0)
sw $27,224($0)
sw $18,228($0)
sw $4,232($0)
sw $16,236($0)
sw $6,240($0)
sw $9,244($0)
sw $11,248($0)
sw $17,252($0)
sw $4,256($0)
sw $4,260($0)
sw $24,264($0)
sw $7,268($0)
sw $9,272($0)
sw $6,276($0)
sw $2,280($0)
sw $19,284($0)
sw $0,288($0)
sw $25,292($0)
sw $19,296($0)
sw $11,300($0)
sw $22,304($0)
sw $27,308($0)
sw $0,312($0)
sw $1,316($0)
sw $1,320($0)
sw $6,324($0)
sw $15,328($0)
sw $4,332($0)
sw $18,336($0)
sw $1,340($0)
sw $9,344($0)
sw $25,348($0)
sw $12,352($0)
sw $15,356($0)
sw $18,360($0)
sw $20,364($0)
sw $27,368($0)
sw $13,372($0)
sw $6,376($0)
sw $23,380($0)
sw $13,384($0)
sw $8,388($0)
sw $16,392($0)
sw $14,396($0)
sw $13,400($0)
ori $31,$0,0x00003F00
ori $29,$0,0x00002F00
subu $15,$25,$16
subu $25,$27,$8
lui $14,52832
addu $27,$12,$6
nop
ori $12,$0,180
lw $9,-28($12)
ori $18,$18,37577
ori $2,$0,4
subu $sp,$sp,$2
sw $ra,4($sp)
jal func0
ori $2,$0,4
lw $ra,4($sp)
addu $sp,$sp,$2
addu $11,$6,$17
lui $7,13761
ori $7,$0,228
lw $20,-4($7)
nop
addu $18,$7,$19
lui $13,33868
subu $3,$27,$16
nop
ori $2,$0,4
subu $sp,$sp,$2
sw $ra,4($sp)
jal func1
ori $2,$0,4
lw $ra,4($sp)
addu $sp,$sp,$2
addu $18,$25,$20
ori $24,$0,372
lw $10,-12($24)
ori $27,$0,164
lw $19,-8($27)
nop
nop
nop
subu $17,$14,$21
ori $17,$0,168
lw $22,-8($17)
addu $10,$14,$17
lui $17,60311
ori $13,$0,364
sw $11,-12($13)
ori $26,$0,368
sw $2,-36($26)
ori $16,$0,368
lw $11,-32($16)
ori $7,$23,3316
subu $3,$13,$21
lui $20,58979
nop
ori $4,$25,48714
addu $5,$17,$4
ori $2,$0,4
subu $sp,$sp,$2
sw $ra,4($sp)
jal func2
ori $2,$0,4
lw $ra,4($sp)
addu $sp,$sp,$2
ori $25,$0,348
lw $26,-16($25)
subu $16,$12,$11
subu $27,$13,$14
ori $4,$0,48
sw $21,36($4)
ori $2,$0,4
subu $sp,$sp,$2
sw $ra,4($sp)
jal func3
ori $2,$0,4
lw $ra,4($sp)
addu $sp,$sp,$2
ori $2,$0,324
lw $11,-4($2)
beq $19,$19,branch4
addu $22,$15,$11
subu $25,$14,$10
addu $21,$11,$15
lui $19,39943
ori $5,$0,136
sw $16,-32($5)
ori $16,$0,400
sw $2,-32($16)
branch4:
ori $14,$0,344
lw $22,-28($14)
ori $17,$8,62977
ori $16,$0,88
sw $26,-48($16)
lui $24,53309
ori $11,$13,22847
addu $13,$5,$22
ori $13,$0,24
sw $7,12($13)
ori $23,$0,272
sw $21,-20($23)
ori $12,$22,5519
lui $4,41120
addu $26,$10,$21
beq $19,$19,branch5
subu $25,$20,$16
ori $8,$0,304
sw $26,-48($8)
lui $15,60201
addu $10,$16,$26
lui $7,40954
nop
ori $13,$2,35933
ori $21,$3,52942
ori $2,$0,368
lw $24,-40($2)
addu $4,$23,$18
ori $5,$0,180
sw $3,-48($5)
ori $16,$0,76
sw $13,-44($16)
ori $11,$24,64719
ori $16,$0,108
sw $15,-4($16)
ori $7,$8,12057
ori $2,$0,292
lw $12,-40($2)
lui $11,20992
nop
subu $27,$22,$17
branch5:
subu $9,$20,$5
addu $18,$24,$8
lui $22,13232
addu $5,$24,$23
ori $24,$0,220
sw $14,-32($24)
nop
addu $5,$3,$25
addu $15,$15,$25
subu $4,$9,$24
ori $26,$0,192
sw $9,-16($26)
ori $26,$0,120
lw $6,-32($26)
lui $5,14412
ori $2,$23,27241
nop
addu $27,$9,$7
nop
ori $17,$0,152
sw $11,-12($17)
nop
nop
ori $2,$0,4
subu $sp,$sp,$2
sw $ra,4($sp)
jal func6
ori $2,$0,4
lw $ra,4($sp)
addu $sp,$sp,$2
ori $16,$3,6036
addu $10,$23,$25
addu $15,$24,$5
nop
ori $13,$0,56
lw $2,-32($13)
addu $8,$2,$16
addu $19,$18,$27
nop
ori $6,$0,92
lw $2,-32($6)
addu $11,$16,$8
lui $18,51112
ori $18,$0,288
lw $12,-36($18)
subu $17,$12,$20
ori $2,$0,4
subu $sp,$sp,$2
sw $ra,4($sp)
jal func7
ori $2,$0,4
lw $ra,4($sp)
addu $sp,$sp,$2
lui $25,28427
ori $10,$0,296
lw $21,-48($10)
ori $5,$2,10183
ori $14,$0,132
lw $9,-32($14)
ori $6,$11,21542
nop
subu $19,$22,$20
ori $18,$0,276
sw $12,-44($18)
nop
ori $14,$16,10271
beq $18,$18,branch8
lui $12,36573
ori $7,$0,60
lw $5,-44($7)
subu $22,$24,$11
lui $7,24104
subu $27,$3,$12
nop
subu $23,$13,$23
nop
lui $13,39681
branch8:
ori $27,$0,316
lw $4,-12($27)
nop
ori $11,$0,344
lw $9,-44($11)
ori $2,$0,4
subu $sp,$sp,$2
sw $ra,4($sp)
jal func9
ori $2,$0,4
lw $ra,4($sp)
addu $sp,$sp,$2
ori $12,$0,72
sw $4,-16($12)
lui $23,55763
beq $2,$2,branch10
ori $20,$0,332
sw $6,-24($20)
ori $21,$3,25857
nop
subu $12,$27,$22
ori $3,$0,36
lw $15,8($3)
lui $24,41462
ori $13,$0,228
lw $7,-4($13)
addu $27,$2,$5
ori $13,$0,308
sw $23,-16($13)
subu $6,$13,$20
ori $14,$0,292
lw $8,-24($14)
branch10:
subu $22,$17,$8
lui $12,25991
addu $3,$23,$9
addu $5,$12,$5
ori $7,$0,12
sw $17,32($7)
subu $22,$10,$9
addu $11,$19,$10
subu $13,$9,$5
nop
ori $26,$0,276
sw $3,-8($26)
ori $13,$0,28
lw $25,0($13)
ori $13,$0,72
sw $25,-20($13)
lui $17,15122
ori $18,$0,220
sw $5,0($18)
beq $26,$26,branch11
subu $13,$3,$26
ori $13,$9,61698
addu $9,$5,$2
subu $19,$8,$21
ori $23,$0,104
lw $25,-12($23)
nop
addu $14,$27,$19
ori $15,$0,80
lw $20,-40($15)
ori $19,$26,6777
subu $19,$22,$23
ori $12,$0,112
lw $2,-32($12)
lui $27,65037
subu $26,$21,$4
subu $18,$14,$15
ori $13,$10,35581
addu $20,$13,$2
nop
lui $16,42894
nop
addu $26,$24,$5
branch11:
ori $6,$16,50449
lui $8,1301
ori $8,$18,10582
lui $15,33160
lui $27,63283
ori $21,$0,48
lw $20,48($21)
addu $25,$20,$27
ori $19,$0,372
sw $7,0($19)
nop
lui $10,40966
ori $25,$0,164
lw $6,-36($25)
lui $26,41921
subu $21,$24,$3
beq $19,$12,branch12
ori $24,$0,164
sw $6,-12($24)
ori $13,$0,156
sw $16,-4($13)
subu $23,$15,$24
subu $21,$21,$10
addu $2,$19,$15
ori $22,$0,392
lw $4,-12($22)
lui $24,52907
branch12:
lui $7,14113
lui $2,49019
ori $15,$0,396
lw $15,-44($15)
nop
ori $20,$0,272
sw $21,-32($20)
ori $18,$24,40639
addu $5,$20,$16
lui $21,52446
addu $24,$5,$5
subu $13,$8,$18
ori $5,$0,148
sw $11,-16($5)
ori $26,$0,92
lw $13,-20($26)
ori $2,$0,4
subu $sp,$sp,$2
sw $ra,4($sp)
jal func13
ori $2,$0,4
lw $ra,4($sp)
addu $sp,$sp,$2
addu $23,$17,$3
ori $27,$0,12
lw $20,16($27)
beq $11,$3,branch14
ori $8,$23,42975
nop
lui $8,53394
addu $26,$2,$6
lui $9,53599
ori $16,$0,316
sw $11,-4($16)
nop
ori $23,$6,30614
ori $4,$0,200
lw $17,-20($4)
subu $7,$19,$24
nop
ori $18,$0,336
lw $23,-12($18)
ori $20,$19,62957
ori $23,$0,220
sw $3,-32($23)
ori $17,$0,268
lw $10,-44($17)
subu $16,$26,$15
subu $26,$2,$12
branch14:
jr $ra
func0:
ori $7,$0,340
lw $25,-44($7)
addu $13,$2,$16
ori $11,$22,8732
ori $12,$0,76
sw $5,-20($12)
lui $18,31422
ori $2,$0,52
lw $18,-48($2)
subu $7,$22,$2
ori $6,$0,0
lw $3,40($6)
lui $3,38856
ori $7,$15,44152
addu $7,$2,$22
ori $16,$0,400
sw $10,-4($16)
nop
jr $ra
func1:
ori $9,$14,57074
nop
subu $2,$11,$5
nop
addu $25,$8,$21
subu $12,$10,$9
ori $13,$0,140
sw $3,-36($13)
lui $7,33609
subu $18,$13,$24
ori $27,$0,108
lw $14,-16($27)
ori $5,$0,380
lw $17,-4($5)
jr $ra
func2:
subu $10,$25,$7
addu $24,$17,$17
addu $18,$16,$26
nop
ori $9,$0,280
sw $26,-24($9)
ori $27,$0,100
sw $24,-48($27)
lui $11,41106
nop
ori $25,$3,57020
ori $20,$0,220
lw $25,-32($20)
ori $3,$0,196
lw $26,0($3)
subu $25,$27,$21
ori $21,$0,176
sw $7,-28($21)
jr $ra
func3:
lui $14,22133
ori $12,$0,52
lw $9,-4($12)
subu $12,$16,$6
addu $7,$2,$21
ori $21,$24,391
lui $12,7795
ori $24,$0,16
sw $4,32($24)
nop
jr $ra
func6:
ori $6,$0,16
lw $6,12($6)
nop
lui $25,41091
nop
lui $18,30496
subu $20,$10,$17
ori $21,$0,160
sw $25,-40($21)
subu $6,$22,$11
ori $27,$0,80
sw $20,-36($27)
jr $ra
func7:
lui $19,57856
ori $24,$0,168
lw $10,-24($24)
lui $27,17656
lui $27,26918
lui $13,38428
ori $3,$0,300
sw $19,-48($3)
ori $3,$12,3592
ori $10,$19,62252
lui $7,15803
addu $6,$27,$25
jr $ra
func9:
addu $8,$13,$25
nop
subu $23,$15,$10
ori $12,$0,224
lw $15,-40($12)
ori $13,$0,352
lw $24,-12($13)
subu $6,$21,$25
subu $12,$27,$4
ori $12,$0,344
lw $16,-28($12)
nop
lui $6,13104
ori $2,$13,48786
ori $11,$0,48
sw $4,20($11)
lui $18,44155
ori $2,$0,336
sw $3,-32($2)
nop
ori $17,$0,88
lw $14,0($17)
jr $ra
func13:
nop
subu $24,$3,$26
lui $27,12639
ori $7,$0,400
sw $10,-48($7)
ori $13,$0,196
lw $14,-32($13)
jr $ra