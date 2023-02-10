li $t0,0x1234
sw $t0,0($0)
lb $a0,0($0)
li $v0,1
syscall
li $v0,10
syscall

