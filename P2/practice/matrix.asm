.data
 	matrix: .word 0:256 # ����16*16�ľ��󣬿���ֱ�ӳ�ʼ��Ԫ��
 
.macro getindex(%ans,%i,%j,%row)
	mult %i,%row
	mflo %ans
	add %ans,%ans,%j
	sll %ans,2
.end_macro

.macro getnum(%num,%i,%j,%row)
	getindex(%num,%i,%j,%row)
	lw %num,matrix(%num)
.end_macro
 
.macro setnum(%num,%i,%j,%row)
	getindex($t9,%i,%j,%row)
	sw %num,matrix($t9)
.end_macro
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 # ����ֵ
 li $s0,3  # m
 li $s1,4  # n
 
 li $t0,0  # i 
 li $t1,0  # j
 
 
 loop:
 	readword($t2)
 	getindex($t3)
 	sw $t2,array($t3)
 	addi $t1,$t1,1
 	bne $t1,$s1,loop
 	li $t1,0
 	addi $t0,1
 	bne $t0,$s0,loop
 # �������뷽ʽֻ��Ҫһ��ѭ�������ұ���Ҫ����һ��������Ԫ��
 
 	