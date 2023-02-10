ori    $at, $0, 65534
lui    $v0, 65534
srl    $v1, $v0, 8
slt    $a0, $v1, $v0
sltu   $a1, $v1, $v0
addi   $t0, $0, 8
addi   $at, $0, 4
sub    $t1, $t0, $at
addiu  $a2, $0, 0
sw     $at, 0($0)
sh     $v1, 6($0)
sb     $at, 9($0)
addi   $a2, $a2, 4
lw     $at, 0($a2)
sb     $at, -4($t0)
bltz   $at, L1
addi   $a3, $0, 4660
lhu    $0, 0($0)
L1:jal    L2
sb     $a3, 12($0)
ori    $at, $0, 65535
sh     $at, 0($0)
lhu    $at, 2($0)
jr     $fp
nop
L2:lw     $at, -4($t0)
ori    $at, $0, 255
sh     $at, 0($t1)
lbu    $t1, 3($t1)
bne    $t1, $at, L3
ori    $v1, $0, 17185
L6:jalr   $fp, $ra
nop
blez   $0, L4
nop
lw     $0, 0($0)
L4:j      L5
nop
L3:j      L6
nop
L5:j      L7
nop
L7:nop
lui    $at, 1
ori    $at, $at, 13689
xor    $at, $0, $at
lui    $v0, 65535
lui    $at, 15
ori    $at, $at, 9636
add    $v1, $0, $at
sw     $at, 0($0)
sw     $v0, 4($0)
beq    $a0, $a1, L8
add    $at, $at, $at
and    $v1, $at, $a2
L8:nor    $a0, $a1, $v1
blez   $a2, L9
sllv   $a0, $a1, $a0
xori   $v0, $v0, 123
L9:sltiu  $a1, $v1, 2
jal    L10
nop
j      L11
addiu  $v0, $a0, 1345
bne    $v0, $v1, L12
sub    $v1, $a0, $v0
sllv   $v0, $a3, $v1
L12:lb     $t4, 3($0)
jr     $ra
lhu    $t5, 6($0)
lw     $at, 0($0)
lb     $a2, 5($0)
lhu    $v1, 6($0)
lbu    $a2, 7($0)
addu   $a2, $a2, $a2
subu   $v0, $v1, $at
sw     $a3, 8($0)
add    $v0, $v0, $v0
bne    $a1, $a2, L13
srl    $v1, $v0, 1
L13:nop
nop
sll    $0, $0, 5
nop
sll    $0, $0, 2
ori    $at, $at, 123
ori    $v0, $v0, 456
ori    $v1, $v1, 111
addi   $at, $at, 345
addi   $v0, $v0, 123
addi   $a0, $at, 123
addi   $a0, $a0, 234
subu   $a0, $a0, $at
addi   $a0, $a0, 2113
addi   $a0, $a0, -132
addiu  $v1, $v0, 323
addiu  $v1, $v0, -323
addiu  $v1, $v1, 123
andi   $v1, $v1, 1234
lui    $at, 65535
ori    $at, $at, 64303
and    $v1, $v1, $at
andi   $a0, $v1, 123
beq    $a0, $v1, L14
nop
ori    $v0, $v1, 999
jal    L15
L10:nop
xori   $v0, $v0, 121
L14:add    $ra, $at, $ra
and    $ra, $v0, $ra
addi   $ra, $ra, 234
ori    $a0, $ra, 1234
xori   $a1, $a0, 13488
addi   $a2, $a1, 0
L11:beq    $a2, $a1, L16
nop
ori    $a0, $v0, 13
L16:xori   $a0, $v0, 1231
xori   $v0, $a0, 333
addu   $v0, $v0, $v1
xori   $a0, $v0, 213
lui    $a0, 993
xori   $a0, $a0, 333
jal    L17
nop
ori    $ra, $ra, 444
addi   $at, $0, 4
addi   $v0, $0, 6
sll    $a0, $v1, 4
srl    $a0, $v1, 2
lui    $at, 65535
ori    $at, $at, 65532
or     $a0, $0, $at
sra    $a0, $a0, 5
sra    $a0, $a0, 1
sllv   $a0, $a0, $at
sllv   $a0, $a0, $v0
ori    $a0, $0, 342
sllv   $a0, $a0, $at
sllv   $a0, $a0, $v0
lui    $at, 65535
ori    $at, $at, 65524
or     $a0, $0, $at
srlv   $a0, $a0, $at
srav   $a0, $a0, $at
and    $a0, $a0, $at
slti   $v1, $a0, 123
slti   $v1, $a0, -123
sltiu  $v1, $a0, 22
sltiu  $v1, $a0, -222
ori    $at, $0, 3
slt    $a0, $v1, $at
slt    $a0, $v1, $a0
blez   $a0, L18
nop
ori    $a0, $a0, 442
L18:xor    $a0, $a0, $v0
xor    $a0, $a0, $at
or     $a0, $a0, $v0
and    $a0, $v0, $at
addi   $at, $0, 13180
jalr   $v0, $at
nop
ori    $at, $at, 113
addi   $ra, $ra, 12
addi   $v0, $0, -123
bgez   $v0, L19
nop
L15:addi   $v0, $v0, 222
bgez   $v0, L19
nop
ori    $at, $at, 1231
beq    $0, $0, L19
nop
xor    $a0, $a0, $at
or     $a0, $a0, $v0
L19:addiu  $v0, $0, 4660
lui    $at, 65535
ori    $v1, $at, 9029
addiu  $a0, $0, 2
addiu  $a1, $0, 563
lui    $at, 61695
ori    $a2, $at, 4928
addiu  $a3, $0, -4
addiu  $t0, $0, 16
addiu  $t1, $0, 4
L17:add    $t2, $v0, $v1
addu   $t2, $t2, $t2
add    $t3, $t2, $v0
addu   $t4, $t3, $t3
addu   $t5, $t4, $a0
sub    $t5, $t5, $t4
sub    $t3, $t5, $t5
beq    $t3, $v0, L20
subu   $t4, $t2, $a0
subu   $t2, $t4, $t3
L20:sllv   $t6, $t2, $a0
srlv   $t6, $t6, $t6
subu   $t2, $t1, $v0
beq    $t2, $v0, L21
addu   $t7, $t6, $t6
and    $s0, $t7, $t6
L21:srav   $s0, $a2, $v0
srav   $s1, $s0, $s0
sllv   $s2, $s1, $s1
sllv   $s3, $s2, $a0
srlv   $t2, $a3, $a1
srlv   $t3, $t2, $v0
srlv   $t4, $t3, $a0
and    $t5, $t4, $t3
and    $t6, $t5, $v1
bne    $t6, $t5, L22
nor    $t7, $t6, $v0
addu   $t4, $t7, $t6
L22:srav   $s4, $a3, $a3
srav   $s5, $a3, $s4
nor    $t4, $s5, $t3
and    $t5, $t4, $t3
subu   $t2, $t1, $a0
bne    $t2, $a0, L23
srav   $t4, $a3, $a0
slt    $s6, $a3, $a0
L23:and    $t6, $v0, $v1
ori    $t3, $a3, 0
subu   $t3, $a3, $v1
blez   $t3, L24
or     $t4, $t3, $v0
or     $t5, $t4, $v1
or     $t6, $t5, $t4
L24:xor    $t5, $t0, $v0
xor    $s0, $t5, $v0
xor    $s1, $s0, $t5
nor    $s2, $s1, $v0
nor    $s3, $s2, $v0
nor    $s4, $s3, $s2
ori    $t3, $v0, 0
subu   $t3, $v1, $v1
blez   $t3, L25
slt    $t3, $t3, $a3
nor    $t4, $t3, $v0
L25:blez   $a3, L26
sltu   $t4, $a3, $v0
nor    $s2, $t4, $v0
L26:slt    $s2, $a2, $a3
slt    $s3, $a3, $s2
slt    $s4, $s3, $s2
sltu   $s3, $a2, $a3
sltu   $s4, $a3, $s2
sltu   $s5, $s4, $s3
ori    $t3, $0, 0
addu   $t3, $a3, $t1
bgtz   $t3, L27
xor    $s1, $s0, $t5
nor    $s2, $s1, $v0
nop
L27:subu   $t3, $a0, $t1
bgtz   $t3, L28
slt    $t4, $t3, $v1
nor    $t5, $t4, $t3
nop
L28:ori    $t3, $0, 0
addu   $t3, $a3, $t1
bltz   $t3, L29
nop
or     $t4, $t3, $t4
L29:ori    $t4, $0, 0
subu   $t4, $t1, $t0
bltz   $t4, L30
nop
nor    $s2, $s1, $v0
L30:srav   $t3, $a3, $t1
bgez   $t3, L31
and    $t4, $t3, $v0
sltu   $t5, $t4, $t0
L31:ori    $t3, $a3, 0
subu   $t3, $t3, $t3
bgez   $t3, L32
srlv   $s3, $a3, $t1
and    $s2, $s3, $t4
L32:j      L33
srlv   $t4, $t3, $a0
and    $t5, $t4, $t3
addu   $s2, $a3, $t1
subu   $s3, $s0, $s2
or     $s4, $s3, $s2
and    $s5, $s4, $s3
jal    L34
xor    $t4, $s2, $s6
and    $s3, $t4, $t5
j      L35
nop
sltu   $s6, $ra, $a3
sllv   $s3, $a3, $t1
addu   $s2, $s3, $v1
nor    $s3, $s2, $s3
jr     $ra
srav   $s2, $a3, $v0
slt    $s3, $s2, $v1
addi   $ra, $ra, 48
jr     $ra
nor    $s2, $t4, $t4
nop
nop
nop
nop
nop
sllv   $t2, $v0, $t1
or     $t4, $t2, $v0
nop
ori    $t4, $ra, 0
addi   $t4, $t4, 64
nop
nop
nor    $t2, $t1, $v0
jalr   $s1, $t4
srav   $s2, $a3, $v0
or     $s3, $v0, $s1
addu   $s3, $s3, $s3
L33:
L34:
L35: