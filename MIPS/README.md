# Notes

### Cheat Sheet and Quick Tutorial
---
- [Instruction Set](https://github.com/itsShnik/COA/tree/master/MIPS/CheatSheets/instructions.pdf)

- [Quick Tutorial](https://github.com/itsShnik/COA/tree/master/MIPS/CheatSheets/quick_tut.pdf)

### MIPS assembly language instruction set
---
![Instruction Set](Images/mipsasmtable.jpg?raw=true)

### Sample Programs
---

- Program to add two numbers

```
##########Data Segment########################
.data
prompt:
       .asciiz  "Enter two numbers: "
sum_msg:
       .asciiz "The sum is: "
newline:
       .asciiz "\n"
###########Code Segment#####################
       .text
       .globl main
main:

       la $a0,prompt #loads $a0 with the address 
       li $v0,4  #prints the string
       syscall

       li $v0,5  #reads first integer
       syscall
       move $t0, $v0 #result returned in $v0
    
       li $v0, 5 #reads second integer
       syscall
       move $t1, $v0 #result returned in $v0
       
       addu $t0, $t0, $t1

       la $a0,sum_msg
       li $v0,4
       syscall

       move $a0,$t0
       li $v0,1 #prints the integer sum
       syscall
   
      #li $v0,10  #exit
      #syscall
```

- Program to find the sum of first n natural numbers

```
 .data
msg_input:   .asciiz "Enter the argument (positive number): "
msg_arg:   .asciiz "The argument is: "
msg_result:   .asciiz "The sum is: "
newline:   .asciiz "\n"

####################### Text segment ######################################
.text
.globl main
     main:
          la $a0, msg_input # message string in $a0, pseudoinstruction
          li $v0, 4 # Prepare to print the message
          syscall  # print the message

          li $v0, 5 # for read_int
          syscall # argument in $v0
          move $a0, $v0 # argument in $a0
           
          # Print argument to make sure....debug step
          move $t0, $a0 # temporary register $t0 contains the argument   
          li  $v0, 4 # for print_str
          la  $a0, msg_arg  # preparing to print the message
          syscall  # print the string
          li  $v0, 1 # for print_int
          move $a0, $t0 # get argument back in $a0
          syscall  # print the argument
          
          move $v0, $t0 # copy value in $v0, pseudoinstruction
          # Run a loop and perform addition of natural numbers up to $a0
          Loop:  
          sub $t0, $t0, 1
          add $v0, $v0, $t0
          bgt $t0, $zero, Loop
          
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

```
