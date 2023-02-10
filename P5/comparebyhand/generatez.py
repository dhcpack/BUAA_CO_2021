import os
import re

os.system("java -jar mars2.jar 跳转测试.asm nc mc CompactDataAtZero a dump .text HexText code.txt")
os.system("java -jar mars2.jar 跳转测试.asm nc mc CompactDataAtZero> ans.txt")
# 仿真需要的两个文件
tclFile = open("test.tcl", "w")
tclFile.write("run 1us;\nexit")

prjFile = open("testz.prj", "w")
for root, dirs, files in os.walk(r"E:\1-Project\P5\comparebyhand\modulezqy"):
    for fileName in files:
        if re.match(r"[\w]*\.v", fileName):
            prjFile.write("Verilog work " + root + "\\" + fileName + "\n")

tclFile.close()
prjFile.close()

os.environ['XILINX'] = r"D:\ISESetup\14.7\ISE_DS\ISE"

# 命令行运行ISim
os.system(r"D:\ISESetup\14.7\ISE_DS\ISE\bin\nt64\fuse --nodebug --prj testz.prj -o testmipsz.exe mips_tb >CompileLog.txt")

os.system("testmipsz.exe -nolog -tclbatch test.tcl >myoutputz.txt")


# # os.system(r"python compare.py {}".format(num))
# os.system(r"python compare.py " )
