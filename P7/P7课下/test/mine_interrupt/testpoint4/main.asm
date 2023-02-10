.text

#init
ori		$1,$0,0xfc01
mtc0	$1,$12
addi	$1,$0,233
addi	$2,$0,233
addi	$3,$0,233
addi	$4,$0,233
addi	$5,$0,233
addi	$6,$0,233
addi	$7,$0,233
addi	$8,$0,233
addi	$9,$0,233
addi	$10,$0,233
addi	$11,$0,233
addi	$12,$0,233
addi	$13,$0,233
addi	$14,$0,233
addi	$15,$0,233
addi	$16,$0,233
addi	$17,$0,233
addi	$18,$0,233
addi	$19,$0,233
addi	$20,$0,233
addi	$21,$0,233
addi	$22,$0,233
addi	$23,$0,233
addi	$24,$0,233
addi	$25,$0,233
addi	$26,$0,233
addi	$27,$0,233
addi	$28,$0,233
addi	$29,$0,233
addi	$30,$0,233
addi	$31,$0,233

#normal boom 0
la		$a0,NBTAG_0
addi	$t0,$0,1
mtc0	$t0,$14#fuck it
addi	$t0,$0,1
NBTAG_0:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#normal boom 1
la		$a0,NBTAG_1
sw		$t0,100($0)
addi	$t0,$0,233
lw		$t0,100($0)
mtc0	$t0,$14#fuck it
addi	$t0,$0,1
NBTAG_1:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#normal boom 2
la		$a0,NBTAG_2
addi	$t0,$0,0
mtc0	$t0,$12#fuck it
addi	$t0,$0,1
NBTAG_2:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#normal boom 3
la		$a0,NBTAG_3
addi	$t0,$0,0
sw		$t0,100($0)
addi	$t0,$0,233
lw		$t0,100($0)
mtc0	$t0,$12#fuck it
addi	$t0,$0,1
NBTAG_3:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#---------------------------------------------------------

#delay boom 0
la		$a0,DBTAG_0
beq		$0,$0,TMPTAG_0
mtc0	$t0,$14#fuck it
TMPTAG_0:
addi	$t0,$0,1
DBTAG_0:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#delay boom 1
la		$a0,DBTAG_1
bne		$0,$0,TMPTAG_1
mtc0	$t0,$14#fuck it
TMPTAG_1:
addi	$t0,$0,1
DBTAG_1:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#delay boom 2
la		$a0,DBTAG_2
j		TMPTAG_2
mtc0	$t0,$14#fuck it
TMPTAG_2:
addi	$t0,$0,1
DBTAG_2:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#delay boom 3
la		$a0,DBTAG_3
la		$30,TMPTAG_3
jr		$30
mtc0	$t0,$14#fuck it
TMPTAG_3:
addi	$t0,$0,1
DBTAG_3:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#delay boom 4
la		$a0,DBTAG_4
jal		TMPTAG_4
mtc0	$31,$14#fuck it
TMPTAG_4:
addi	$t0,$0,1
DBTAG_4:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#delay boom 5
addi	$t0,$0,0
la		$a0,DBTAG_5
beq		$0,$0,TMPTAG_5
mtc0	$t0,$12#fuck it
TMPTAG_5:
addi	$t0,$0,1
DBTAG_5:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#delay boom 6
addi	$t0,$0,0
la		$a0,DBTAG_6
bne		$0,$0,TMPTAG_6
mtc0	$t0,$12#fuck it
TMPTAG_6:
addi	$t0,$0,1
DBTAG_6:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#delay boom 7
addi	$t0,$0,0
la		$a0,DBTAG_7
j		TMPTAG_7
mtc0	$t0,$12#fuck it
TMPTAG_7:
addi	$t0,$0,1
DBTAG_7:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#delay boom 8
addi	$t0,$0,0
la		$a0,DBTAG_8
la		$30,TMPTAG_8
jr		$30
mtc0	$t0,$12#fuck it
TMPTAG_8:
addi	$t0,$0,1
DBTAG_8:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#delay boom 9
la		$a0,DBTAG_9
jal		TMPTAG_9
mtc0	$31,$12#fuck it
TMPTAG_9:
addi	$t0,$0,1
DBTAG_9:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#---------------------------------------------------------

#boom delay boom 0
la		$a0,BDBTAG_0
jr		$0
mtc0	$t0,$14#fuck it
addi	$t0,$0,1
BDBTAG_0:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#boom delay boom 1
la		$a0,BDBTAG_1
jr		$0
mtc0	$0,$12#fuck it
addi	$t0,$0,1
BDBTAG_1:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

.ktext 0x4180
	mfc0	$t7,$12
	mfc0	$t7,$13
	mfc0	$t7,$14
	addu	$t7,$0,$a0
	nop
	nop#fuck it
	nop
	nop
	nop
	nop
	nop
	nop
	mtc0	$t7,$14
	eret
	multu	$t7,$s3
	multu	$t7,$s3
	multu	$t7,$s3