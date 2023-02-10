import os
import re
import sys


def cmp(num):
    # 读取三个txt文件
    file1 = open(num + '-myoutput.txt', "r")
    file2 = open(num + '-lcyoutput.txt', "r")

    text1 = file1.read()
    text2 = file2.read()

    file1.close()
    file2.close()

    # 由于不同程序的结果输出数据的时间可能有差异，且Mars输出的结果不带有时间，所以采用正则表达式匹配，并构造(指令地址，写入对象，写入数据三元组)
    obj = re.compile(r".*?@(?P<pc>.*?): (?P<place>.*?) <= (?P<number>.*?)\n", re.S)
    result1 = obj.finditer(text1)
    result2 = obj.finditer(text2)

    operation1 = []
    operation2 = []

    for it in result1:
        operation1.append((it.group('pc'), it.group('place'), it.group('number')))
    for it in result2:
        operation2.append((it.group('pc'), it.group('place'), it.group('number')))

    res = open(num + '-diff.txt', 'w')
    flag = True

    if not (len(operation1) == len(operation2)):
        flag = False
        res.write("diff in length\n")
        res.write("len(res1) = {}\n".format(len(operation1)))
        res.write("len(res2) = {}\n".format(len(operation2)))

    for i in range(min(len(operation1), len(operation2))):
        if not (operation1[i] == operation2[i]):
            flag = False
            res.write("diff in len({})\n".format(i + 1))
            res.write("res1 = {}\n".format(operation1[i]))
            res.write("res2 = {}\n".format(operation2[i]))

    res.close()

    if flag:
        print("完全正确")
        os.remove(num + '-diff.txt')


# if __name__ == "__main__":
#     for i in range(1, len(sys.argv)):
#         strs = sys.argv[i]
#         cmp(strs)
cmp('0')