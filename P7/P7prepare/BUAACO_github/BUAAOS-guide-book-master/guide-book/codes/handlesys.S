NESTED(handle_sys,TF_SIZE, sp)

SAVE_ALL
CLI

nop
.set at
lw t1, TF_EPC(sp)
lw v0, TF_REG2(sp)
# 下面这段是在通过系统调用号来查找对应的系统调用的入口地址
# v0里是系统调用号。
subu v0, v0, __SYSCALL_BASE
sltiu t0, v0, __NR_SYSCALLS+1

addiu t1, 4
sw      t1, TF_EPC(sp)
beqz    t0,  illegal_syscall//undef
nop
sll     t0, v0,2
la      t1, sys_call_table
addu    t1, t0
lw      t2, (t1)
beqz    t2, illegal_syscall//undef
nop
# 这里提取了之前用户空间的栈指针的位置。
lw      t0,TF_REG29(sp)

# 这里是核心，这段代码将之前存在栈中的参数载入到了t1-t7这七个寄存器中。
lw      t1, (t0)
lw      t3, 4(t0)
lw      t4, 8(t0)
lw      t5, 12(t0)
lw      t6, 16(t0)
lw      t7, 20(t0)

# 为内核中系统调用函数的参数分配栈空间
subu    sp, 20

# 把参数存在当前的栈上。
sw      t1, 0(sp)
sw      t3, 4(sp)
sw      t4, 8(sp)
sw      t5, 12(sp)
sw      t6, 16(sp)
sw      t7, 20(sp)

# 把前四个参数移入a0~a3。
# 前四个参数在a0~a3，后面的参数在栈上，这是MIPS的ABI标准的要求。
move    a0, t1
move    a1, t3
move    a2, t4
move    a3, t5

# 跳转到系统调用函数入口地址
jalr    t2
nop

# 释放栈空间
addu    sp, 20

# 将返回值保存在进程的运行环境的v0寄存器中。
# 这样返回用户态时，用户就可以获得返回值了。
sw      v0, TF_REG2(sp)

j       ret_from_exception # extern?
nop

illegal_syscall: j illegal_syscall
                        nop