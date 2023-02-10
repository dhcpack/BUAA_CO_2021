# 以读取方式打开两个txt文件
file1 = open('31-myoutput.txt', "r")
file2 = open('31-zqyoutput.txt', "r")

# 读取两个txt文件
text1 = file1.read()
text2 = file2.read()

file1.close()
file2.close()

# 将两个文件中内容按行分隔开
line1 = text1.strip('\n').split('\n')
line2 = text2.strip('\n').split('\n')

outfile = open("31-difflines.txt", "w")

if len(line1) != len(line2):
    outfile.write("diff in length.\n")
for i in range(min(len(line1), len(line2)) - 1):
    if (line1[i] == line2[i] and line1[i + 1] == line2[i + 1]) or (
            line1[i] == line2[i + 1] and line1[i] == line2[i + 1]):
        continue
    outfile.write("{},{}\n".format(i, i + 1))
    outfile.write('{},{}\n'.format(line1[i], line2[i]))
    outfile.write('{},{}\n'.format(line1[i + 1], line2[i + 1]))
    outfile.write('\n')

outfile.close()
