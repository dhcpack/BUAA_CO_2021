import os
import re

os.system("java -jar mars.jar mips1.asm nc mc CompactTextAtZero a dump .text HexText mips1.txt")
# RandCodeExeDir= "d:/Codes/2021FW/COsupport/RandomMips.exe"
# os.system(RandCodeExeDir+" >"+mipsName)
# os.system("java -jar "+marsJarDir+" "+mipsName+" nc mc CompactTextAtZero a dump .text HexText "+lgsmTestCodeDir)
# CodeContent= open(lgsmTestCodeDir,"r").read()
instruction = open("mips1.txt").read()

cur = open("CPU0.circ", encoding='utf-8').read()
cur = re.sub(r'addr/data: 24 32([\s\S]*)</a>', "addr/data: 5 32\n" + instruction + "</a>", cur)
with open("CPU0testmips1.circ", "w", encoding='utf-8', ) as file:
    file.write(cur)
os.popen(
    "java -jar logisim.jar CPU0testmips1.circ -tty table >resultofCPU0mips1.txt")
