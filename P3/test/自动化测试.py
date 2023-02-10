import os
import re

filename = input('请输入文件名：')
CPUname = input('请输入CPU名字：')
os.system("java -jar mars.jar " + filename + ".asm nc mc CompactTextAtZero a dump .text HexText " + filename + ".txt")

instruction = open(filename + ".txt").read()

cur = open(CPUname + ".circ", encoding='utf-8').read()
cur = re.sub(r'addr/data: 24 32([\s\S]*)</a>', "addr/data: 24 32\n" + instruction + "</a>", cur)
with open(CPUname + "test" + filename + ".circ", "w", encoding='utf-8') as file:
    file.write(cur)

os.system("java -jar logisim.jar " + CPUname + "test" + filename + ".circ -tty table >resultof" + CPUname + filename + ".txt")