import os
import re

filename = input('请输入MARS文件名：')
CPUname = input('请输入CPU名字：')

os.system("java -jar mars.jar " + filename + ".asm nc mc CompactTextAtZero a dump .text HexText " + filename + ".txt")
# RandCodeExeDir= "d:/Codes/2021FW/COsupport/RandomMips.exe"
# os.system(RandCodeExeDir+" >"+mipsName)
# os.system("java -jar "+marsJarDir+" "+mipsName+" nc mc CompactTextAtZero a dump .text HexText "+lgsmTestCodeDir)
# CodeContent= open(lgsmTestCodeDir,"r").read()
instruction = open(filename + ".txt").read()

cur = open(CPUname + ".circ", encoding='utf-8').read()
cur = re.sub(r'addr/data: 24 32([\s\S]*)</a>', "addr/data: 5 32\n" + instruction + "</a>", cur)
with open(CPUname + "test" + filename + ".circ", "w", encoding='utf-8', ) as file:
    file.write(cur)
os.popen(
    "java -jar logisim.jar" + "CPU0test" + filename + ".circ -tty table >resultofCPU0"+filename + ".txt")
