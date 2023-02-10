import re

file1 = open(r"myoutput.txt", "r")
file2 = open(r"mipsoutput.txt", "r")

text1 = file1.read()
text2 = file2.read()
line2 = text2.strip('\n').split('\n')
line3 = []
for line in line2:
    if '$ 0' in line:
        continue
    line3.append(line)
text2 = '\n'.join(line3)

text1 = text1 + '\n'
text2 = text2 + '\n'

file1.close()
file2.close()

# 由于不同程序的结果输出数据的时间可能有差异，且Mars输出的结果不带有时间，所以采用正则表达式匹配，并构造(指令地址，写入对象，写入数据三元组)
obj = re.compile(r".*?@(?P<pc>.*?): (?P<place>.*?) <= (?P<number>.*?)\n", re.S)
result1 = obj.finditer(text1)
result2 = obj.finditer(text2)

operation1 = []
operation2 = []
operation3 = []

res = open('diff.txt', 'w')
flag = True

for it in result1:
    operation1.append((it.group('pc'), it.group('place'), it.group('number')))
for it in result2:
    operation2.append((it.group('pc'), it.group('place'), it.group('number')))

if not (len(operation1) == len(operation2)):
    flag = False
    res.write("diff in length\n")
    res.write("len(myoutput)   = {}\n".format(len(operation1)))
    res.write("len(mipsoutput) = {}\n\n".format(len(operation2)))

length = min(len(operation1), len(operation2))
operation1 = operation1[:length]
operation2 = operation2[:length]
# 将三元组按照指令地址排序
operation1.sort(key=lambda x: x[0])
operation2.sort(key=lambda x: x[0])

for i in range(length):
    if not (operation1[i] == operation2[i]):
        flag = False
        res.write("diff in len({})\n".format(i + 1))
        res.write("myoutput   = {}\n".format(operation1[i]))
        res.write("mipsoutput = {}\n\n".format(operation2[i]))

if flag:
    print("完全正确")
else:
    print("输出错误")