.data
	# 变量的声明和分配
	array: .space 400
	message_input_n: .asciiz"Please input an integer as the length of the sequence:\n"
	message_input_array: .asciiz"Please input an integer follow with a line break:\n"
	message_output_array:.asciiz"The sorted sequence is:\n"
	space:.asciiz" "
	stack: .space 100

.text
	