ori $at,123
ori $v0,456  # ��������

lui $v0,0xffff
ori $v1,$v0,456
lui $a0,0xffff
ori $a1,$a0,795  # ���츺��


ori $t6,0
ori $t7,1
jplace:
beq $t6,$t7,jend
addu $t6,$t6,$t7
addu $a2,$at,$v0  # ����
addu $a3,$v1,$a1  # ����
addu $t0,$a2,$a3  # ����
addu $t1,$a3,$a2  # ����
j jplace

jend:
subu $t2,$a2,$at  # ����
subu $t3,$a1,$a3  # ����
subu $t4,$a2,$a3  # ����
subu $t5,$a3,$t4  # ����


ori $k0,0
ori $k1,1
nop
sw $t2,0($k0)
sw $t3,8($k0)
sw $t4,12($k0)
sw $t5,4($k0)

nop

lw $s0,12($k0)
lw $s1,8($k0)
lw $s2,4($k0)
lw $s3,0($k0)
loop:
	addu $k0,$k0,$k1
	addu $s4,$s0,$s1
	subu $s5,$t0,$s2
	addu $s7,$t9,$s3
	beq $k0,$k1,loop
	

