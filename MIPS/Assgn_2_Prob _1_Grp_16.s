###############Data Segment########
	.data
msg_input:	.asciiz "Enter the elements of array in ascending order:\n"
msg_query:	.asciiz "Enter the integer to be searched:"
msg_present: .asciiz "The element is present at location (zero indexed): "
msg_absent:	.asciiz "The element is absent.\n"
err_msg:	.asciiz "Error :: Entered numbers are not in ascending order.\n"
array:	
	.align 2
	.space 32
############## Data Segment #################

############## Text Segment ##############
.text
.globl main
	main:
		 la $a0, msg_input # enter the numbers
		 li $v0 , 4
		 syscall
		 
		 li $t0 , 1
		 li $t1, 7
		 
		 li $v0 , 5 # reading the first element
		 syscall 
		 
		 la $t2, array
		 sw $v0, ($t2)
		 
		 li $t4, 0
		 
		 Inp_Loop: # scanning the next elements
			li $v0, 5
			syscall
			add $t5, $t2, $t4
			lw $t3, ($t5)
			blt $v0, $t3, ERROR
			addi $t4, 4
			add $t5, $t2, $t4
			
			sw $v0, ($t5)
			
			addi $t0, 1
			ble $t0, $t1, Inp_Loop
			
		 la $a0, msg_query # enter the numbers
		 li $v0 , 4
		 syscall
			
		 li $v0 , 5 # reading the first element
		 syscall 
		 
		 lw $t3, ($t2)
		 beq $v0, $t3, PRESENT
		 lw $t3, 32($t2)
		 #bgt $v0, $t3, ABSENT
		 
		 li $t0, 1 # store the lo
		 li $t1, 8 # store the hi
		 li $t6 , 2
		 li $t4, 4
		 
		 BINARY_SEARCH:
			add $t3, $t0, $t1 # lo + hi
			div $t3, $t6
			mflo $t3
			move $t8, $t3
			mult $t3, $t4
			mflo $t3
			add $t5, $t3, $t2
			lw $t7, ($t5)
			beq $v0, $t7, PRESENT
			blt $v0, $t7, LESS
			addi $t0, $t8, 1
			ble $t0, $t1, BINARY_SEARCH
			b ABSENT
			
		LESS:
			addi $t1, $t8, -1
			ble $t0, $t1, BINARY_SEARCH
			b ABSENT	
			
			
		
			
		Exit:
          li $v0, 10
          syscall # exit
		  
		 ERROR:
			  li $v0, 4
			  la  $a0, err_msg  # preparing to print error message
			  syscall
			  b Exit
			  
		PRESENT:
			la $a0, msg_present # enter the numbers
			li $v0 , 4
			syscall
			li $v0, 1
			move $a0, $t8
			syscall
			b Exit
			
			
			
		ABSENT:
			la $a0, msg_absent # enter the numbers
			li $v0 , 4
			syscall
			b Exit
			
		
