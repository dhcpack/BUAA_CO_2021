ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance1023
nop
entrance1023:
jal block1023
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit1023
nop
block1023:

slt $12 $20 $17
subu $1 $12 $12
sw $1 12276($0)

slt $12 $22 $22
nop
subu $1 $12 $12
sw $1 12280($0)

slt $12 $23 $18
nop
nop
subu $1 $12 $12
sw $1 12284($0)

jalr $19, $ra
nop
exit1023:


j entrance1024
nop
entrance1024:
jal block1024
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1024
nop
block1024:

slt $12 $23 $17
mult $12 $12
sw $12 10288($0)

slt $12 $19 $21
nop
mult $12 $12
sw $12 10292($0)

slt $12 $18 $22
nop
nop
mult $12 $12
sw $12 10296($0)

jr $ra
nop
exit1024:


j entrance1025
nop
entrance1025:
jal block1025
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1025
nop
block1025:

slt $10 $18 $21
multu $10 $10
sw $10 10300($0)

slt $10 $20 $17
nop
multu $10 $10
sw $10 10304($0)

slt $10 $18 $19
nop
nop
multu $10 $10
sw $10 10308($0)

jalr $9, $ra
nop
exit1025:


j entrance1026
nop
entrance1026:
jal block1026
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit1026
nop
block1026:

slt $4 $18 $21
div $4 $4
sw $4 10312($0)

slt $4 $19 $23
nop
div $4 $4
sw $4 10316($0)

slt $4 $23 $23
nop
nop
div $4 $4
sw $4 10320($0)

jr $ra
nop
exit1026:


j entrance1027
nop
entrance1027:
jal block1027
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit1027
nop
block1027:

slt $11 $16 $18
divu $11 $11
sw $11 10324($0)

slt $11 $22 $17
nop
divu $11 $11
sw $11 10328($0)

slt $11 $22 $20
nop
nop
divu $11 $11
sw $11 10332($0)

jalr $4, $ra
nop
exit1027:


j entrance1028
nop
entrance1028:
jal block1028
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1028
nop
block1028:

slt $8 $19 $22
sll $8 $17 23
sw $1 10336($0)

slt $8 $17 $20
nop
sll $8 $16 31
sw $1 10340($0)

slt $8 $22 $21
nop
nop
sll $8 $16 18
sw $1 10344($0)

jr $ra
nop
exit1028:


j entrance1029
nop
entrance1029:
jal block1029
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit1029
nop
block1029:

slt $3 $18 $17
srl $3 $17 11
sw $1 10348($0)

slt $3 $20 $16
nop
srl $3 $21 12
sw $1 10352($0)

slt $3 $19 $17
nop
nop
srl $3 $20 22
sw $1 10356($0)

jr $ra
nop
exit1029:


j entrance1030
nop
entrance1030:
jal block1030
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit1030
nop
block1030:

slt $5 $16 $23
sra $5 $20 10
sw $1 10360($0)

slt $5 $22 $18
nop
sra $5 $21 18
sw $1 10364($0)

slt $5 $23 $17
nop
nop
sra $5 $17 29
sw $1 10368($0)

jr $ra
nop
exit1030:


j entrance1031
nop
entrance1031:
jal block1031
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit1031
nop
block1031:

slt $2 $17 $23
sllv $1 $2 $2
sw $1 10372($0)

slt $2 $18 $19
nop
sllv $1 $2 $2
sw $1 10376($0)

slt $2 $18 $17
nop
nop
sllv $1 $2 $2
sw $1 10380($0)

jr $ra
nop
exit1031:


j entrance1032
nop
entrance1032:
jal block1032
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit1032
nop
block1032:

slt $3 $21 $18
srlv $1 $3 $3
sw $1 10384($0)

slt $3 $22 $21
nop
srlv $1 $3 $3
sw $1 10388($0)

slt $3 $16 $20
nop
nop
srlv $1 $3 $3
sw $1 10392($0)

jalr $14, $ra
nop
exit1032:


j entrance1033
nop
entrance1033:
jal block1033
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1033
nop
block1033:

slt $6 $23 $23
srav $1 $6 $6
sw $1 10396($0)

slt $6 $21 $20
nop
srav $1 $6 $6
sw $1 10400($0)

slt $6 $17 $18
nop
nop
srav $1 $6 $6
sw $1 10404($0)

jalr $3, $ra
nop
exit1033:


j entrance1034
nop
entrance1034:
jal block1034
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit1034
nop
block1034:

slt $7 $17 $18
and $1 $7 $7
sw $1 10408($0)

slt $7 $22 $16
nop
and $1 $7 $7
sw $1 10412($0)

slt $7 $16 $17
nop
nop
and $1 $7 $7
sw $1 10416($0)

jalr $20, $ra
nop
exit1034:


j entrance1035
nop
entrance1035:
jal block1035
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit1035
nop
block1035:

slt $6 $19 $16
or $1 $6 $6
sw $1 10420($0)

slt $6 $18 $20
nop
or $1 $6 $6
sw $1 10424($0)

slt $6 $21 $19
nop
nop
or $1 $6 $6
sw $1 10428($0)

jr $ra
nop
exit1035:


j entrance1036
nop
entrance1036:
jal block1036
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit1036
nop
block1036:

slt $8 $22 $19
xor $1 $8 $8
sw $1 10432($0)

slt $8 $23 $21
nop
xor $1 $8 $8
sw $1 10436($0)

slt $8 $20 $20
nop
nop
xor $1 $8 $8
sw $1 10440($0)

jr $ra
nop
exit1036:


j entrance1037
nop
entrance1037:
jal block1037
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit1037
nop
block1037:

slt $3 $18 $16
nor $1 $3 $3
sw $1 10444($0)

slt $3 $23 $23
nop
nor $1 $3 $3
sw $1 10448($0)

slt $3 $21 $16
nop
nop
nor $1 $3 $3
sw $1 10452($0)

jr $ra
nop
exit1037:


j entrance1038
nop
entrance1038:
jal block1038
nop
ori $30 $0 1
subu $30 $30 $30
beq $30 $0 exit1038
nop
block1038:

slt $9 $19 $17
addi $16 $9 1010
sw $16 10456($0)

slt $9 $21 $18
nop
addi $22 $9 3148
sw $22 10460($0)

slt $9 $18 $23
nop
nop
addi $16 $9 3864
sw $16 10464($0)

jalr $30, $ra
nop
exit1038:


j entrance1039
nop
entrance1039:
jal block1039
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit1039
nop
block1039:

slt $13 $19 $23
addiu $18 $13 3172
sw $18 10468($0)

slt $13 $18 $21
nop
addiu $20 $13 2540
sw $20 10472($0)

slt $13 $20 $17
nop
nop
addiu $17 $13 2125
sw $17 10476($0)

jalr $2, $ra
nop
exit1039:


j entrance1040
nop
entrance1040:
jal block1040
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1040
nop
block1040:

slt $2 $16 $18
andi $16 $2 3363
sw $16 10480($0)

slt $2 $20 $21
nop
andi $21 $2 3834
sw $21 10484($0)

slt $2 $22 $21
nop
nop
andi $17 $2 2545
sw $17 10488($0)

jalr $7, $ra
nop
exit1040:


j entrance1041
nop
entrance1041:
jal block1041
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit1041
nop
block1041:

slt $3 $18 $23
ori $19 $3 1818
sw $19 10492($0)

slt $3 $17 $16
nop
ori $21 $3 243
sw $21 10496($0)

slt $3 $17 $18
nop
nop
ori $20 $3 3189
sw $20 10500($0)

jalr $16, $ra
nop
exit1041:


j entrance1042
nop
entrance1042:
jal block1042
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1042
nop
block1042:

slt $14 $20 $22
xori $16 $14 2367
sw $16 10504($0)

slt $14 $16 $18
nop
xori $16 $14 871
sw $16 10508($0)

slt $14 $18 $17
nop
nop
xori $20 $14 2305
sw $20 10512($0)

jalr $25, $ra
nop
exit1042:


j entrance1043
nop
entrance1043:
jal block1043
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit1043
nop
block1043:

slt $8 $18 $20
lui $22 4050
sw $22 10516($0)

slt $8 $18 $22
nop
lui $19 1021
sw $19 10520($0)

slt $8 $18 $17
nop
nop
lui $16 476
sw $16 10524($0)

jr $ra
nop
exit1043:


j entrance1044
nop
entrance1044:
jal block1044
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit1044
nop
block1044:

slt $15 $23 $18
slt $1 $15 $15
sw $1 10528($0)

slt $15 $22 $23
nop
slt $1 $15 $15
sw $1 10532($0)

slt $15 $17 $19
nop
nop
slt $1 $15 $15
sw $1 10536($0)

jr $ra
nop
exit1044:


j entrance1045
nop
entrance1045:
jal block1045
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit1045
nop
block1045:

slt $15 $21 $22
slti $23 $15 3808
sw $23 10540($0)

slt $15 $16 $23
nop
slti $17 $15 2742
sw $17 10544($0)

slt $15 $22 $17
nop
nop
slti $18 $15 2356
sw $18 10548($0)

jr $ra
nop
exit1045:


j entrance1046
nop
entrance1046:
jal block1046
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1046
nop
block1046:

slt $13 $17 $16
sltiu $22 $13 29
sw $22 10552($0)

slt $13 $23 $16
nop
sltiu $16 $13 2936
sw $16 10556($0)

slt $13 $23 $19
nop
nop
sltiu $20 $13 724
sw $20 10560($0)

jr $ra
nop
exit1046:


j entrance1047
nop
entrance1047:
jal block1047
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1047
nop
block1047:

slt $5 $23 $16
sltu $1 $5 $5
sw $1 10564($0)

slt $5 $22 $23
nop
sltu $1 $5 $5
sw $1 10568($0)

slt $5 $19 $16
nop
nop
sltu $1 $5 $5
sw $1 10572($0)

jalr $7, $ra
nop
exit1047:


j entrance1048
nop
entrance1048:
jal block1048
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit1048
nop
block1048:

slt $5 $17 $19
mthi $5
sw $5 10576($0)

slt $5 $23 $20
nop
mthi $5
sw $5 10580($0)

slt $5 $20 $20
nop
nop
mthi $5
sw $5 10584($0)

jr $ra
nop
exit1048:


j entrance1049
nop
entrance1049:
jal block1049
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit1049
nop
block1049:

slt $14 $18 $22
mtlo $14
sw $14 10588($0)

slt $14 $18 $18
nop
mtlo $14
sw $14 10592($0)

slt $14 $17 $19
nop
nop
mtlo $14
sw $14 10596($0)

jalr $25, $ra
nop
exit1049:

ori $16 $0 560
ori $17 $0 1166
ori $18 $0 1434
ori $19 $0 381
ori $20 $0 4190
ori $21 $0 3488
ori $22 $0 2170
ori $23 $0 321

j entrance1050
nop
entrance1050:
jal block1050
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit1050
nop
block1050:

slti $9 $16 2151
lb $16 6240($0)
sw $16 10600($0)

slti $9 $19 3025
nop
lb $19 4768($0)
sw $19 10604($0)

slti $9 $17 3216
nop
nop
lb $18 3840($0)
sw $18 10608($0)

jalr $14, $ra
nop
exit1050:


j entrance1051
nop
entrance1051:
jal block1051
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit1051
nop
block1051:

slti $9 $20 3539
lbu $16 1972($0)
sw $16 10612($0)

slti $9 $17 3759
nop
lbu $19 1832($0)
sw $19 10616($0)

slti $9 $17 3611
nop
nop
lbu $17 1804($0)
sw $17 10620($0)

jr $ra
nop
exit1051:


j entrance1052
nop
entrance1052:
jal block1052
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit1052
nop
block1052:

slti $5 $22 775
lh $20 2008($0)
sw $20 10624($0)

slti $5 $19 4031
nop
lh $22 5600($0)
sw $22 10628($0)

slti $5 $19 2582
nop
nop
lh $23 3940($0)
sw $23 10632($0)

jr $ra
nop
exit1052:


j entrance1053
nop
entrance1053:
jal block1053
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit1053
nop
block1053:

slti $12 $19 3113
lhu $23 2660($0)
sw $23 10636($0)

slti $12 $16 3422
nop
lhu $18 152($0)
sw $18 10640($0)

slti $12 $23 4007
nop
nop
lhu $21 6460($0)
sw $21 10644($0)

jr $ra
nop
exit1053: