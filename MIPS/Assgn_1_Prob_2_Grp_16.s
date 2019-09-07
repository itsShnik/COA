####################### Data segment ######################################
 .data
msg_input:   .asciiz "Enter the position (positive number): "
msg_arg:   .asciiz "The position is: "
msg_result:   .asciiz "The fibonacci term at this position(fn) is: "
err_msg: 	.asciiz "THE ENTERED NUMBER IS INVALID, TRY A POSITIVE NUMBER"
newline:   .asciiz "\n"
####################### Data segment ######################################
####################### Text segment ######################################
.text
.globl main
     main:
          la $a0, msg_input # message string in $a0, pseudoinstruction
          li $v0, 4 # Prepare to print the message
          syscall  # print the message

          li $v0, 5 # for read_int
          syscall # position in $v0
          move $a0, $v0 # position in $a0
           
          # Print position to make sure....debug step and perform the sanity check
          move $t0, $a0 # temporary register $t0 contains the position 
		  ble $t0, $zero, ERROR #show error if a non positive number is entered (SANITY CHECK)
		  
          li  $v0, 4 # for print_str
          la  $a0, msg_arg  # preparing to print the message
          syscall  # print the string
          li  $v0, 1 # for print_int
          move $a0, $t0 # get position back in $a0
          syscall  # print the position
          
		  #loading first two fibonacci numbers
          li $v0, 1 
		  li $t1, 1
		  li $t3, 2 #end of the counter
		  
		  ble $t0, $t3, Branch2 #if the entered number is less than or equal to 2 then print 1 directly
          # else run a loop to get fibonacci numbers at the required position
          Loop1:
          move $t2, $v0  #storing temporarily 
		  add $v0, $v0, $t1 #generating the next fibonacci number
		  move $t1, $t2  #moving the temp number to t1 so as to update t1 to next term
		  addi $t0, $t0, -1  #decrementing the counter
          bgt $t0, $t3, Loop1
          
		  Branch2:
          move $t0, $v0 # temporarily hold value in $t0
          
          # Print a newline
          li  $v0, 4 # for print_str
          la  $a0, newline # preparing to print the newline
          syscall  # print the newline
          
          # Print result
          li  $v0, 4 # for print_str
          la  $a0, msg_result  # preparing to print the message 
          syscall  # print the string
      
              
          move $a0, $t0 # get result in $a0
          li  $v0, 1 # for print_int
          syscall  # print the result
     Exit:
          li $v0, 10
          syscall # exit
		  
	 ERROR:
		  li $v0, 4
		  la  $a0, err_msg  # preparing to print error message
		  syscall
		  li $v0, 10
          syscall # exit
           
####################### Text segment ######################################
