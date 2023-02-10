import os
import re

os.system("java -jar mars2.jar 跳转测试.asm nc mc CompactDataAtZero a dump .text HexText code.txt")

# 仿真需要的两个文件
tclFile = open("test.tcl", "w")
tclFile.write("run 1us;\nexit")

prjFile = open("test.prj", "w")
for root, dirs, files in os.walk(r"E:\1-Project\P5\comparebyhand\modulemine"):
    for fileName in files:
        if re.match(r"[\w]*\.v", fileName):
            prjFile.write("Verilog work " + root + "\\" + fileName + "\n")

tclFile.close()
prjFile.close()

os.environ['XILINX'] = r"D:\ISESetup\14.7\ISE_DS\ISE"

# 命令行运行ISim
os.system(r"D:\ISESetup\14.7\ISE_DS\ISE\bin\nt64\fuse --nodebug --prj test.prj -o testmips.exe mips_tb >CompileLog.txt")

os.system("testmips.exe -nolog -tclbatch test.tcl >myoutput.txt")


