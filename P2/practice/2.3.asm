.data
	A: .asciiz "A"
	B: .asciiz "B"
	C: .asciiz "C"
	line: .asciiz "-"
	arrow: .asciiz ">"
	enter: .asciiz "\n"

.macro printchar(%char)
	la $a0,%char
	li $v0,4
	syscall
.end_macro

.macro printalpha(%alpha)
	move $a0,%alpha
	li $v0,4
	syscall
.end_macro

.macro print(%from,%to)
	printalpha(%from)
	printchar(line)
	printchar(arrow)
	printalpha(%to)
	printchar(enter)
.end_macro

.macro input(%num)
	li $v0,5
	syscall
	move %num,$v0
.end_macro

.macro save(%re)
	subi $sp,$sp,4
	sw %re,0($sp)
.end_macro

.macro load(%re)
	lw %re,0($sp)
	addi $sp,$sp,4
.end_macro

.macro saveall(%num,%from,%middle,%to)
	save(%num)
	save(%from)
	save(%middle)
	save(%to)
.end_macro

.macro loadall(%num,%from,%middle,%to)
	load(%to)
	load(%middle)
	load(%from)
	load(%num)
.end_macro

.macro exchange(%1,%2)
	move $t9,%2
	move %2,%1
	move %1,$t9
.end_macro

.text
	input($s0)
	
	move $s1,$s0
	la $s2,A
	la $s3,B
	la $s4,C  # 四个参数
	jal hanoi
	
	li $v0,10
	syscall

hanoi:
	li $t0,1
	bne $t0,$s1,else
	print($s2,$s4)
	jr $ra
else:
	save($ra)
	
	saveall($s1,$s2,$s3,$s4)
	subi $s1,$s1,1
	exchange($s3,$s4)
	jal hanoi
	
	loadall($s1,$s2,$s3,$s4)
	print($s2,$s4)
	
	subi $s1,$s1,1
	exchange($s3,$s2)
	jal hanoi
	
	load($ra)
	jr $ra
	
	
	
	
	