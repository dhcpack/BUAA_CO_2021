ori $at,123
ori $v0,456  # ��������

lui $v0,0xffff
ori $v1,$v0,456
lui $a0,0xffff
ori $a1,$a0,795  # ���츺��

addu $a2,$at,$v0  # ����
addu $a3,$v1,$a1  # ����
addu $t0,$a2,$a3  # ����
addu $t1,$a3,$a2  # ����

subu $t2,$a2,$at  # ����
subu $t3,$a1,$a3  # ����
subu $t4,$a2,$a3  # ����
subu $t5,$a3,$t4  # ����

ori $t6,0
ori $t7,1
nop
sw $t2,0($t6)
sw $t3,8($t6)
sw $t4,12($t6)
sw $t5,4($t6)

ori $k0,0
ori $k1,1
nop
lw $s0,12($t6)
lw $s1,8($t6)
lw $s2,4($t6)
lw $s3,0($t6)

ori $v1,4
ori $k0,4
subu $k1,$k1,$k1

