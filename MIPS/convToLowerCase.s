####################### Data segment ######################################
 .data
msg_input:   .asciiz "Enter the string (max 30 chars) "
msg_arg:   .asciiz "The lowercase string is:"
adrr_msg: 	.asciiz "After storing the string at specified address \n"
newline:   .asciiz "\n"
string_inp: 
		.align 2
		.space 100
####################### Data segment ######################################

###################### Text segment ######################################
.text
.globl main
    main:
		la $a0, msg_input # message string in $a0, pseudoinstruction
        li $v0, 4 # Prepare to print the message
        syscall  # print the message
		
		li $v0 , 8 #to read the string
		la $a0 , string_inp # store the address of the string
		li $a1, 30 # input length of the string
		syscall
		
		la $a0, newline # printing \n
        li $v0, 4 # Prepare to print the message
        syscall  # print the message
	 
		
		li $t0 , 0 # the counter for the loop
		toLower:
			lb $t1, string_inp($t0) #access the array element
			blt $t1, 'A', Incre
			bgt $t1, 'Z' , Incre
			addi $t1, 32 # convert to lowercase
			sb $t1, string_inp($t0) #store in the array
			Incre:
				addi $t0, 1# increment the counter
				lb $t1, string_inp($t0) # check if next is null
				beq $t1, 0, PrintLower
				b toLower
		
		PrintLower:
			li $v0, 4 # to print the string
			la $a0 , string_inp # store the address of the string
			syscall
		
		la $a0, adrr_msg # message string in $a0, pseudoinstruction
        li $v0, 4 # Prepare to print the message
        syscall  # print the message
		
			
		li $t0 , 0 # the counter for the loop
		lui $t2 , 0x1001 # store the address in the register
		move $t3, $t2
		toAddress:
			lb $t1, string_inp($t0) #access the array element
			sb $t1, ($t2) #store in the array
		
			addi $t0, 1 # increment the counter
			addi $t2, 1 # increment the counter
			lb $t1, string_inp($t0) # check if next is null
			beq $t1, 0, PrintLowerString
			b toAddress
		
		
		
		PrintLowerString:
			lb $t1, string_inp($t0) #access the array element
			sb $t1, ($t2) #store in the array
			li $v0, 4 # to print the string
			move $a0, $t3
			syscall
		
		
		
		Exit:
			li $v0, 10
			syscall # exit
		