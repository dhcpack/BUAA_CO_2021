ori $16 $0 144
ori $17 $0 3621
ori $18 $0 1310
ori $19 $0 3802
ori $20 $0 3804
ori $21 $0 724
ori $22 $0 1676
ori $23 $0 3925


j entrance155
nop
entrance155:
jal block155
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit155
nop
block155:

lw $9 1856($0)
sra $9 $23 15
sw $1 1860($0)

lw $9 416($0)
nop
sra $9 $18 12
sw $1 1864($0)

lw $9 1864($0)
nop
nop
sra $9 $23 11
sw $1 1868($0)

jalr $5, $ra
nop
exit155:


j entrance156
nop
entrance156:
jal block156
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit156
nop
block156:

lw $7 1868($0)
sllv $1 $7 $7
sw $1 1872($0)

lw $7 1872($0)
nop
sllv $1 $7 $7
sw $1 1876($0)

lw $7 1876($0)
nop
nop
sllv $1 $7 $7
sw $1 1880($0)

jalr $29, $ra
nop
exit156:


j entrance157
nop
entrance157:
jal block157
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit157
nop
block157:

lw $9 1740($0)
srlv $1 $9 $9
sw $1 1884($0)

lw $9 284($0)
nop
srlv $1 $9 $9
sw $1 1888($0)

lw $9 1888($0)
nop
nop
srlv $1 $9 $9
sw $1 1892($0)

jalr $1, $ra
nop
exit157:


j entrance158
nop
entrance158:
jal block158
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit158
nop
block158:

lw $13 1464($0)
srav $1 $13 $13
sw $1 1896($0)

lw $13 1416($0)
nop
srav $1 $13 $13
sw $1 1900($0)

lw $13 1900($0)
nop
nop
srav $1 $13 $13
sw $1 1904($0)

jalr $19, $ra
nop
exit158:


j entrance159
nop
entrance159:
jal block159
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit159
nop
block159:

lw $11 1904($0)
and $1 $11 $11
sw $1 1908($0)

lw $11 1908($0)
nop
and $1 $11 $11
sw $1 1912($0)

lw $11 1912($0)
nop
nop
and $1 $11 $11
sw $1 1916($0)

jr $ra
nop
exit159:


j entrance160
nop
entrance160:
jal block160
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit160
nop
block160:

lw $8 1916($0)
or $1 $8 $8
sw $1 1920($0)

lw $8 1920($0)
nop
or $1 $8 $8
sw $1 1924($0)

lw $8 1924($0)
nop
nop
or $1 $8 $8
sw $1 1928($0)

jr $ra
nop
exit160:


j entrance161
nop
entrance161:
jal block161
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit161
nop
block161:

lw $12 1928($0)
xor $1 $12 $12
sw $1 1932($0)

lw $12 1624($0)
nop
xor $1 $12 $12
sw $1 1936($0)

lw $12 136($0)
nop
nop
xor $1 $12 $12
sw $1 1940($0)

jr $ra
nop
exit161:


j entrance162
nop
entrance162:
jal block162
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit162
nop
block162:

lw $5 1940($0)
nor $1 $5 $5
sw $1 1944($0)

lw $5 1944($0)
nop
nor $1 $5 $5
sw $1 1948($0)

lw $5 1948($0)
nop
nop
nor $1 $5 $5
sw $1 1952($0)

jr $ra
nop
exit162:


j entrance163
nop
entrance163:
jal block163
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit163
nop
block163:

lw $4 1952($0)
addi $20 $4 3828
sw $20 1956($0)

lw $4 1700($0)
nop
addi $21 $4 1108
sw $21 1960($0)

lw $4 1960($0)
nop
nop
addi $18 $4 1460
sw $18 1964($0)

jr $ra
nop
exit163:


j entrance164
nop
entrance164:
jal block164
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit164
nop
block164:

lw $1 1964($0)
addiu $21 $1 2681
sw $21 1968($0)

lw $1 1968($0)
nop
addiu $21 $1 942
sw $21 1972($0)

lw $1 1972($0)
nop
nop
addiu $19 $1 3823
sw $19 1976($0)

jr $ra
nop
exit164:


j entrance165
nop
entrance165:
jal block165
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit165
nop
block165:

lw $3 1976($0)
andi $22 $3 3108
sw $22 1980($0)

lw $3 1980($0)
nop
andi $18 $3 289
sw $18 1984($0)

lw $3 1984($0)
nop
nop
andi $21 $3 2448
sw $21 1988($0)

jr $ra
nop
exit165:


j entrance166
nop
entrance166:
jal block166
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit166
nop
block166:

lw $12 1988($0)
ori $17 $12 1780
sw $17 1992($0)

lw $12 1992($0)
nop
ori $20 $12 3795
sw $20 1996($0)

lw $12 1996($0)
nop
nop
ori $23 $12 2711
sw $23 2000($0)

jr $ra
nop
exit166:


j entrance167
nop
entrance167:
jal block167
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit167
nop
block167:

lw $11 2000($0)
xori $19 $11 1745
sw $19 2004($0)

lw $11 444($0)
nop
xori $18 $11 1040
sw $18 2008($0)

lw $11 2008($0)
nop
nop
xori $23 $11 688
sw $23 2012($0)

jr $ra
nop
exit167:


j entrance168
nop
entrance168:
jal block168
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit168
nop
block168:

lw $14 2012($0)
lui $16 1367
sw $16 2016($0)

lw $14 1544($0)
nop
lui $18 3869
sw $18 2020($0)

lw $14 2020($0)
nop
nop
lui $17 428
sw $17 2024($0)

jr $ra
nop
exit168:


j entrance169
nop
entrance169:
jal block169
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit169
nop
block169:

lw $12 2024($0)
slt $1 $12 $12
sw $1 2028($0)

lw $12 1280($0)
nop
slt $1 $12 $12
sw $1 2032($0)

lw $12 2032($0)
nop
nop
slt $1 $12 $12
sw $1 2036($0)

jalr $4, $ra
nop
exit169:


j entrance170
nop
entrance170:
jal block170
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit170
nop
block170:

lw $6 2036($0)
slti $23 $6 3846
sw $23 2040($0)

lw $6 2040($0)
nop
slti $18 $6 3575
sw $18 2044($0)

lw $6 2044($0)
nop
nop
slti $21 $6 674
sw $21 2048($0)

jr $ra
nop
exit170:


j entrance171
nop
entrance171:
jal block171
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit171
nop
block171:

lw $12 1568($0)
sltiu $17 $12 3909
sw $17 2052($0)

lw $12 2052($0)
nop
sltiu $22 $12 1112
sw $22 2056($0)

lw $12 624($0)
nop
nop
sltiu $16 $12 1046
sw $16 2060($0)

jr $ra
nop
exit171:


j entrance172
nop
entrance172:
jal block172
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit172
nop
block172:

lw $11 2060($0)
sltu $1 $11 $11
sw $1 2064($0)

lw $11 1532($0)
nop
sltu $1 $11 $11
sw $1 2068($0)

lw $11 2068($0)
nop
nop
sltu $1 $11 $11
sw $1 2072($0)

jr $ra
nop
exit172:


j entrance173
nop
entrance173:
jal block173
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit173
nop
block173:

lw $10 2072($0)
mthi $10
sw $10 2076($0)

lw $10 1056($0)
nop
mthi $10
sw $10 2080($0)

lw $10 2080($0)
nop
nop
mthi $10
sw $10 2084($0)

jr $ra
nop
exit173:


j entrance174
nop
entrance174:
jal block174
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit174
nop
block174:

lw $3 2084($0)
mtlo $3
sw $3 2088($0)

lw $3 2088($0)
nop
mtlo $3
sw $3 2092($0)

lw $3 2092($0)
nop
nop
mtlo $3
sw $3 2096($0)

jr $ra
nop
exit174:

ori $16 $0 3891
ori $17 $0 1401
ori $18 $0 100
ori $19 $0 1223
ori $20 $0 2050
ori $21 $0 1563
ori $22 $0 3751
ori $23 $0 481

j entrance175
nop
entrance175:
jal block175
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit175
nop
block175:

add $3 $20 $20
lb $18 2032($0)
sw $18 2100($0)

add $3 $17 $18
nop
lb $23 1356($0)
sw $23 2104($0)

add $3 $17 $19
nop
nop
lb $17 2104($0)
sw $17 2108($0)

jr $ra
nop
exit175:


j entrance176
nop
entrance176:
jal block176
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit176
nop
block176:

add $12 $18 $19
lbu $16 1152($0)
sw $16 2112($0)

add $12 $19 $20
nop
lbu $21 1352($0)
sw $21 2116($0)

add $12 $23 $19
nop
nop
lbu $21 2116($0)
sw $21 2120($0)

jalr $1, $ra
nop
exit176:


j entrance177
nop
entrance177:
jal block177
nop
ori $2 $0 1
subu $2 $2 $2
beq $2 $0 exit177
nop
block177:

add $10 $23 $18
lh $21 1360($0)
sw $21 2124($0)

add $10 $23 $20
nop
lh $22 1424($0)
sw $22 2128($0)

add $10 $20 $21
nop
nop
lh $21 2128($0)
sw $21 2132($0)

jalr $2, $ra
nop
exit177:


j entrance178
nop
entrance178:
jal block178
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit178
nop
block178:

add $12 $18 $22
lhu $20 2004($0)
sw $20 2136($0)

add $12 $19 $22
nop
lhu $22 2136($0)
sw $22 2140($0)

add $12 $17 $22
nop
nop
lhu $18 1788($0)
sw $18 2144($0)

jr $ra
nop
exit178:


j entrance179
nop
entrance179:
jal block179
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit179
nop
block179:

add $13 $21 $18
lw $16 1816($0)
sw $16 2148($0)

add $13 $22 $20
nop
lw $23 2148($0)
sw $23 2152($0)

add $13 $19 $22
nop
nop
lw $19 2152($0)
sw $19 2156($0)

jr $ra
nop
exit179:


j entrance180
nop
entrance180:
jal block180
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit180
nop
block180:

add $11 $18 $18
add $1 $11 $11
sw $1 2160($0)

add $11 $20 $22
nop
add $1 $11 $11
sw $1 2164($0)

add $11 $18 $20
nop
nop
add $1 $11 $11
sw $1 2168($0)

jalr $16, $ra
nop
exit180:


j entrance181
nop
entrance181:
jal block181
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit181
nop
block181:

add $6 $21 $22
addu $1 $6 $6
sw $1 2172($0)

add $6 $17 $18
nop
addu $1 $6 $6
sw $1 2176($0)

add $6 $23 $21
nop
nop
addu $1 $6 $6
sw $1 2180($0)

jalr $27, $ra
nop
exit181:


j entrance182
nop
entrance182:
jal block182
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit182
nop
block182:

add $2 $22 $16
sub $1 $2 $2
sw $1 2184($0)

add $2 $16 $23
nop
sub $1 $2 $2
sw $1 2188($0)

add $2 $22 $19
nop
nop
sub $1 $2 $2
sw $1 2192($0)

jr $ra
nop
exit182:


j entrance183
nop
entrance183:
jal block183
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit183
nop
block183:

add $8 $22 $23
subu $1 $8 $8
sw $1 2196($0)

add $8 $20 $18
nop
subu $1 $8 $8
sw $1 2200($0)

add $8 $23 $20
nop
nop
subu $1 $8 $8
sw $1 2204($0)

jr $ra
nop
exit183:


j entrance184
nop
entrance184:
jal block184
nop
ori $27 $0 1
subu $27 $27 $27
beq $27 $0 exit184
nop
block184:

add $9 $16 $16
mult $9 $9
sw $9 2208($0)

add $9 $18 $23
nop
mult $9 $9
sw $9 2212($0)

add $9 $23 $22
nop
nop
mult $9 $9
sw $9 2216($0)

jr $ra
nop
exit184:


j entrance185
nop
entrance185:
jal block185
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit185
nop
block185:

add $2 $21 $19
multu $2 $2
sw $2 2220($0)

add $2 $21 $16
nop
multu $2 $2
sw $2 2224($0)

add $2 $18 $19
nop
nop
multu $2 $2
sw $2 2228($0)

jalr $8, $ra
nop
exit185: