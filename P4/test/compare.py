file1 = open('shlbans.txt', "r")
file2 = open('shlbmyans.txt', "r")

# 读取两个txt文件
text1 = file1.read()
text2 = file2.read()

file1.close()
file2.close()

# 将两个文件中内容按行分隔开
line1 = text1.strip('\n').split('\n')
line2 = text2.strip('\n').split('\n')

# 以读取方式打开 diff.txt 文件
outfile = open("diffshlb.txt", "w")

judge = True
if len(line1) != len(line2):
    outfile.write("diff in length.\n")
    outfile.write("your length is {}.\n".format(len(line1)))
    outfile.write("expected length is {}.\n".format(len(line2)))
    judge = False

i = 0

while i < min(len(line1), len(line2)):
    if line1[i] != line2[i]:
        if ''.join(line1[i].split()) != ''.join(line2[i].split()):
            outfile.write("diff in len(" + str(i + 1) + ").\n")
            judge = False
    i += 1

print("核对结束")
if judge:
    print("完全相同")
