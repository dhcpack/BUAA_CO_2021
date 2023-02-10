# 测试样例生成器，编写过程中采用了讨论区同学的思路，生成的指令包含MIPS-lite2={ addu, subu, ori, lw, sw, beq, lui, j, jal, jr,
# nop }的所有指令，含bug（sw指令向DM存储的index可能会超出DM的地址范围，jr指令跳转会出问题）有可能不能在Mars上正常运行，产生的代码可用于和其它同学的CPU对拍。

import random

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
        print("lui ${},{}".format(i, random.randint(0, 65535)))
        print("ori ${},${},{}".format(i, i, random.randint(0, 65535)))
    for i in range(101):
        print("sw ${},{}(${})".format(random.randint(0, 27), i * 4, 0))


def print_instr(x):
    if data1[x].type == 1:
        print("addu ${},${},${}".format(data1[x].rs, data1[x].rt, data1[x].rd))
    elif data1[x].type == 2:
        print("subu ${},${},${}".format(data1[x].rs, data1[x].rt, data1[x].rd))
    elif data1[x].type == 3:
        print("ori ${},${},{}".format(data1[x].rs, data1[x].rt, data1[x].rd))
    elif data1[x].type == 4:
        print("lui ${},{}".format(data1[x].rs, data1[x].rt))
    elif data1[x].type == 5:
        print("nop")
    elif data1[x].type == 6:
        y = data1[x].oriindex
        print("ori ${},$0,{}".format(helper[y].rs, helper[y].rt))
        print("lw ${},{}(${})".format(data1[x].rs, data1[x].rd, data1[x].rt))
    elif data1[x].type == 7:
        y = data1[x].oriindex
        print("ori ${},$0,{}".format(helper[y].rs, helper[y].rt))
        print("sw ${},{}(${})".format(data1[x].rs, data1[x].rd, data1[x].rt))


if __name__ == "__main__":
    pre_fill()
    total_blocks = random.randint(1, 15)  # 代码块数
    total_lines = 0  # 代码行数

    # 构建过程
    for i in range(total_blocks):  # 代码块头尾记录在data2中
        data2.append(Instruction(random.randint(0, 2), random.randint(1, 20)))
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
        if data2[i].type == 0:  # data2[i]==0-->beq  data2[i]==1-->jal  data2[i]==2-->j
            coin = random.randint(0, 2)
            if coin != 0:
                data2[i].rs = data2[i].rt = random.randint(0, 27)  # coin !=0 保证rs=rt跳转
            else:
                data2[i].rs = random.randint(0, 27)
                data2[i].rt = random.randint(0, 27)

    print("ori $29,$0,0x00002F00")

    # 输出过程
    k = 0
    for i in range(total_blocks):
        for j in range(interval[i]):  # 输出interval
            print_instr(k)
            k += 1
        if data2[i].type == 0:  # 输出data2[i]
            # print("beq ${},${},branch{}".format(data2[i].rs, data2[i].rt, i))
            print("ori $3,$3,100")  # 延迟槽
            print("ori $4,$4,200")
            for j in range(data2[i].lines):
                print_instr(k)
                k += 1
            print("branch{}:".format(i))
        elif data2[i].type == 1:
            print("ori $2,$0,4")
            print("subu $sp,$sp,$2")
            print("sw $ra,4($sp)")
            print("jal func{}".format(i))
            print("ori $3,$3,100")  # 延迟槽
            print("ori $4,$4,200")
            print("ori $2,$0,4")
            print("lw $ra,4($sp)")
            print("addu $sp,$sp,$2")
        elif data2[i].type == 2:
            print("j func{}".format(i))
            print("ori $3,$3,100")  # 延迟槽
            print("ori $4,$4,200")
    # print("jr $ra")
    for i in range(total_blocks):
        if data2[i].type == 1 or data2[i].type == 2:
            print("func{}:".format(i))
            for j in range(data2[i].lines):
                k += 1
                print_instr(k)
        if data2[i].type == 1:
            print("ori $2,$0,4")
            print("addu $sp,$sp,$2")
            print("lw $ra,4($sp)")
            print("jr $ra")
            print("ori $3,$3,100")  # 延迟槽
            print("ori $4,$4,200")

    print("end:")
    print("beq $0, $0, end")
