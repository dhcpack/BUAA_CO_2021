import os
import re
import sys


def cmp(num):
    # 读取三个txt文件
    file1 = open(num + '-myoutput.txt', "r")
    file2 = open(num + '-zqyoutput.txt', "r")

    text1 = file1.read()
    text2 = file2.read()

    line1 = text1.strip('\n').split('\n')
    line2 = text2.strip('\n').split('\n')

    res = open(num + '-diff.txt', 'w')
    flag = True

    if not (len(line1)==len(line2)):
        flag = False
        res.write("diff in length\n")
        res.write("len(res1) = {}\n".format(len(line1)))
        res.write("len(res2) = {}\n".format(len(line2)))

    for i in range(min(len(line1),len(line2))):
        if not (line1[i]==line2[i]):
            flag = False
            res.write("diff in len({})\n".format(i + 1))
            res.write("res1 = {}\n".format(line1[i]))
            res.write("res2 = {}\n".format(line2[i]))

    res.close()

    if flag:
        print("完全正确")
        os.remove(num + '-diff.txt')
    else:
        print("输出错误")



    # file3 = open(num + '-ans.txt', "r")

    # text1 = file1.read()
    # # text2 = file2.read()
    # text3 = file3.read()
    #
    # flag = True
    # # if text1 == text2:
    # #     print("时间完全一致")
    # # else:
    # #     print("时间不一致")
    # #     flag = False
    #
    # file1.close()
    # # file2.close()
    # file3.close()
    #
    # # 由于不同程序的结果输出数据的时间可能有差异，且Mars输出的结果不带有时间，所以采用正则表达式匹配，并构造(指令地址，写入对象，写入数据三元组)
    # obj = re.compile(r".*?@(?P<pc>.*?): (?P<place>.*?) <= (?P<number>.*?)\n", re.S)
    # result1 = obj.finditer(text1)
    # # result2 = obj.finditer(text2)
    # result3 = obj.finditer(text3)
    #
    # operation1 = []
    # # operation2 = []
    # operation3 = []
    #
    # for it in result1:
    #     operation1.append((it.group('pc'), it.group('place'), it.group('number')))
    # # for it in result2:
    # #     operation2.append((it.group('pc'), it.group('place'), it.group('number')))
    # for it in result3:
    #     operation3.append((it.group('pc'), it.group('place'), it.group('number')))
    #
    # # 将三元组按照指令地址排序
    # operation1.sort(key=lambda x: x[0])
    # # operation2.sort(key=lambda x: x[0])
    # operation3.sort(key=lambda x: x[0])
    #
    # res = open(num + '-diff.txt', 'w')
    #
    # if not (len(operation1) == len(operation3)):
    #     flag = False
    #     res.write("diff in length\n")
    #     res.write("len(res1) = {}\n".format(len(operation1)))
    #     # res.write("len(res2) = {}\n".format(len(operation2)))
    #     res.write("len(res3) = {}\n\n".format(len(operation3)))
    #
    # for i in range(min(len(operation1), len(operation3))):
    #     if not (operation1[i] == operation3[i]):
    #         if not ('x' in operation1[i][2] or 'X' in operation1[i][2]):
    #             flag = False
    #             res.write("diff in len({})\n".format(i + 1))
    #             res.write("res1 = {}\n".format(operation1[i]))
    #             # res.write("res2 = {}\n".format(operation2[i]))
    #             res.write("res3 = {}\n\n".format(operation3[i]))

    # res.close()
    #
    # if flag:
    #     print("完全正确")
    #     os.remove(num + '-diff.txt')
    # else:
    #     print("输出错误")


if __name__ == "__main__":
    for i in range(1, len(sys.argv)):
        strs = sys.argv[i]
        cmp(strs)
