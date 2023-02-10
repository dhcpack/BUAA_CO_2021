import os
import re


def gen(num):
    # os.system(
    #     "java -jar mars4.jar " + num + "-testpoint.asm nc mc CompactDataAtZero a dump .text HexText code.txt")  # 导出Mars机器码
    # os.system(
    #     "java -jar mars4.jar " + num + "-testpoint.asm db nc mc CompactDataAtZero> " + num + "-ans.txt")  # 导出Mars输出结果（初始数据地址为0，开启延迟槽）

    # 生成仿真需要的两个文件
    tclFile = open("test.tcl", "w")
    tclFile.write("run 100us;\nexit")

    prjFile1 = open("testmine.prj", "w")
    for root, dirs, files in os.walk(r"E:\1-Project\P7\testpoint\modulemine"):
        for fileName in files:
            if re.match(r"[\w]*\.v", fileName):
                prjFile1.write("Verilog work " + root + "\\" + fileName + "\n")

    prjFile2 = open("testzqy.prj", "w")
    for root, dirs, files in os.walk(r"E:\1-Project\P7\testpoint\modulezqy"):
        for fileName in files:
            if re.match(r"[\w]*\.v", fileName):
                prjFile2.write("Verilog work " + root + "\\" + fileName + "\n")

    tclFile.close()
    prjFile1.close()
    prjFile2.close()

    os.environ['XILINX'] = r"D:\ISESetup\14.7\ISE_DS\ISE"
    # 命令行运行ISim
    os.system(
        r"D:\ISESetup\14.7\ISE_DS\ISE\bin\nt64\fuse --nodebug --prj testmine.prj -o testmipsmine.exe mips_txt >CompileLogmine.txt")

    os.system("testmipsmine.exe -nolog -tclbatch test.tcl >" + num + "-myoutput.txt")

    os.system(
        r"D:\ISESetup\14.7\ISE_DS\ISE\bin\nt64\fuse --nodebug --prj testzqy.prj -o testmipszqy.exe mips_txt >CompileLogzqy.txt")

    os.system("testmipszqy.exe -nolog -tclbatch test.tcl >" + num + "-zqyoutput.txt")

    os.system(r"python compare.py " + num)  # 调用compare.py比对输出


if __name__ == "__main__":
    for i in range(1):
        gen(str(i))
