import os
import re
import sys


def cmp(num):
    # 读取三个txt文件
    file1 = open(num + '-myoutput.txt', "r")
    file2 = open(num + '-lcyoutput.txt', "r")

    text1 = file1.read()
    text2 = file2.read()

    line1 = text1.strip('\n').split('\n')
    line2 = text2.strip('\n').split('\n')
    line1 = line1[:len(line2)]

    if line1 == line2:
        print("完全正确")
        exit(0)

    res = open(num + '-diff.txt', 'w')

    for i in range(len(line2)):
        if not (line1[i] == line2[i]):
            res.write("diff in len({})\n".format(i + 1))
            res.write("res1 = {}\n".format(line1[i]))
            res.write("res2 = {}\n".format(line2[i]))

    res.close()


if __name__ == "__main__":
    for i in range(1, len(sys.argv)):
        strs = sys.argv[i]
        cmp(strs)
