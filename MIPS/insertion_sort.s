###############Data Segment########
	.data
msg_input:	.asciiz "Enter the elements of array:\n"
msg_print: .asciiz "The sorted array is: \n"
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
		
		li $t0, 0		# initiate counter i of outer loop
		li $t8, 28		# 4 * n-1
		
		Sort_Out:		# outer loop
			li $t1, 0	# initiate counter j of inner loop to 0
			SORT_IN:	# inner loop
				li $t7, 28	#4* n-1
				add $t5, $t2, $t1	# locate array[j]
				lw $t3, ($t5)	# load value of array[j] in t3
				lw $t4, 4($t5)	# load value of array[j+1] in t4
				bgt $t3, $t4, SWAP	#compare and swap if array[j]>array[j+1]
				addi $t1, 4		# increment counter to next location
				sub $t7, $t7, $t0	# check if j<n-1-1
				blt $t1, $t7, SORT_IN	# continue the inner loop
				b OUT	# else go to outer loop
				SWAP:		# function to swap array[j] and array[j+1]
					sw $t4, ($t5)	
					sw $t3, 4($t5)
					addi $t1, 4
					sub $t7, $t7, $t0	# check if j<n-1-1
					blt $t1, $t7, SORT_IN	# continue the inner loop
			OUT:	
				addi $t0, 4		# increment i
				blt $t0, $t8, Sort_Out	#check if i<n , contiue to outer loop
				
		
		la $a0, msg_print # output message
		li $v0 , 4
		syscall
		
		li $t4, 0	# counter
		li $t0 , 1	
		li $t1, 8
		
		Print_Array: # scanning the next elements
			li $v0, 1
			 
			add $t5, $t2, $t4
			lw $t3, ($t5)
			move $a0,$t3
			syscall
			
			la $a0, space_msg # enter the numbers
			li $v0 , 4
			syscall
		 
			addi $t4, 4
			
			addi $t0, 1
			ble $t0, $t1, Print_Array
			
		Exit:
          li $v0, 10
          syscall # exit
		  
		 ERROR:
			  li $v0, 4
			  la  $a0, err_msg  # preparing to print error message
			  syscall
			  b Exit
			
			
			
		
		 