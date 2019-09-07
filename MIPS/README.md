# Notes

### Cheat Sheet and Quick Tutorial
---
- [Instruction Set](https://github.com/itsShnik/COA/tree/master/MIPS/CheatSheets/instructions.pdf)

- [Quick Tutorial](https://github.com/itsShnik/COA/tree/master/MIPS/CheatSheets/quick_tut.pdf)

### Sample Programs
---

- Program to add two numbers

```asm
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

### Handling Recursive Program

Let’s tackle a recursive procedure that calculates factorial:
```C
int fact (int n)
{
	if (n < 1)
	     return (1);
	else
	     return (n * fact(n – 1));
}
```
What is the MIPS assembly code?
The parameter variable n corresponds to the argument register $a0. The compiled program starts with the label of the procedure and then saves two registers on the stack, the return address and $a0:
```asm
fact:
	addi
	sw
	sw
	$sp, $sp, –8 # adjust stack for 2 items
	$ra, 4($sp) # save the return address
	$a0, 0($sp) # save the argument n
```
The first time fact is called, sw saves an address in the program that called fact. The next two instructions test whether n is less than 1, going to L1 if n ≥ 1.
```asm
	slti $t0,$a0,1 # test for n < 1
	beq $t0,$zero,L1 # if n >= 1, go to L1
```
If n is less than 1, fact returns 1 by putting 1 into a value register: it adds 1 to 0 and places that sum in $v0. It then pops the two saved values off the stack and jumps to the return address:
```asm
	addi $v0,$zero,1 # return 1
	addi $sp,$sp,8 # pop 2 items off stack
	jr $ra # return to caller
```
Before popping two items off the stack, we could have loaded $a0 and $ra. Since $a0 and $ra don’t change when n is less than 1, we skip those instructions. If n is not less than 1, the argument n is decremented and then fact is called again with the decremented value:
```asm
L1: 
	addi $a0,$a0,–1 # n >= 1: argument gets (n – 1)
	jal fact # call fact with (n –1)
	
```
The next instruction is where fact returns. Now the old return address and old argument are restored, along with the stack pointer:
```asm
	lw $a0, 0($sp) # return from jal: restore argument n
	lw $ra, 4($sp) # restore the return address
	addi $sp, $sp, 8 # adjust stack pointer to pop 2 items
```
Next, the value register $v0 gets the product of old argument $a0 and the current value of the value register.
```asm
	mul $v0,$a0,$v0 # return n * fact (n – 1)
```
Finally, fact jumps again to the return address:
```asm
	jr $ra # return to the caller
```

### MIPS assembly language instruction set
---
![Instruction Set](Images/mipsasmtable.jpg?raw=true)


