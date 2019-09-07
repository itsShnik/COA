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
