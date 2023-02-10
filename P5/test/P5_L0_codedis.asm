ori $28, $0, 0x0      # $28 <= 0
ori $29, $0, 0x0      # $29 <= 0
ori $1, $7, 0x1010   # $1  <= 0x1010
lw $10, 0x0 ($0)      # $10 <= 0
sw $1, 0x0 ($0)       #  *0 <= 0x1010
lui $2, 0x8723        # $2  <= 0x87230000
ori $3, $0, 0x7856    # $3  <= 0x00007856
lui $4, 0x85ff       # $4  <= 0x85ff0000
ori $5, $0, 0x1       # $5  <= 0x1
lui $6, 0xffff            # $6  <= 0xffff0000
ori $7, $7, 0xffff        # $7  <= 0xffff
addu $1, $1, $2       #  $1  <= 0x87231010
addu $9, $1, $3       # $9  <= 0x87238866
subu $8, $1, $2       # $8  <= 0x1010
subu $0, $7, $0       # should not write anything
nop
nop
nop
nop
nop

beq $28, $17, 0x3 # $28(0) == $(17), jump !
nop
j 0x30b0
nop
beq $1, $2, 0x13  # $1 != $2, no jump
nop
ori $2, $0, 0xc   # $2 <= 0xc
nop
nop
nop
jal 0x3088        # jump to 3088, $31 <= 0x3080
sw $1, 0x0 ($2)  # *0xC <= 0x87231010


j 0x30b0
addu $1, $1, $2   # $1 <= 0x308c


addu $1, $1, $2   # $1 <= 0x8723101c
addu $1, $1, $2   # $1 <= 0x87231028
addu $1, $1, $2   # $1 <= 0x87231034
sw $31, 0x0 ($2)  # *0xC <= 0x3080
lw  $1, 0x0 ($2)  # $1 <= 0x3080
nop
nop
nop
jr $1             # Jump to 0x3080
sw $31, 0x0 ($2)  # *0xC <= 0x3080

beq  $0, $0, -1   # infinite loop
nop
