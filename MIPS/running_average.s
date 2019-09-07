####################### Data segment ######################################
 .data
msg_address:   .asciiz "Enter  the start address of the array ( preferably 0x1001-0000):"
msg_size:   .asciiz "Enter  the size of the array ( max 30):"
msg_window:   .asciiz "Enter the window size (less than array size):"
msg_array: 	.asciiz "Enter the  the values in the array :\n"
msg_output: .asciiz "Running Averages stored in array:\n"
newline:   .asciiz "\n"
array: 
		.align 2
		.space 100
####################### Data segment ######################################

###################### Text segment ######################################
.text
.globl main
    main:
		#la $a0, msg_address # message string in $a0, pseudoinstruction
        #li $v0, 4 # Prepare to print the message
        #syscall  # print the message
		
		#li $v0, 5 # read-array address
		#syscall  
		#move $t0, $v0
		
		la $a0, msg_size # message string in $a0, pseudoinstruction
        li $v0, 4 # Prepare to print the message
        syscall  # print the message
		
		li $v0, 5 # read-array size
		syscall  
		move $t1, $v0	# t1=n
		
		la $a0, msg_window # message string in $a0, pseudoinstruction
        li $v0, 4 # Prepare to print the message
        syscall  # print the message
		
		li $v0, 5 # read-window size
		syscall  
		move $t2, $v0	# t2=w
		
		la $a0, msg_array # message string in $a0, pseudoinstruction
        li $v0, 4 # Prepare to print the message
        syscall  # print the message
		
		li $t3, 0	# counter =0
		li $t9, 4
		
		addi $t2, -1
		mult $t2,$t9
		mflo $t2	# t2 = 4w
		
		mult $t1,$t9
		mflo $t1	# t1 = 4n
		
		li $t5, 0	# sum = 0
		li $t6, 0 	# last = 0
		
		Loop:
			li $v0, 5
			syscall		# read_int
			
			sw $v0, array($t3)	# array}[counter] = read_int	
			add $t5, $t5, $v0	# sum+= read_int
			blt $t3, $t2, Incre	# counter < 4(w-1)
			lw $t7, array($t6)
			sw $t5, array($t6)	# array[last] = sum
				#
			sub $t5, $t5, $t7
			addi $t6, 4
			
			Incre:
				
			addi $t3, 4			#counter+=1
			blt $t3, $t1, Loop
			
		
		la $a0, msg_output # message string in $a0, pseudoinstruction
        li $v0, 4 # Prepare to print the message
        syscall  # print the message
		
		li $t0, 0 	# counter = 0
		sub $t3, $t1, $t2
		# addi $t3, 4	# upper limit
		
		div $t2, $t9
		mflo $t2
		addi $t2, 1
		Print_Loop:
			lw $t4, array($t0)	# t4 = array[counter]
			
			
			div $t4, $t2
			mflo $t4
			sw $t4, array($t0)	# t4 = array[counter]
			li $v0, 1	# print_int
			move $a0, $t4
			syscall
			
			la $a0, newline # message string in $a0, pseudoinstruction
			li $v0, 4 # Prepare to print the message
			syscall  # print the message
			
			addi $t0, 4
			blt $t0, $t3, Print_Loop
			
		Exit:
			li $v0, 10
			syscall # exit
		
		
		
		
		
		
		
		
		
		
		
		
