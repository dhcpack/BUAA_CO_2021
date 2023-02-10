import os
import re


def gen(num):
    # os.system(r"python createP6.py >" + num + "-mips.asm")  # 生成随机代码
    file1 = open("testpoint" + num + ".asm", 'r')
    file2 = open(num + "-testpoint.asm", 'w')
    text1 = file1.read()
    line1 = text1.strip('\n').split('\n')
    text2 = '\n'.join(line1[:-3])
    text2 = text2 + '\n'
    file2.write(text2)
    file1.close()
    file2.close()

    os.system(
        "java -jar mars4.jar " + num + "-testpoint.asm nc mc CompactDataAtZero a dump .text HexText code.txt")  # 导出Mars机器码
    os.system(
        "java -jar mars4.jar " + num + "-testpoint.asm db nc mc CompactDataAtZero> " + num + "-ans.txt")  # 导出Mars输出结果（初始数据地址为0，开启延迟槽）

    # 生成仿真需要的两个文件
    tclFile = open("test.tcl", "w")
    tclFile.write("run 100us;\nexit")

    prjFile1 = open("testmine.prj", "w")
    for root, dirs, files in os.walk(r"E:\1-Project\P6\testpoint\modulemine"):
        for fileName in files:
            if re.match(r"[\w]*\.v", fileName):
                prjFile1.write("Verilog work " + root + "\\" + fileName + "\n")

    prjFile2 = open("testlcy.prj", "w")
    for root, dirs, files in os.walk(r"E:\1-Project\P6\testpoint\modulelcy"):
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
        r"D:\ISESetup\14.7\ISE_DS\ISE\bin\nt64\fuse --nodebug --prj testlcy.prj -o testmipslcy.exe mips_txt >CompileLoglcy.txt")

    os.system("testmipslcy.exe -nolog -tclbatch test.tcl >" + num + "-lcyoutput.txt")

    os.system(r"python comparewithoutmips.py " + num)  # 调用compare.py比对输出


if __name__ == "__main__":
    for i in range(3, 101):
        gen(str(i))
