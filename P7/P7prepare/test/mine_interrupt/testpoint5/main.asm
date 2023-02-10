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

#extra boom 0
la		$a0,EFTAG_0
sw		$t0,100($0)
addi	$t0,$0,233
lw		$t0,100($0)#fuck it 1
mtc0	$t0,$14
addi	$t0,$0,1
EFTAG_0:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#extra boom 1
la		$a0,EFTAG_1
mfc0	$t0,$14#fuck it 1
beq		$t0,$0,TMPTAG_0
addi	$t0,$t0,1
addi	$t0,$t0,1
TMPTAG_0:
addi	$t0,$t0,1
EFTAG_1:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#extra boom 2
la		$a0,EFTAG_2
mfc0	$t0,$14#fuck it 1
bne		$t0,$0,TMPTAG_1
addi	$t0,$t0,1
addi	$t0,$t0,1
TMPTAG_1:
addi	$t0,$t0,1
EFTAG_2:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#extra boom 1
la		$a0,EFTAG_3
mfc0	$t0,$14#fuck it 1
jr		$t0
addi	$t0,$t0,1
addi	$t0,$t0,1
EFTAG_3:
mfhi	$t0
mflo	$t0
nop
nop
nop
nop
nop
nop

#---------------------------------------------------------

#div->beq no->mflo->3 after dix
la		$a0,BJTAG_0
addi	$t0,$0,-1
divu	$t0,$t1#fuck it 3
beq		$t0,$t0,BJTAG_0
mflo	$t0
nop
BJTAG_0:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->beq yes->mflo->3 after dix
la		$a0,BJTAG_1
addi	$t0,$0,-1
divu	$t0,$t1#fuck it 3
beq		$t0,$0,BJTAG_1
mflo	$t0
nop
BJTAG_1:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->bne no->mflo->3 after dix
la		$a0,BJTAG_2
addi	$t0,$0,-1
divu	$t0,$t1#fuck it 3
bne		$t0,$t0,BJTAG_2
mflo	$t0
nop
BJTAG_2:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->bne yes->mflo->3 after dix
la		$a0,BJTAG_3
addi	$t0,$0,-1
divu	$t0,$t1#fuck it 3
bne		$t0,$0,BJTAG_3
mflo	$t0
nop
BJTAG_3:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->bgez no->mflo->3 after dix
la		$a0,BJTAG_4
addi	$t0,$0,-1
divu	$t0,$t1#fuck it 3
bgez	$t0,BJTAG_4
mflo	$t0
nop
BJTAG_4:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->bgez yes->mflo->3 after dix
la		$a0,BJTAG_5
addi	$t0,$0,0
divu	$t0,$t1#fuck it 3
bgez	$t0,BJTAG_5
mflo	$t0
nop
BJTAG_5:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->bgtz no->mflo->3 after dix
la		$a0,BJTAG_6
addi	$t0,$0,0
divu	$t0,$t1#fuck it 3
bgtz	$t0,BJTAG_6
mflo	$t0
nop
BJTAG_6:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->bgtz yes->mflo->3 after dix
la		$a0,BJTAG_7
addi	$t0,$0,1
divu	$t0,$t1#fuck it 3
bgtz	$t0,BJTAG_7
mflo	$t0
nop
BJTAG_7:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->blez no->mflo->3 after dix
la		$a0,BJTAG_8
addi	$t0,$0,1
divu	$t0,$t1#fuck it 3
blez	$t0,BJTAG_8
mflo	$t0
nop
BJTAG_8:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->blez yes->mflo->3 after dix
la		$a0,BJTAG_9
addi	$t0,$0,0
divu	$t0,$t1#fuck it 3
blez	$t0,BJTAG_9
mflo	$t0
nop
BJTAG_9:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->bltz no->mflo->3 after dix
la		$a0,BJTAG_10
addi	$t0,$0,0
divu	$t0,$t1#fuck it 3
bltz	$t0,BJTAG_10
mflo	$t0
nop
BJTAG_10:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->bltz yes->mflo->3 after dix
la		$a0,BJTAG_11
addi	$t0,$0,-1
divu	$t0,$t1#fuck it 3
bltz	$t0,BJTAG_11
mflo	$t0
nop
BJTAG_11:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#---------------------------------------------------------

#div->j->mflo->3 after dix
la		$a0,JJTAG_0
addi	$t0,$0,-1
divu	$t0,$t1#fuck it 3
j		JJTAG_0
mflo	$t0
nop
JJTAG_0:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->jal->mflo->3 after dix
la		$a0,JJTAG_1
addi	$t0,$0,-1
divu	$t0,$t1#fuck it 3
jal		JJTAG_1
mflo	$t0
nop
JJTAG_1:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->jr->mflo->3 after dix
la		$a0,JJTAG_2
addi	$t0,$0,-1
divu	$t0,$t1#fuck it 3
jr		$a0
mflo	$t0
nop
JJTAG_2:
mfhi	$t2
mflo	$t2
nop
nop
nop
nop
nop

#div->jalr->mflo->3 after dix
la		$a0,JJTAG_3
addi	$t0,$0,-1
divu	$t0,$t1#fuck it 3
jalr	$31,$a0
mflo	$t0
nop
JJTAG_3:
mfhi	$t2
mflo	$t2
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	mtc0	$t7,$14
	eret
	divu	$t7,$s3
	divu	$t7,$s3#fuck it 1
	divu	$t7,$s3