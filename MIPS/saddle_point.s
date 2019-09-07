###############Data Segment########
	.data
msg_input:	.asciiz "\nEnter the elements of 2D twoDarray (row - major):\n"
msg_twoDarray: .asciiz "\nThere is no saddle point present in the 2D twoDarray: \n"
msg_print: .asciiz "\nThe indices of saddle points are: \n"
space_msg:	.asciiz " "
newline: .asciiz "\n"
value_mdg: .asciiz "  <-- value, indices -->  "
twoDarray:
	.align 2
	.space 64
############## Data Segment #################

############## Text Segment ##############
.text
.globl main
	main:
		 la $a0, msg_input # message string in $a0, pseudoinstruction
		 li $v0 , 4	# Prepare to print the message
		 syscall	 # print the message
		 
		 li $t0 , 1	# counter 1
		 li $t1, 15	# value the counter is compared to
		 
		 li $v0 , 5 # reading the first element
		 syscall 	# position in $v0
		 
		 la $t2, twoDarray	# load in t2 address of twoDarray
		 sw $v0, ($t2)	# store value of integer read in fisrt element of twoDarray
		 
		 li $t4, 0		# counter for maintaining current position of element read
		 
		 Inp_Loop: # scanning the next elements
			li $v0, 5	# reading the next element
			syscall		# position in $v0
			addi $t4, 4	# move to next location i.e counter += 4 
			add $t5, $t2, $t4	# access the element twoDarray[t4]
			sw $v0, ($t5)	# store in twoDarray[t4] value read
			addi $t0, 1		# increment first counter by one
			ble $t0, $t1, Inp_Loop	# if counter <= 15 , continue the loop
		
		li $t7, 0 # flag to check if no saddle point is there
		jal findSaddlePoint
		
		beq $t7, 1, Exit
		
		la $a0, msg_twoDarray # message string in $a0, pseudoinstruction
		li $v0 , 4	# Prepare to print the message
		syscall	 # print the message


				
	
		
	Exit:
		b main
		li $v0, 10
		syscall # exit

		findSaddlePoint:
		
			########## check max(row) and min(col)##########
		
			li $t0, 0 # i = 0, the row counter
			
			Loop:

				li $t1, 0 # j = 0, the column counter
				li $t4, 4
				mult $t0, $t4
				mflo $t4
				lw $t2, twoDarray($t4) # max = arr[i][0]
				
				li $t3, 0 # col = 0
				
				Inner_Loop1:
					li $t4, 4
					mult $t0, $t4
					mflo $t4
					add $t4, $t4, $t1	# calculating the value of 4 * i + j
					
					lw $t5, twoDarray($t4)
					
					bge $t2, $t5, Incre_in1 # if max >= twoDarray[i][j], go to incre
					move $t2, $t5    # max = twoDarray[i][j]
					move $t3, $t1	# col = j
					
					Incre_in1:
						
						Flag0:
						addi $t1, 4 # j = j + 1
						ble $t1, 12, Inner_Loop1 # check j <= 3 for inner loop
						
				

				li $t6, 0 # counter = 0
				li $t5, 0 # k = 0
				Check:
					li $t4, 4
					mult $t0, $t4
					mflo $t4
					add $t4, $t4, $t5	# calculating the value of 4 * i + k
					lw $t7, twoDarray($t4)
					bne $t2, $t7 , Check_Incre
					addi $t6, 1
					Check_Incre:
						addi $t5, 4
					ble $t5, 12, Check
					
				bge $t6, 2,Incre_Out
				
				li $t1 , 0 # k = 00
				
				Inner_Loop2:
					li $t4, 4
					mult $t1, $t4
					mflo $t4
					add $t4, $t4, $t3	# calculating the value of 4 * k + col
					
					lw $t5, twoDarray($t4)
					bgt $t2, $t5, Incre_Out # if max > twoDarray[k][col], go to incre
					
					
					Incre_in2:
						addi $t1, 4 # k = k + 1
						ble $t1, 12, Inner_Loop2 # check k <= 3 for inner loop
				

				li $t6, 0 # counter = 0
				li $t5, 0 # k = 0
				Check1:
					li $t4, 4
					mult $t5, $t4
					mflo $t4
					add $t4, $t4, $t3	# calculating the value of 4 * k + col
					lw $t7, twoDarray($t4)
					bne $t2, $t7 , Check_Incre1
					bne $t2, $t7 , Check_Incre1
					addi $t6, 1
					Check_Incre1:
						addi $t5, 4
					ble $t5, 12, Check1
					
				bge $t6, 2,Incre_Out




				
				li $t7, 1 # saddle point found
				#print the position of the saddle point whenever it is found
				li $t4, 4
				mult $t0, $t4
				mflo $t4
				add $t4, $t4, $t3	# calculating the value of 4 * i +col
				
				lw $a0, twoDarray($t4)
				li $v0, 1
				syscall
				
				la $a0, value_mdg # message string in $a0, pseudoinstruction
				 li $v0 , 4	# Prepare to print the message
				 syscall	 # print the message
				
				li $t4, 4
				div $t0, $t4
				mflo $s0
				move $a0, $s0
				li $v0, 1
				syscall
				
				la $a0, space_msg # message string in $a0, pseudoinstruction
				 li $v0 , 4	# Prepare to print the message
				 syscall	 # print the message
				
				div $t3, $t4
				mflo $s0
				
				move $a0, $s0
				li $v0, 1
				syscall
				
				la $a0, newline # message string in $a0, pseudoinstruction
				 li $v0 , 4	# Prepare to print the message
				 syscall	 # print the message
				
				Incre_Out:
					addi $t0, 4 # i ++
					ble $t0, 12, Loop	



			########## check min(row) and max(col)##########
			
			li $t0, 0 # i = 0, the row counter
			
			LoopZ:

				li $t1, 0 # j = 0, the column counter
				li $t4, 4
				mult $t0, $t4
				mflo $t4
				lw $t2, twoDarray($t4) # min = arr[i][0]
				
				li $t3, 0 # col = 0
				
				Inner_Loop1Z:
					li $t4, 4
					mult $t0, $t4
					mflo $t4
					add $t4, $t4, $t1	# calculating the value of 4 * i + j
					
					lw $t5, twoDarray($t4)
					
					ble $t2, $t5, Incre_in1Z # if min <= twoDarray[i][j], go to incre
					move $t2, $t5    # min = twoDarray[i][j]
					move $t3, $t1	# col = j
					
					Incre_in1Z:
						addi $t1, 4 # j = j + 1
						ble $t1, 12, Inner_Loop1Z # check j <= 3 for inner loop
						
				

				li $t6, 0 # counter = 0
				li $t5, 0 # k = 0
				Checkz:
					li $t4, 4
					mult $t0, $t4
					mflo $t4
					add $t4, $t4, $t5	# calculating the value of 4 * i + k
					lw $t7, twoDarray($t4)
					bne $t2, $t7 , Check_Increz
					addi $t6, 1
					Check_Increz:
						addi $t5, 4
					ble $t5, 12, Checkz
					
				bge $t6, 2,Incre_OutZ
				
				
				
				li $t1 , 0 # k = 00
				
				Inner_Loop2Z:
					li $t4, 4
					mult $t1, $t4
					mflo $t4
					add $t4, $t4, $t3	# calculating the value of 4 * k + col
					
					lw $t5, twoDarray($t4)
					blt $t2, $t5, Incre_OutZ # if min < twoDarray[k][col], go to incre
					
					
					Incre_in2Z:
						addi $t1, 4 # k = k + 1
						ble $t1, 12, Inner_Loop2Z # check k <= 3 for inner loop
				
				li $t6, 0 # counter = 0
				li $t5, 0 # k = 0
				Check1z:
					li $t4, 4
					mult $t5, $t4
					mflo $t4
					add $t4, $t4, $t3	# calculating the value of 4 * k + col
					lw $t7, twoDarray($t4)
					bne $t2, $t7 , Check_Incre1z
					bne $t2, $t7 , Check_Incre1z
					addi $t6, 1
					Check_Incre1z:
						addi $t5, 4
					ble $t5, 12, Check1z
					
				bge $t6, 2,Incre_OutZ
				
				li $t7, 1 # saddle point found
				#print the position of the saddle point whenever it is found
				li $t4, 4
				mult $t0, $t4
				mflo $t4
				add $t4, $t4, $t3	# calculating the value of 4 * i +col
				
				lw $a0, twoDarray($t4)
				li $v0, 1
				syscall
				
				la $a0, value_mdg # message string in $a0, pseudoinstruction
				 li $v0 , 4	# Prepare to print the message
				 syscall	 # print the message
				
				li $t4, 4
				div $t0, $t4
				mflo $s0
				move $a0, $s0
				li $v0, 1
				syscall
				
				la $a0, space_msg # message string in $a0, pseudoinstruction
				 li $v0 , 4	# Prepare to print the message
				 syscall	 # print the message
				
				div $t3, $t4
				mflo $s0
				
				move $a0, $s0
				li $v0, 1
				syscall
				
				la $a0, newline # message string in $a0, pseudoinstruction
				 li $v0 , 4	# Prepare to print the message
				 syscall	 # print the message
				
				Incre_OutZ:
					addi $t0, 4 # i ++
					ble $t0, 12, LoopZ	
			
			jr $ra
			
			
			
			
			
			
				