import filecmp

filename = input('请输入MARS文件名：')
res = filecmp.cmp("resultofCPU0" + filename + ".txt", "resultofCPU1" + filename + ".txt")
print(res)
