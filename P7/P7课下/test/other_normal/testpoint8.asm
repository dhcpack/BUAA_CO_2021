.text
ori $1,$0,0x0c01   
mtc0 $1,$12  #��SR����
ori $2,$0,0x7f00
ori $3,$0,0x7f10
ori $4,$0,21
sw $4,4($2)  #preset timer0
ori $4,$0,25   
sw $4,4($3)  #preset timer1
ori $4,$0,11
sw $4,0($2) #��timer0��ʱ
sw $4,0($3) #��timer1��ʱ

loop:
addu $3,$2,$1
ori $4,$0,0x1234
multu $1,$2
div $3,$4
nop

.ktext 0x4180
mfc0 $11,$12
mfc0 $11,$13
mfc0 $11, $14
ori $11,$0,10 
ori $12,$0,0x7f00
ori $13,$0,0x7f10
sw $11,0($12)
sw $11,0($13) #���ж�
ori $14,$0,10
ori $15,$0,7
sw $14,4($12)
sw $15,4($13) #preset
ori $11,$0,11 
sw $11,0($12)
sw $11,0($13) #���ж�
eret