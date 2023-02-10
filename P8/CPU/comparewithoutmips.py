import os
import re
import sys

file1 = open('myoutput.txt', "r")
file2 = open('mipsoutput.txt', "r")

text1 = file1.read()
text2 = file2.read()

line1 = text1.strip('\n').split('\n')
line2 = text2.strip('\n').split('\n')
line1 = line1[:len(line2)]
for i in range(len(line1)):
    line1[i] = line1[i][20:]
for i in range(len(line1)):
    line2[i] = line2[i][line2[i].index('@'):]
res = open('diff.txt', 'w')
if line1 == line2:
    print("完全正确")
    exit(0)

for i in range(min(len(line1), len(line2))):
    if not (line1[i] == line2[i]):
        res.write("diff in len({})\n".format(i + 1))
        res.write("res1 = {}\n".format(line1[i]))
        res.write("res2 = {}\n".format(line2[i]))

res.close()
