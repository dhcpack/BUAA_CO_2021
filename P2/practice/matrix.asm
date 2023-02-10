.data
 	matrix: .word 0:256 # 声明16*16的矩阵，可以直接初始化元素
 
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 # 矩阵赋值
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
 # 这种输入方式只需要一个循环，而且必须要输入一个及以上元素
 
 	