###############Data Segment########
	.data
msg_input:	.asciiz "\nEnter the elements of array:\n"
msg_array: .asciiz "\nThe  array is: \n"
msg_print: .asciiz "\nThe sorted array is: \n"
space_msg:	.asciiz " "
array:
	.align 2
	.space 32
############## Data Segment #################

############## Text Segment ##############
.text
.globl main
	main:
		 la $a0, msg_input # message string in $a0, pseudoinstruction
		 li $v0 , 4	# Prepare to print the message
		 syscall	 # print the message
		 
		 li $t0 , 1	# counter 1
		 li $t1, 7	# value the counter is compared to
		 
		 li $v0 , 5 # reading the first element
		 syscall 	# position in $v0
		 
		 la $t2, array	# load in t2 address of array
		 sw $v0, ($t2)	# store value of integer read in fisrt element of array
		 
		 li $t4, 0		# counter for maintaining current position of element read
		 
		 Inp_Loop: # scanning the next elements
			li $v0, 5	# reading the next element
			syscall		# position in $v0
			addi $t4, 4	# move to next location i.e counter += 4 
			add $t5, $t2, $t4	# access the element array[t4]
			sw $v0, ($t5)	# store in array[t4] value read
			addi $t0, 1		# increment first counter by one
			ble $t0, $t1, Inp_Loop	# if counter <= 7 , continue the loop
		

		la $a0, msg_array # message string in $a0, pseudoinstruction
		li $v0 , 4	# Prepare to print the message
		syscall	 # print the message
		
		li $t0, 0	# counter i
		li $t1, 28 # upper limit
		 
		Print_Array1:
			la $a0, space_msg # message string in $a0, pseudoinstruction
			li $v0 , 4	# Prepare to print the message
			syscall	 # print the message
			
			lw $a0, array($t0)
			li $v0, 1
			syscall		# print _ array[i]
			addi $t0, 4
			ble $t0 , $t1, Print_Array1
			
			
		jal Ins_Sort		# call function Ins_Sort
		

			
		la $a0, msg_print # message string in $a0, pseudoinstruction
		li $v0 , 4	# Prepare to print the message
		syscall	 # print the message
		
		li $t0, 0	# counter i
		li $t1, 28 # upper limit
		 
		Print_Array:
			la $a0, space_msg # message string in $a0, pseudoinstruction
			li $v0 , 4	# Prepare to print the message
			syscall	 # print the message
			
			lw $a0, array($t0)
			li $v0, 1
			syscall		# print _ array[i]
			addi $t0, 4
			ble $t0 , $t1, Print_Array
			
		
			
			
		
		
		Exit:
			li $v0, 10
			syscall # exit
			
			
		Ins_Sort:
			li $s0, 4 	# i 
			
			Loop:
				lw $s2, array($s0)		# s2 <-- array(i)
				addi $s1, $s0 , -4		# j= i-1
				
				 
				
				Inner_Loop:
					lw $s3, array($s1)		# s3 = array[j]
					blt $s1, $zero, Incre	# if j < 0
					ble $s3, $s2, Incre		# if array[j] <= s2
					addi $t0, $s1, 4	 # t0  = j+1
					sw $s3,array($t0)  # array[j+1] = array[j]
					addi $s1, -4			#j = j-1
					b Inner_Loop			# while 
					
				Incre:
					addi $t0, $s1, 4	 # t0  = j+1
					sw $s2, array($t0)		# array[j+1] = s2 
					addi $s0, 4				# i = i+1
					ble $s0 , 28, Loop		# if i <n

			jr $ra		# return




		
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
