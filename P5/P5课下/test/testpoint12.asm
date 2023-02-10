addi	$s0,$0,104
sw		$s0,4($0)
addi	$s0,$0,12
sw		$s0,8($0)
addi	$s0,$0,92
sw		$s0,12($0)
addi	$s0,$0,80
sw		$s0,16($0)
addi	$s0,$0,76
sw		$s0,20($0)
addi	$s0,$0,68
sw		$s0,24($0)
addi	$s0,$0,56
sw		$s0,28($0)
addi	$s0,$0,108
sw		$s0,32($0)
addi	$s0,$0,64
sw		$s0,36($0)
addi	$s0,$0,4
sw		$s0,40($0)
addi	$s0,$0,16
sw		$s0,44($0)
addi	$s0,$0,116
sw		$s0,48($0)
addi	$s0,$0,28
sw		$s0,52($0)
addi	$s0,$0,96
sw		$s0,56($0)
addi	$s0,$0,44
sw		$s0,60($0)
addi	$s0,$0,8
sw		$s0,64($0)
addi	$s0,$0,20
sw		$s0,68($0)
addi	$s0,$0,40
sw		$s0,72($0)
addi	$s0,$0,88
sw		$s0,76($0)
addi	$s0,$0,72
sw		$s0,80($0)
addi	$s0,$0,32
sw		$s0,84($0)
addi	$s0,$0,100
sw		$s0,88($0)
addi	$s0,$0,52
sw		$s0,92($0)
addi	$s0,$0,120
sw		$s0,96($0)
addi	$s0,$0,24
sw		$s0,100($0)
addi	$s0,$0,60
sw		$s0,104($0)
addi	$s0,$0,84
sw		$s0,108($0)
addi	$s0,$0,112
sw		$s0,112($0)
addi	$s0,$0,48
sw		$s0,116($0)
addi	$s0,$0,36
sw		$s0,120($0)

#--------------

addi	$1,$0,23333
addi	$2,$0,23333
addi	$3,$0,23333
addi	$4,$0,23333
addi	$5,$0,23333
addi	$6,$0,23333
addi	$7,$0,23333
addi	$8,$0,23333
addi	$9,$0,23333
addi	$10,$0,23333
addi	$11,$0,23333
addi	$12,$0,23333
addi	$13,$0,23333
addi	$14,$0,23333
addi	$15,$0,23333
addi	$16,$0,23333
addi	$17,$0,23333
addi	$18,$0,23333
addi	$19,$0,23333
addi	$20,$0,23333
addi	$21,$0,23333
addi	$22,$0,23333
addi	$23,$0,23333
addi	$24,$0,23333
addi	$25,$0,23333
addi	$26,$0,23333
addi	$27,$0,23333
addi	$28,$0,23333
addi	$29,$0,23333
addi	$30,$0,23333
addi	$31,$0,23333

#--------------

addi		$t0,$0,88
addi		$t2,$0,68
addi		$s0,$0,40
movz		$t1,$t0,$0
movz		$t2,$t1,$s0
movz		$t3,$t2,$0
movz		$t4,$t3,$s0
addi		$t0,$0,88
addi		$t2,$0,68
addi		$s0,$0,40
movn		$t1,$t0,$s0
movn		$t2,$t1,$0
movn		$t3,$t2,$s0
movn		$t4,$t3,$0

#--------------

addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bltzal		$t0,TAG_0
addi		$31,$s0,233
addi		$31,$s0,233
TAG_0:
addi		$31,$s0,233
addi		$31,$s0,233

addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bltzal		$t0,TAG_1
addi		$31,$s0,233
addi		$31,$s0,233
TAG_1:
addi		$31,$s0,233
addi		$31,$s0,233

addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bltzal		$t0,TAG_2
addi		$31,$s0,233
addi		$31,$s0,233
TAG_2:
addi		$31,$s0,233
addi		$31,$s0,233

addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bgezal		$t0,TAG_3
addi		$31,$s0,233
addi		$31,$s0,233
TAG_3:
addi		$31,$s0,233
addi		$31,$s0,233

addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bgezal		$t0,TAG_4
addi		$31,$s0,233
addi		$31,$s0,233
TAG_4:
addi		$31,$s0,233
addi		$31,$s0,233

addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bgezal		$t0,TAG_5
addi		$31,$s0,233
addi		$31,$s0,233
TAG_5:
addi		$31,$s0,233
addi		$31,$s0,233	

#--------------

la			$a0,TAG_6
addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bltzalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$s0,233
TAG_6:
addi		$31,$s0,233
addi		$31,$s0,233

la			$a0,TAG_7
addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bltzalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$s0,233
TAG_7:
addi		$31,$s0,233
addi		$31,$s0,233

la			$a0,TAG_8
addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bltzalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$s0,233
TAG_8:
addi		$31,$s0,233
addi		$31,$s0,233

la			$a0,TAG_9
addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bgezalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$s0,233
TAG_9:
addi		$31,$s0,233
addi		$31,$s0,233

la			$a0,TAG_10
addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bgezalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$s0,233
TAG_10:
addi		$31,$s0,233
addi		$31,$s0,233

la			$a0,TAG_11
addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bgezalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$s0,233
TAG_11:
addi		$31,$s0,233
addi		$31,$s0,233

#--------------

la			$a0,TAG_12
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s1,-4($t0)
sw			$s2,-4($t0)
sw			$s3,-4($t0)
bmltzalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$s0,233
TAG_12:
addi		$31,$s0,233
addi		$31,$s0,233

la			$a0,TAG_13
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s3,-4($t0)
sw			$s1,-4($t0)
sw			$s2,-4($t0)
bmltzalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$s0,233
TAG_13:
addi		$31,$s0,233
addi		$31,$s0,233

la			$a0,TAG_14
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s2,-4($t0)
sw			$s3,-4($t0)
sw			$s1,-4($t0)
bmltzalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$s0,233
TAG_14:
addi		$31,$s0,233
addi		$31,$s0,233

la			$a0,TAG_15
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s1,-4($t0)
sw			$s2,-4($t0)
sw			$s3,-4($t0)
bmgezalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$s0,233
TAG_15:
addi		$31,$s0,233
addi		$31,$s0,233

la			$a0,TAG_16
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s3,-4($t0)
sw			$s1,-4($t0)
sw			$s2,-4($t0)
bmgezalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$s0,233
TAG_16:
addi		$31,$s0,233
addi		$31,$s0,233

la			$a0,TAG_17
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s2,-4($t0)
sw			$s3,-4($t0)
sw			$s1,-4($t0)
bmgezalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$s0,233
TAG_17:
addi		$31,$s0,233
addi		$31,$s0,233

#--------------

addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bltzal		$t0,TAGH_0
addi		$31,$31,233
addi		$31,$31,233
TAGH_0:
addi		$31,$31,233
addi		$31,$31,233

addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bltzal		$t0,TAGH_1
addi		$31,$31,233
addi		$31,$31,233
TAGH_1:
addi		$31,$31,233
addi		$31,$31,233

addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bltzal		$t0,TAGH_2
addi		$31,$31,233
addi		$31,$31,233
TAGH_2:
addi		$31,$31,233
addi		$31,$31,233

addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bgezal		$t0,TAGH_3
addi		$31,$31,233
addi		$31,$31,233
TAGH_3:
addi		$31,$31,233
addi		$31,$31,233

addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bgezal		$t0,TAGH_4
addi		$31,$31,233
addi		$31,$31,233
TAGH_4:
addi		$31,$31,233
addi		$31,$31,233

addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bgezal		$t0,TAGH_5
addi		$31,$31,233
addi		$31,$31,233
TAGH_5:
addi		$31,$31,233
addi		$31,$31,233	

#--------------

la			$a0,TAGH_6
addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bltzalr		$31,$t0,$a0
addi		$31,$31,233
addi		$31,$31,233
TAGH_6:
addi		$31,$31,233
addi		$31,$31,233

la			$a0,TAGH_7
addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bltzalr		$31,$t0,$a0
addi		$31,$31,233
addi		$31,$31,233
TAGH_7:
addi		$31,$31,233
addi		$31,$31,233

la			$a0,TAGH_8
addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bltzalr		$31,$t0,$a0
addi		$31,$31,233
addi		$31,$31,233
TAGH_8:
addi		$31,$31,233
addi		$31,$31,233

la			$a0,TAGH_9
addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bgezalr		$31,$t0,$a0
addi		$31,$31,233
addi		$31,$31,233
TAGH_9:
addi		$31,$31,233
addi		$31,$31,233

la			$a0,TAGH_10
addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bgezalr		$31,$t0,$a0
addi		$31,$31,233
addi		$31,$31,233
TAGH_10:
addi		$31,$31,233
addi		$31,$31,233

la			$a0,TAGH_11
addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bgezalr		$31,$t0,$a0
addi		$31,$31,233
addi		$31,$31,233
TAGH_11:
addi		$31,$31,233
addi		$31,$31,233

#--------------

la			$a0,TAGH_12
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s1,-4($t0)
sw			$s2,-4($t0)
sw			$s3,-4($t0)
bmltzalr	$a0,-4($t0)
addi		$31,$31,233
addi		$31,$31,233
TAGH_12:
addi		$31,$31,233
addi		$31,$31,233

la			$a0,TAGH_13
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s3,-4($t0)
sw			$s1,-4($t0)
sw			$s2,-4($t0)
bmltzalr	$a0,-4($t0)
addi		$31,$31,233
addi		$31,$31,233
TAGH_13:
addi		$31,$31,233
addi		$31,$31,233

la			$a0,TAGH_14
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s2,-4($t0)
sw			$s3,-4($t0)
sw			$s1,-4($t0)
bmltzalr	$a0,-4($t0)
addi		$31,$31,233
addi		$31,$31,233
TAGH_14:
addi		$31,$31,233
addi		$31,$31,233

la			$a0,TAGH_15
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s1,-4($t0)
sw			$s2,-4($t0)
sw			$s3,-4($t0)
bmgezalr	$a0,-4($t0)
addi		$31,$31,233
addi		$31,$31,233
TAGH_15:
addi		$31,$31,233
addi		$31,$31,233

la			$a0,TAGH_16
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s3,-4($t0)
sw			$s1,-4($t0)
sw			$s2,-4($t0)
bmgezalr	$a0,-4($t0)
addi		$31,$31,233
addi		$31,$31,233
TAGH_16:
addi		$31,$31,233
addi		$31,$31,233

la			$a0,TAGH_17
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s2,-4($t0)
sw			$s3,-4($t0)
sw			$s1,-4($t0)
bmgezalr	$a0,-4($t0)
addi		$31,$31,233
addi		$31,$31,233
TAGH_17:
addi		$31,$31,233
addi		$31,$31,233

#--------------

addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bltzal		$t0,TAGHH_0
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_0:
addi		$31,$s0,233
addi		$31,$31,233

addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bltzal		$t0,TAGHH_1
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_1:
addi		$31,$s0,233
addi		$31,$31,233

addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bltzal		$t0,TAGHH_2
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_2:
addi		$31,$s0,233
addi		$31,$31,233

addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bgezal		$t0,TAGHH_3
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_3:
addi		$31,$s0,233
addi		$31,$31,233

addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bgezal		$t0,TAGHH_4
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_4:
addi		$31,$s0,233
addi		$31,$31,233

addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bgezal		$t0,TAGHH_5
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_5:
addi		$31,$s0,233
addi		$31,$31,233	

#--------------

la			$a0,TAGHH_6
addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bltzalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_6:
addi		$31,$s0,233
addi		$31,$31,233

la			$a0,TAGHH_7
addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bltzalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_7:
addi		$31,$s0,233
addi		$31,$31,233

la			$a0,TAGHH_8
addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bltzalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_8:
addi		$31,$s0,233
addi		$31,$31,233

la			$a0,TAGHH_9
addi		$t0,$0,-88
addi		$t0,$t0,-88
addi		$t0,$t0,-88
bgezalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_9:
addi		$31,$s0,233
addi		$31,$31,233

la			$a0,TAGHH_10
addi		$t0,$0,0
addi		$t0,$t0,0
addi		$t0,$t0,0
bgezalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_10:
addi		$31,$s0,233
addi		$31,$31,233

la			$a0,TAGHH_11
addi		$t0,$0,88
addi		$t0,$t0,88
addi		$t0,$t0,88
bgezalr		$31,$t0,$a0
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_11:
addi		$31,$s0,233
addi		$31,$31,233

#--------------

la			$a0,TAGHH_12
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s1,-4($t0)
sw			$s2,-4($t0)
sw			$s3,-4($t0)
bmltzalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_12:
addi		$31,$s0,233
addi		$31,$31,233

la			$a0,TAGHH_13
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s3,-4($t0)
sw			$s1,-4($t0)
sw			$s2,-4($t0)
bmltzalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_13:
addi		$31,$s0,233
addi		$31,$31,233

la			$a0,TAGHH_14
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s2,-4($t0)
sw			$s3,-4($t0)
sw			$s1,-4($t0)
bmltzalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_14:
addi		$31,$s0,233
addi		$31,$31,233

la			$a0,TAGHH_15
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s1,-4($t0)
sw			$s2,-4($t0)
sw			$s3,-4($t0)
bmgezalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_15:
addi		$31,$s0,233
addi		$31,$31,233

la			$a0,TAGHH_16
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s3,-4($t0)
sw			$s1,-4($t0)
sw			$s2,-4($t0)
bmgezalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_16:
addi		$31,$s0,233
addi		$31,$31,233

la			$a0,TAGHH_17
addi		$t0,$0,8
addi		$s1,$0,65407
addi		$s2,$0,-256
addi		$s3,$0,32767
sw			$s2,-4($t0)
sw			$s3,-4($t0)
sw			$s1,-4($t0)
bmgezalr	$a0,-4($t0)
addi		$31,$s0,233
addi		$31,$31,233
TAGHH_17:
addi		$31,$s0,233
addi		$31,$31,233

#--------------

addi	$t0,$0,2222
sw		$t0,2048($0)
addi	$t0,$0,3333
sw		$t0,2052($0)
addi	$t0,$0,4444
sw		$t0,2056($0)