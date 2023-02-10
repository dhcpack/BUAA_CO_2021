lui $1,0xffff
ori $1,0xfffe  # -2
ori $2,0  # 0
ori $3,$0,2  # 2
ori $t2,5

ori $t0,9

lui $4,0x8000  # -2147483648
lui $5,0x7fff
ori $5,0xffff  #  2147483647

sw $4,8($0)
sw $5,12($0)

addu $5,$5,$3
subu $4,$4,$3


ori $t2,5
ori $t0,3
sll $t0,$t0,1
jal loop
ori $t0,9
sll $t0,$t0,1

sw $5,0($2)
sw $5,0x2ffc($2)
#sw $5,0x8000($2)


#lw $6,0x8000($2)
#lw $7,0x7fff($2)


sw $4,0($0)
sw $5,4($0)
loop:
addu $t2,$t2,$t0
sll $t2,$t2,2