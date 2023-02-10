# 以读取方式打开两个txt文件
file1 = open('myoutput.txt', "r")
file2 = open('myoutputz.txt', "r")

# 读取两个txt文件
text1 = file1.read()
text2 = file2.read()

file1.close()
file2.close()

line1 = text1.strip('\n').split('\n')
line2 = text2.strip('\n').split('\n')

for i in range(len(line1)):
    line1[i] = line1[i].strip()[2:]
if line1 == line2:
    print("完全正确")
else:
    print("wrong")
