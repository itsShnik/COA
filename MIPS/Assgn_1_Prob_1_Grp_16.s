####################Data Segment ##########
.data
request_msg: .asciiz "Enter two numbers: \n"
result_msg: .asciiz "GCD of two numbers is:"
error_msg: .asciiz "Invalid Input , please enter positive numbers \n"

##### Text Segment##########
.text
.globl main
	main:
		
		la $a0, request_msg # loading string address in register
		li $v0, 4 # print_string
		syscall # print the message
		
		# reading input 1:
		li $v0, 5 # read_int
		syscall # value in $v0
		move $t0, $v0
		
		# reading input 2:
		li $v0, 5 # read_int
		syscall # value in $v0
		move $t1, $v0
		
		# Sanity Check
		ble $t0, $zero, ERROR	# Redirect to ERROR of input 1 is less than 0
		ble $t1, $zero, ERROR	# Redirect to ERROR of input 2 is less than 0
		
		Loop:
			beq $t0, $t1, PrintResult	# Redirect to PrintResult if both inputs are equal
			
			bgt $t0, $t1, Continue
			
			Swap:
				move $t2, $t0	# temp = t0
				move $t0, $t1	# t0 = t1
				move $t1, $t2	# t1 = temp
				
			Continue:
				sub $t0, $t0, $t1	# Subtract t0 = t0 - t1
				bgt $t0, $zero, Loop
				
			
			
		
		PrintResult:
			li $v0, 4	#	print_string
			la $a0, result_msg	# load string address
			syscall
			li $v0, 1	# print_int
			move $a0, $t0	# $a0 = $t0
			syscall
			
		Exit:
			li $v0, 10	# exit
			syscall
			
		ERROR:
			li $v0, 4	# print_string
			la $a0, error_msg	# load string address
			syscall
			li $v0, 10
			syscall
			
		
