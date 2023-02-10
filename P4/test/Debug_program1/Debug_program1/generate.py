import os

os.system("python create.py >mips8.asm")
os.system("java -jar Mars4_5.jar mips8.asm nc mc CompactTextAtZero a dump .text HexText code.txt")

# tcl文件和prj文件需要放在工程同目录下
tclFile = open("test.tcl", "w")
tclFile.write("run 200us;\nexit")
# tcl文件声明了工程运行的参数
prjFile = open("test.prj", "w")
prjFile.write("Verilog work C:/Users/霖/Desktop/CPU/ALU.v\n" +
              "Verilog work C:/Users/霖/Desktop/CPU/controller.v\n" +
              "Verilog work C:/Users/霖/Desktop/CPU/DM.v\n" +
              "Verilog work C:/Users/霖/Desktop/CPU/EXT.v\n" +
              "Verilog work C:/Users/霖/Desktop/CPU/IM.v\n" +
              "Verilog work C:/Users/霖/Desktop/CPU/mips.v\n" +
              "Verilog work C:/Users/霖/Desktop/CPU/mips_tb.v\n"
              "Verilog work C:/Users/霖/Desktop/CPU/NPC.v\n" +
              "Verilog work C:/Users/霖/Desktop/CPU/PC.v\n" +
              "Verilog work C:/Users/霖/Desktop/CPU/RF.v\n" +
              "Verilog work D:/ISESetup/14.7/ISE_DS/ISE//verilog/src/glbl.v")

# prj文件声明了工程所含各模块的位置
tclFile.close()
prjFile.close()
os.environ['XILINX'] = r"D:\ISESetup\14.7\ISE_DS\ISE"  # 自己的ise安装位置
os.system(
    r"D:\ISESetup\14.7\ISE_DS\ISE/bin/nt64/fuse -nodebug -prj C:\Users\霖\Desktop\CPU\test.prj -o "
    r"C:\Users\霖\Desktop\CPU\testmips.exe mips_tb.v >C:\Users\霖\Desktop\CPU\res.txt")
# 本条的第一个参数也需要根据自己的ise安装位置进行修改，prj文件位置输入之前准备好的prj文件位置，下一个参数是生成的exe文件放在哪里，最后是编译信息输出

# os.system(
#     r"C:\Users\霖\Desktop\CPU\testmips.exe -nolog -tclbatch C:\Users\霖\Desktop\CPU\test.tcl "
#     r">C:\Users\霖\Desktop\CPU\myoutput.txt")
# # # 本条指令是运行编译好的exe文件，在我们编写好的tcl文件的运行参数下运行，利用输出重定向把display的输出输出到我们的文件中
