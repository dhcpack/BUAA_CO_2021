ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance930
nop
entrance930:
jal block930
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit930
nop
block930:

ori $4 $16 941
or $1 $4 $4
sw $1 11160($0)

ori $4 $18 2952
nop
or $1 $4 $4
sw $1 11164($0)

ori $4 $19 2019
nop
nop
or $1 $4 $4
sw $1 11168($0)

jalr $11, $ra
nop
exit930:


j entrance931
nop
entrance931:
jal block931
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit931
nop
block931:

ori $8 $23 2567
xor $1 $8 $8
sw $1 11172($0)

ori $8 $21 2851
nop
xor $1 $8 $8
sw $1 11176($0)

ori $8 $19 1792
nop
nop
xor $1 $8 $8
sw $1 11180($0)

jr $ra
nop
exit931:


j entrance932
nop
entrance932:
jal block932
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit932
nop
block932:

ori $5 $21 3197
nor $1 $5 $5
sw $1 11184($0)

ori $5 $23 1387
nop
nor $1 $5 $5
sw $1 11188($0)

ori $5 $19 724
nop
nop
nor $1 $5 $5
sw $1 11192($0)

jr $ra
nop
exit932:


j entrance933
nop
entrance933:
jal block933
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit933
nop
block933:

ori $6 $16 3963
addi $18 $6 2769
sw $18 11196($0)

ori $6 $18 1947
nop
addi $22 $6 1683
sw $22 11200($0)

ori $6 $20 3986
nop
nop
addi $18 $6 1959
sw $18 11204($0)

jalr $18, $ra
nop
exit933:


j entrance934
nop
entrance934:
jal block934
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit934
nop
block934:

ori $4 $22 2958
addiu $19 $4 3634
sw $19 11208($0)

ori $4 $23 2502
nop
addiu $19 $4 2963
sw $19 11212($0)

ori $4 $18 3368
nop
nop
addiu $18 $4 599
sw $18 11216($0)

jalr $4, $ra
nop
exit934:


j entrance935
nop
entrance935:
jal block935
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit935
nop
block935:

ori $15 $23 500
andi $20 $15 3256
sw $20 11220($0)

ori $15 $16 2453
nop
andi $20 $15 3561
sw $20 11224($0)

ori $15 $23 596
nop
nop
andi $22 $15 889
sw $22 11228($0)

jalr $11, $ra
nop
exit935:


j entrance936
nop
entrance936:
jal block936
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit936
nop
block936:

ori $9 $19 1292
ori $19 $9 1133
sw $19 11232($0)

ori $9 $22 964
nop
ori $23 $9 3342
sw $23 11236($0)

ori $9 $23 1266
nop
nop
ori $17 $9 4084
sw $17 11240($0)

jalr $23, $ra
nop
exit936:


j entrance937
nop
entrance937:
jal block937
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit937
nop
block937:

ori $10 $17 1497
xori $18 $10 450
sw $18 11244($0)

ori $10 $16 3888
nop
xori $22 $10 2177
sw $22 11248($0)

ori $10 $18 725
nop
nop
xori $21 $10 455
sw $21 11252($0)

jalr $3, $ra
nop
exit937:


j entrance938
nop
entrance938:
jal block938
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit938
nop
block938:

ori $5 $17 2320
lui $16 2654
sw $16 11256($0)

ori $5 $19 1339
nop
lui $17 1732
sw $17 11260($0)

ori $5 $23 761
nop
nop
lui $19 1252
sw $19 11264($0)

jr $ra
nop
exit938:


j entrance939
nop
entrance939:
jal block939
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit939
nop
block939:

ori $12 $16 2711
slt $1 $12 $12
sw $1 11268($0)

ori $12 $16 952
nop
slt $1 $12 $12
sw $1 11272($0)

ori $12 $18 2043
nop
nop
slt $1 $12 $12
sw $1 11276($0)

jr $ra
nop
exit939:


j entrance940
nop
entrance940:
jal block940
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit940
nop
block940:

ori $2 $16 246
slti $18 $2 3596
sw $18 11280($0)

ori $2 $17 2495
nop
slti $22 $2 2490
sw $22 11284($0)

ori $2 $23 1427
nop
nop
slti $21 $2 3211
sw $21 11288($0)

jr $ra
nop
exit940:


j entrance941
nop
entrance941:
jal block941
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit941
nop
block941:

ori $7 $19 3485
sltiu $23 $7 131
sw $23 11292($0)

ori $7 $23 3737
nop
sltiu $20 $7 511
sw $20 11296($0)

ori $7 $18 457
nop
nop
sltiu $22 $7 919
sw $22 11300($0)

jalr $22, $ra
nop
exit941:


j entrance942
nop
entrance942:
jal block942
nop
ori $21 $0 1
subu $21 $21 $21
beq $21 $0 exit942
nop
block942:

ori $5 $22 3941
sltu $1 $5 $5
sw $1 11304($0)

ori $5 $21 404
nop
sltu $1 $5 $5
sw $1 11308($0)

ori $5 $18 2919
nop
nop
sltu $1 $5 $5
sw $1 11312($0)

jr $ra
nop
exit942:


j entrance943
nop
entrance943:
jal block943
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit943
nop
block943:

ori $3 $22 2886
mthi $3
sw $3 11316($0)

ori $3 $17 66
nop
mthi $3
sw $3 11320($0)

ori $3 $19 307
nop
nop
mthi $3
sw $3 11324($0)

jr $ra
nop
exit943:


j entrance944
nop
entrance944:
jal block944
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit944
nop
block944:

ori $7 $20 434
mtlo $7
sw $7 11328($0)

ori $7 $23 405
nop
mtlo $7
sw $7 11332($0)

ori $7 $23 2857
nop
nop
mtlo $7
sw $7 11336($0)

jr $ra
nop
exit944:

ori $16 $0 4097
ori $17 $0 4456
ori $18 $0 3946
ori $19 $0 2959
ori $20 $0 3980
ori $21 $0 685
ori $22 $0 1264
ori $23 $0 244

j entrance945
nop
entrance945:
jal block945
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit945
nop
block945:

xori $9 $16 1424
lb $20 676($0)
sw $20 11340($0)

xori $9 $17 1088
nop
lb $17 684($0)
sw $17 11344($0)

xori $9 $22 1772
nop
nop
lb $16 6292($0)
sw $16 11348($0)

jr $ra
nop
exit945:


j entrance946
nop
entrance946:
jal block946
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit946
nop
block946:

xori $5 $18 3680
lbu $18 7088($0)
sw $18 11352($0)

xori $5 $22 371
nop
lbu $21 4496($0)
sw $21 11356($0)

xori $5 $21 3222
nop
nop
lbu $17 640($0)
sw $17 11360($0)

jalr $23, $ra
nop
exit946:


j entrance947
nop
entrance947:
jal block947
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit947
nop
block947:

xori $12 $17 812
lh $21 6748($0)
sw $21 11364($0)

xori $12 $16 2723
nop
lh $23 196($0)
sw $23 11368($0)

xori $12 $20 738
nop
nop
lh $16 6180($0)
sw $16 11372($0)

jalr $8, $ra
nop
exit947:


j entrance948
nop
entrance948:
jal block948
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit948
nop
block948:

xori $10 $20 3492
lhu $18 4092($0)
sw $18 11376($0)

xori $10 $18 844
nop
lhu $21 2876($0)
sw $21 11380($0)

xori $10 $21 2941
nop
nop
lhu $19 496($0)
sw $19 11384($0)

jr $ra
nop
exit948:


j entrance949
nop
entrance949:
jal block949
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit949
nop
block949:

xori $2 $20 3275
lw $22 356($0)
sw $22 11388($0)

xori $2 $20 1246
nop
lw $18 4520($0)
sw $18 11392($0)

xori $2 $20 3921
nop
nop
lw $19 5648($0)
sw $19 11396($0)

jr $ra
nop
exit949:


j entrance950
nop
entrance950:
jal block950
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit950
nop
block950:

xori $1 $21 1467
add $1 $1 $1
sw $1 11400($0)

xori $1 $21 2222
nop
add $1 $1 $1
sw $1 11404($0)

xori $1 $16 2314
nop
nop
add $1 $1 $1
sw $1 11408($0)

jr $ra
nop
exit950:


j entrance951
nop
entrance951:
jal block951
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit951
nop
block951:

xori $11 $20 1313
addu $1 $11 $11
sw $1 11412($0)

xori $11 $20 1261
nop
addu $1 $11 $11
sw $1 11416($0)

xori $11 $16 2080
nop
nop
addu $1 $11 $11
sw $1 11420($0)

jalr $25, $ra
nop
exit951:


j entrance952
nop
entrance952:
jal block952
nop
ori $22 $0 1
subu $22 $22 $22
beq $22 $0 exit952
nop
block952:

xori $5 $18 3019
sub $1 $5 $5
sw $1 11424($0)

xori $5 $20 1666
nop
sub $1 $5 $5
sw $1 11428($0)

xori $5 $18 2654
nop
nop
sub $1 $5 $5
sw $1 11432($0)

jalr $22, $ra
nop
exit952:


j entrance953
nop
entrance953:
jal block953
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit953
nop
block953:

xori $7 $16 1877
subu $1 $7 $7
sw $1 11436($0)

xori $7 $21 2431
nop
subu $1 $7 $7
sw $1 11440($0)

xori $7 $21 1535
nop
nop
subu $1 $7 $7
sw $1 11444($0)

jr $ra
nop
exit953:


j entrance954
nop
entrance954:
jal block954
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit954
nop
block954:

xori $7 $22 42
mult $7 $7
sw $7 11448($0)

xori $7 $16 3347
nop
mult $7 $7
sw $7 11452($0)

xori $7 $16 3864
nop
nop
mult $7 $7
sw $7 11456($0)

jr $ra
nop
exit954:


j entrance955
nop
entrance955:
jal block955
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit955
nop
block955:

xori $1 $23 3023
multu $1 $1
sw $1 11460($0)

xori $1 $16 348
nop
multu $1 $1
sw $1 11464($0)

xori $1 $21 792
nop
nop
multu $1 $1
sw $1 11468($0)

jr $ra
nop
exit955:


j entrance956
nop
entrance956:
jal block956
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit956
nop
block956:

xori $12 $20 1357
div $12 $12
sw $12 11472($0)

xori $12 $19 786
nop
div $12 $12
sw $12 11476($0)

xori $12 $16 3679
nop
nop
div $12 $12
sw $12 11480($0)

jalr $17, $ra
nop
exit956:


j entrance957
nop
entrance957:
jal block957
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit957
nop
block957:

xori $12 $20 3635
divu $12 $12
sw $12 11484($0)

xori $12 $21 3801
nop
divu $12 $12
sw $12 11488($0)

xori $12 $21 2679
nop
nop
divu $12 $12
sw $12 11492($0)

jr $ra
nop
exit957:


j entrance958
nop
entrance958:
jal block958
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit958
nop
block958:

xori $11 $21 3294
sll $11 $20 19
sw $1 11496($0)

xori $11 $23 2090
nop
sll $11 $17 30
sw $1 11500($0)

xori $11 $22 74
nop
nop
sll $11 $22 14
sw $1 11504($0)

jalr $6, $ra
nop
exit958:


j entrance959
nop
entrance959:
jal block959
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit959
nop
block959:

xori $5 $22 2371
srl $5 $16 18
sw $1 11508($0)

xori $5 $21 4097
nop
srl $5 $21 16
sw $1 11512($0)

xori $5 $21 2115
nop
nop
srl $5 $21 17
sw $1 11516($0)

jr $ra
nop
exit959:


j entrance960
nop
entrance960:
jal block960
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit960
nop
block960:

xori $10 $20 2025
sra $10 $19 13
sw $1 11520($0)

xori $10 $21 1753
nop
sra $10 $22 18
sw $1 11524($0)

xori $10 $23 2458
nop
nop
sra $10 $16 12
sw $1 11528($0)

jalr $4, $ra
nop
exit960: