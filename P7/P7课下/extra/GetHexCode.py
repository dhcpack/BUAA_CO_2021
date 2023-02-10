from PIL import Image

ascii_char=list("B8D960EA54C32F71")

def get_char(r,g,b,alpha=256):
	if alpha==0:
		return ' '
	length=len(ascii_char)
	gray=int(0.2126*r+0.7152*g+0.0722*b)
	unit=(256.0+1)/length
	return ascii_char[int(gray/unit)]

input_file='DemoPic1.jpg'
output_file='ans.txt'
pic_height=28
pic_weight=128
im=Image.open(input_file)
im=im.resize((pic_weight,pic_height),Image.NEAREST)
txt=""
for i in range(pic_height):
	for j in range(pic_weight):
		txt+=get_char(*im.getpixel((j,i)))
	txt+='\n'
print(txt)
if output_file:
	with open(output_file,'w') as f:
		f.write(txt)
else:
	with open("output.txt",'w') as f:
		f.write(txt)