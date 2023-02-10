addi   $1, $0 , 1      # $ 1 <= 1
addiu  $4, $1 , 0xfe   # $ 4 <= 0xff
addu   $2, $1 , $1     # $ 2 <= 2
add    $1, $1 , $1     # $ 1 <= 2
sub    $5, $4 , $2     # $ 5 <= 0xfd
subu   $6, $4 , $5     # $ 6 <= 2
sll    $7, $1 , 2      # $ 7 <= 8
addi   $1, $0 , 1      # $ 1 <= 1
sllv   $8, $1 , $4     # $ 8 <= 0x80000000
srl    $9, $8 , 2      # $ 9 <= 0x20000000
srlv  $10, $8 , $4     # $10 <= 1
sra   $11, $8 , 31     # $11 <= 0xffffffff
srav  $11, $8 , $11    # $11 <= 0xffffffff
lui    $1, 0xAAAA      # $ 1 <= 0xAAAA0000
ori    $2, $1 , 0xAAAA # $ 2 <= 0xAAAAaaaa
or     $3, $1 , $5     # $ 3 <= 0xAAAA00fd
nor    $4, $2 , $0     # $ 4 <= 0x55555555
nor    $5, $11, $0     # $ 5 <= 0
xor    $6, $2 , $4     # $ 6 <= 0xffffffff
xor    $7, $1 , $3     # $ 7 <= 0xfd
xori   $8, $7 , 0x57   # $ 8 <= 0xAA
addi   $9, $0 , -1     # $ 9 <= 0xffffffff (-1)
slt   $10, $9 , $0     # $10 <= 1 (-1  <  0)
slt   $10, $0 , $9     # $10 <= 0 ( 0 !< -1)
sltu  $11, $9 , $0     # $11 <= 0 (f. !<  0)
sltu  $11, $0 , $9     # $11 <= 1 ( 0  < f.)
addi   $9, $9 , -1     # $ 0 <= 0xfffffffe (-2)
slti  $12, $9 , -1     # $12 <= 1 (-2  < -1)
slti  $13, $9 , -3     # $13 <= 0 (-2 !< -3)
slti  $14, $9 ,  1     # $14 <= 1 (-2  <  1)
sltiu $15, $9 ,  1     # $15 <= 0 (.fe!<  1)
sltiu $16, $9 , -1     # $16 <= 0 (.fe <.ff)

beq $0, $0, label_1    # will jump
ori $1, $0, 0x0bd5     # $1 <= 0x0bd5 (bds #0)
ori $3, $0, 0xdead     # $3 <= 0xdead (will not execute)

label_1:
ori $1, $1, 0xa000     # $1 <= 0xabd5 (after bds)
beq $0, $1, label_2    # will not jump
ori $2, $0, 0x1bd5     # $2 <= 0x1bd5 (bds #1)
ori $3, $1, 0xa        # $3 <= 0xabdf (will be executed)

label_2:
xor  $1, $1, $1
xor  $2, $2, $2
xor  $3, $3, $3
xor  $4, $4, $4
xor  $5, $5, $5
addi $1, $0, 0x100     # $1 <= 0x100
blez $1, label_3       # will not jump
ori  $2, $0, 0x02d5    # $2 <= 0x02d5 (bds #2)
ori  $2, $2, 0xa000    # $2 <= 0xa2d5 (will exec)
label_3:
blez $0, label_4       # will jump
addi $1, $0, -1        # $1 <= f. (-1) (will exec)
ori  $2, $0, 0xdead    # $2 <= 0xdead (will not exec)
label_4:
bgtz $3, label_11      # will not jump 1st time.
nop
j label_10             # abs jump
ori $1, $0, 0x7bd5     # $1 <= 0x7bds (J bds)
ori $2, $0, 0xdead     # $2 <= 0xdead (will not exec)

label_10:
j label_4
ori $3, $0, 0x1234
xor $11, $11, $11 # will not exec
xor $12, $12, $12 # will not exec
xor $13, $13, $13 # will not exec
label_11:
xori $14, $0, 0x5678 # $14 <= 0x1234
jal  func_1
addi $ra, $ra, -4     # will exec 2 times.
lui  $2, 0xd2ad       # will not exec 1st time
beq  $3, $0, after_f1
ori  $4, $0, 0xff11   # $4 <= 0xff11
func_1:
xor  $3, $3, $3
jr $ra
ori  $4, $0, 0x5555
after_f1:
ori $5, $0, 0x8086
la   $1, func_2 # $1 <= &func_2
jalr $2, $1     # $2 <= thispc + 8
nop
nop
nop
xor $5, $5, $5 # $5 <= 0
nop
nop
nop
func_2:
beq $5, $0, after_func2
nop
jalr $2, $2
nop
after_func2:
ori $1, $0, 0x5432
