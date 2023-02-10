.text
ori $s0,10
ori $s7,$s0,10
loop:
	beq $t0,$s0,loopout
	lw $s1,0($t1)
	addu $t1,$t1,4
	lw $s2,0($t1)
	addu $s3,$s1,$s7
	addu $s2,$s2,$s3
	sw $s2,0($t1)
	addu $t0,$t0,1
	jal loop
	nop
loopout:

begin:
ori $3 12288 #0x3000
ori $4 12292
ori $5 4
ori $6 8
#D1,D2,D3面临的所有转发
addu $3  $3 $5
beq  $4 $3 begin #5
nop
addu $3 $3 $6
addu $3 $3 $6
addu $3 $3 $6  
addu $3 $3 $6 
addu $3 $3 $6 #11
addu $3 $3 $6
jr $3
nop
jal check
nop

#E1,E2面临的所有转发
ori $7 $7 16
subu $7 $7 $7
subu $7 $7 $7
ori $7 $7 16
sw $7 ($6)  #DM的8号地址存入了8
lw  $8  ($6)
nop
nop
addu $8 $8 $8
lw $8 ($7)
nop
sw  $8  4($8)
nop

#D1,D2,D3面临的所有暂停
lui $8  0
ori $8 $8 16
lw   $7  ($8) #7号读出了8
beq $7 $3 begin
nop
addu $7 $7 $7
beq $7 $3 begin
nop

#E1，E2面临的所有暂停
lw $7 ($8)
ori $7 $7 32
addu $7 $7 $7
lw $7 ($8)
sw $7 ($5)
sw $7 ($5)
sw $7 ($5)
nop

#M1级的转发
lw $7 ($8)
sw $7 0($7)

lui $4 1
lui $5 1
beq  $4 $5 end
nop
check:
jr $ra
nop
end:

lui $5, 233
lui $6, 233
lui $5, 122
addu $6,$5,$5
subu $6,$5,$5