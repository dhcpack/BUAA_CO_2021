import random

code = open("code.txt", "w")
data1 = []  # 记录顺序执行的代码
data2 = []  # 记录跳转代码
interval = []  # 记录中间插入部分代码的行数
helper = []  # 记录sw和lw之前ori指令的相关内容
acnt = 0  # index of helper



class Instruction:
    def __init__(self, type, lines=0, rs=None, rt=None, rd=None, oriindex=None):
        self.type = type
        self.lines = lines
        self.rs = rs
        self.rt = rt
        self.rd = rd
        self.oriindex = oriindex


def pre_fill():
    for i in range(2, 28):
        code.write("lui ${},{}\n".format(i, random.randint(0, 65535)))
        code.write("ori ${},${},{}\n".format(i, i, random.randint(0, 65535)))
    for i in range(101):
        code.write("sw ${},{}(${})\n".format(random.randint(0, 27), i * 4, 0))


def print_instr(x):
    if data1[x].type == 1:
        code.write("addu ${},${},${}\n".format(data1[x].rs, data1[x].rt, data1[x].rd))
    elif data1[x].type == 2:
        code.write("subu ${},${},${}\n".format(data1[x].rs, data1[x].rt, data1[x].rd))
    elif data1[x].type == 3:
        code.write("ori ${},${},{}\n".format(data1[x].rs, data1[x].rt, data1[x].rd))
    elif data1[x].type == 4:
        code.write("lui ${},{}\n".format(data1[x].rs, data1[x].rt))
    elif data1[x].type == 5:
        code.write("nop\n")
    elif data1[x].type == 6:
        y = data1[x].oriindex
        code.write("ori ${},$0,{}\n".format(helper[y].rs, helper[y].rt))
        code.write("lw ${},{}(${})\n".format(data1[x].rs, data1[x].rd, data1[x].rt))
    elif data1[x].type == 7:
        y = data1[x].oriindex
        code.write("ori ${},$0,{}\n".format(helper[y].rs, helper[y].rt))
        code.write("sw ${},{}(${})\n".format(data1[x].rs, data1[x].rd, data1[x].rt))


if __name__ == "__main__":
    pre_fill()
    total_blocks = random.randint(1, 15)  # 代码块数
    total_lines = 0  # 代码行数

    # 构建过程
    for i in range(total_blocks):  # 代码块头尾记录在data2中
        data2.append(Instruction(random.randint(0, 1), random.randint(1, 20)))
        total_lines += data2[i].lines
    for i in range(total_blocks + 1):  # 两个interval之间夹一个代码块
        interval.append(random.randint(1, 20))
        total_lines += interval[i]
    for i in range(0, total_lines):  # 随机生成顺序执行代码，保存在data1中
        data1.append(Instruction(random.randint(1, 7)))  # 5->nop
        if data1[i].type == 1 or data1[i].type == 2:  # addu subu
            data1[i].rs = random.randint(2, 27)
            data1[i].rt = random.randint(2, 27)
            data1[i].rd = random.randint(2, 27)
        elif data1[i].type == 3:  # ori
            data1[i].rs = random.randint(2, 27)
            data1[i].rt = random.randint(2, 27)
            data1[i].rd = random.randint(0, 65535)
        elif data1[i].type == 4:  # lui
            data1[i].rs = random.randint(2, 27)
            data1[i].rt = random.randint(0, 65535)
        elif data1[i].type == 6 or data1[i].type == 7:  # 6->lw  7->sw
            data1[i].oriindex = acnt
            acnt += 1
            helper.append(Instruction(3))  # 构建ori指令，保证位置是4的倍数
            helper[acnt - 1].rs = random.randint(2, 27)
            helper[acnt - 1].rt = 4 * random.randint(0, 100)
            data1[i].rs = random.randint(2, 27)
            data1[i].rt = helper[acnt - 1].rs
            if helper[acnt - 1].rt >= 50:
                data1[i].rd = -4 * random.randint(0, 12)  # offset是4的倍数
            else:
                data1[i].rd = 4 * random.randint(0, 12)

    for i in range(total_blocks):
        if data2[i].type == 0:  # data2[i]==0-->beq  data2[i]==1-->jal
            coin = random.randint(0, 2)
            if coin != 0:
                data2[i].rs = data2[i].rt = random.randint(0, 27)   # coin !=0 保证rs=rt跳转
            else:
                data2[i].rs = random.randint(0, 27)
                data2[i].rt = random.randint(0, 27)

    code.write("ori $31,$0,0x00003F00\n")  # set $ra
    code.write("ori $29,$0,0x00002F00\n")  # set $sp

    # 输出过程
    k = 0
    for i in range(total_blocks):
        for j in range(interval[i]):  # 输出interval
            print_instr(k)
            k += 1
        if data2[i].type == 0:  # 输出data2[i]
            code.write("beq ${},${},branch{}\n".format(data2[i].rs, data2[i].rt, i))
            for j in range(data2[i].lines):
                print_instr(k)
                k += 1
            code.write("branch{}:\n".format(i))
        else:
            code.write("ori $2,$0,4\n")
            code.write("subu $sp,$sp,$2\n")
            code.write("sw $ra,4($sp)\n")
            code.write("jal func{}\n".format(i))  # 调用jal时候先压栈，返回时再弹栈
            code.write("ori $2,$0,4\n")
            code.write("lw $ra,4($sp)\n")
            code.write("addu $sp,$sp,$2\n")
    code.write("jr $ra\n")
    for i in range(total_blocks):
        if data2[i].type == 1:
            code.write("func{}:\n".format(i))
            for j in range(data2[i].lines):
                k += 1
                print_instr(k)
            code.write("jr $ra\n")
