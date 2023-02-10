echo "��ʼ����"
iverilog -o wave led_demo.v led_demo_tb.v
echo "�������"
echo "���ɲ����ļ�"
vvp -n wave -lxt2
echo "�򿪲����ļ�"
gtkwave wave.vcd
pause