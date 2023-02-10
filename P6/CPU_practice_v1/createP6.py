import random

data1 = []  # 记录顺序执行的代码
data2 = []  # 记录跳转代码  # beq bne blez bgtz bltz bgez j    jal jalr jr
interval = []  # 记录中间插入部分代码的行数
helper = []  # 记录sw和lw之前ori指令的相关内容
acnt = 0  # index of helper

# 九个大指令类
calmudv = ['mult', 'multu', 'div', 'divu']
readmudv = ['mflo', 'mfhi']
setmudv = ['mtlo', 'mthi']
caldoubleregister = ['addu', 'subu', 'slt', 'sltu', 'and', 'or', 'nor', 'xor', 'sllv', 'srlv', 'srav']
shift = ['sll', 'srl', 'sra']
calregisterimm = ['addiu', 'andi', 'ori', 'xori']
saveload = ['sw', 'sh', 'sb', 'lw', 'lh', 'lhu', 'lb', 'lbu']
shifti = ['slti', 'sltiu']
lui = ['lui']

# 跳转类
btypetwo = ['beq', 'bne']
btypeone = ['blez', 'bgtz', 'bltz', 'bgez']
jforward = ['jal', 'jalr']
jback = ['jr']


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
    for i in range(30):
        print("sw ${},{}(${})".format(random.randint(0, 27), i * 4, 0))


def print_instr(x):
    if data1[x].type == 1:
        print("{} ${},${}".format(random.choice(calmudv), data1[x].rs, data1[x].rt, data1[x].rd))
    elif data1[x].type == 2:
        print("{} ${}".format(random.choice(readmudv), data1[i].rs))
    elif data1[x].type == 3:
        print("{} ${}".format(random.choice(setmudv), data1[i].rs))
    elif data1[x].type == 4:
        print("{} ${},${},${}".format(random.choice(caldoubleregister), data1[i].rs, data1[i].rt, data1[i].rd))
    elif data1[x].type == 5:
        print("{} ${},${},{}".format(random.choice(shift), data1[i].rs, data1[i].rt, random.randint(0, 31)))
    elif data1[x].type == 6:
        print(
            "{} ${},${},{}".format(random.choice(calregisterimm), data1[i].rs, data1[i].rt, random.randint(0, 65535)))
    elif data1[x].type == 7:
        print("{} ${},{}($0)".format(random.choice(saveload), data1[i].rs, random.randrange(0, 8192, 4)))
    elif data1[x].type == 8:
        print("{} ${},${},{}".format(random.choice(shifti), data1[i].rs, data1[i].rt, random.randint(0, 31)))
    elif data1[x].type == 9:
        print("{} ${},{}".format(random.choice(lui), data1[i].rt, random.randint(0, 65535)))
    else:
        print("nop")


if __name__ == "__main__":
    pre_fill()
    total_blocks = random.randint(1, 25)  # 代码块数
    total_lines = 0  # 代码行数
    cnt = 0
    # 构建过程
    for i in range(total_blocks):  # 代码块头尾记录在data2中
        data2.append(Instruction(random.randint(0, 3), random.randint(1, 25)))
        total_lines += data2[i].lines
    for i in range(total_blocks + 1):  # 两个interval之间夹一个代码块
        interval.append(random.randint(1, 30))
        total_lines += interval[i]
    for i in range(0, total_lines):  # 随机生成顺序执行代码，保存在data1中
        data1.append(Instruction(random.randint(1, 10)))
        data1[i].rs = random.randint(2, 31)
        data1[i].rt = random.randint(2, 27)
        data1[i].rd = random.randint(2, 27)

    for i in range(total_blocks):
        coin = random.randint(0, 3)
        if coin == 0:
            data2[i].rs = data2[i].rt = random.randint(0, 31)
        else:
            data2[i].rs = random.randint(0, 31)
            data2[i].rt = random.randint(0, 31)

    print("ori $29,$0,0x00002F00")
    print("jal funct")
    print("ori $3,$3,100")  # 测试延迟槽
    print("ori $4,$4,200")
    print("funct:")  # 初始化31号寄存器

    # 输出过程
    k = 0
    for i in range(total_blocks):
        print("interval{}:".format(cnt))
        cnt += 1
        for j in range(interval[i]):  # 输出interval
            print_instr(k)
            k += 1
        if data2[i].type == 0:  # 输出data2[i]
            print("{} ${},${},branch{}".format(random.choice(btypetwo), data2[i].rs, data2[i].rt, i))
            print("ori $3,$3,100")  # 测试延迟槽
            print("ori $4,$4,200")
            print("interval{}:".format(cnt))
            cnt += 1
            for j in range(data2[i].lines):
                print_instr(k)
                k += 1
            print("branch{}:".format(i))
        elif data2[i].type == 1:
            print("{} ${} branch{}".format(random.choice(btypeone), data2[i].rs, i))
            print("ori $3,$3,100")  # 测试延迟槽
            print("ori $4,$4,200")
            print("interval{}:".format(cnt))
            cnt += 1
            for j in range(data2[i].lines):
                print_instr(k)
                k += 1
            print("branch{}:".format(i))
        elif data2[i].type == 2:
            print("j branch{}".format(i))
            print("ori $3,$3,100")  # 测试延迟槽
            print("ori $4,$4,200")
            print("interval{}:".format(cnt))
            cnt += 1
            for j in range(data2[i].lines):
                print_instr(k)
                k += 1
            print("branch{}:".format(i))
        elif data2[i].type == 3:
            coin = random.randint(0, 1)
            if coin == 0:  # jal
                print("jal funct{}".format(i))
            # else:
            #     print("jalr ${}, ${}")
            print("ori $3,$3,100")  # 测试延迟槽
            print("ori $4,$4,200")
            print("interval{}:".format(cnt))
            cnt += 1
            for j in range(data2[i].lines):
                print_instr(k)
                k += 1
            print("beq $0,$0,interval{}".format(cnt))
            print("ori $3,$3,100")  # 测试延迟槽
            print("ori $4,$4,200")
            print("funct{}:".format(i))
            print("jr $ra")
            print("ori $3,$3,100")  # 测试延迟槽
            print("ori $4,$4,200")

    print("interval{}:".format(cnt))
    for j in range(interval[-1]):  # 输出interval
        print_instr(k)
        k += 1

    # print("end:")
    # print("beq $0, $0, end")
    # print("nop")
