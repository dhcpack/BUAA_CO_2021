import os
import re

os.system(r"python create.py >mips1.asm")
os.system("java -jar mars.jar mips1.asm nc mc CompactTextAtZero a dump .text HexText code.txt")

tclFile = open(r"test.tcl", "w")
tclFile.write("run 1000s;\nexit")

prjFile = open(r"test.prj", "w")

for root, dirs, files in os.walk(r"Debug_Program"):
    for fileName in files:
        if re.match(r"[\w]*\.v", fileName):
            prjFile.write("Verilog work " + root + "\\" + fileName + "\n")

tclFile.close()
prjFile.close()

os.environ['XILINX'] = r"D:\ISESetup\14.7\ISE_DS\ISE"  # 自己的ISE安装位置

os.system(
    r"D:\ISESetup\14.7\ISE_DS\ISE\bin\nt64\fuse --nodebug --prj test.prj -o testmips.exe mips_tb >CompileLog.txt")

os.system("testmips.exe -nolog -tclbatch test.tcl >myoutput.txt")


