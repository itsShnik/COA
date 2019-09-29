# Notes

### Types of instructions

#### R type:

| op | rs | rt | rd | shamt | funct |
| --- | --- | --- | --- | --- | --- |
| 6 bits | 5 bits | 5 bits | 5 bits | 5 bits | 6 bits |

_where,_

- __op__: Basic operation of the instruction, traditionally called the opcode.
- __rs__: The fi rst register source operand.
- __rt__: The second register source operand.
- __rd__: The register destination operand. It gets the result of the operation.
- __shamt__: Shift amount.
- __funct__: Function. This field, often called the function code, selects the specific variant of the operation in the op field.

For example add instructions (see in instruction set)

#### I type:

Used by immediate and data transfer instructions

| op | rs | rt | constant / address |
| --- | --- | --- | --- | 
| 6 bits | 5 bits | 5 bits | 16 bits |

Combined example of both R and I type:

code statement:

```C
A[300] = h + A[300];
```

is compiled into

```assembly
lw $t0,1200($t1)		# Temporary reg $t0 gets A[300], I type
add $t0,$s2,$t0		     #Temporary reg $t0 gets h + A[300], R type
sw $t0,1200($t1)		# Stores h + A[300] back into A[300], I type
```

And the corresponding instructions are given by the table:

| op | rs | rt | rd | shamt / address | funct |
| --- | --- | --- | --- | --- | --- |
| 35 | 9 | 8 | | 1200 |  |
| 0 | 18 | 8 | 8 | 0 | 32 |
| 43 | 9 | 8 | | 1200 |  |

#### J type:

__Unconditional Jumps:__

| 2 | address |
| --- | --- |
| 6 bits | 26 bits |

For example,

```assembly
j 10000			 # go to location 10000
```

__Conditional Jumps:__

| op | rs | rt | branch address |
| --- | --- | --- | --- | 
| 6 bits | 5 bits | 5 bits | 16 bits |

For Example,

```assembly
bne $s0,$s1,Exit		# go to Exit if $s0 ≠ $s1
```

If addresses of the program had to fi t in this 16-bit fi eld, it would mean that no program could be bigger than 2<sup>16</sup> , which is far too small to be a realistic option today. An alternative would be to specify a register that would always be added
to the branch address, so that a branch instruction would calculate the following:

```
		Program counter = Register + Branch address
```

This sum allows the program to be as large as 2<sup>32</sup> and still be able to use conditional branches, solving the branch address size problem. Then the question is, which register?

The answer comes from seeing how conditional branches are used. Conditional branches are found in loops and in if statements, so they tend to branch to a nearby instruction. For example, about half of all conditional branches in SPEC benchmarks go to locations less than 16 instructions away. Since the program counter (PC) contains the address of the current instruction, we can branch within&plusmn;2<sup>15</sup> words of the current instruction if we use the PC as the register to be added to the address. Almost all loops and if statements are much smaller than 2 16 words, so the PC is the ideal choice.

This form of branch addressing is called PC-relative addressing. As we shall see in Chapter 4, it is convenient for the hardware to increment the PC early to point to the next instruction. Hence, the MIPS address is actually relative to the address of the following instruction (PC  4) as opposed to the current instruction (PC). It is yet another example of making the common case fast, which in this case is addressing nearby instructions.

Like most recent computers, MIPS uses PC-relative addressing for all conditional branches, because the destination of these instructions is likely to be close to the branch. On the other hand, jump-and-link instructions invoke procedures that have no reason to be near the call, so they normally use other forms of addressing. Hence, the MIPS architecture offers long addresses for procedure calls by using the J-type format for both jump and jump-and-link instructions.

Since all MIPS instructions are 4 bytes long, MIPS stretches the distance of the branch by having PC-relative addressing refer to the number of words to the next instruction instead of the number of bytes. Thus, the 16-bit field can branch four times as far by interpreting the fi eld as a relative word address rather than as a relative byte address. Similarly, the 26-bit fi eld in jump instructions is also a word address, meaning that it represents a 28-bit byte address.

### MIPS addressing mode summary

1. __Immediate addressing__, where the operand is a constant within the instruction itself
2. __Register addressing__, where the operand is a register
3. __Base or displacement addressing__, where the operand is at the memory location whose address is the sum of a register and a constant in the instruction
4. __PC-relative addressing__, where the branch address is the sum of the PC and a constant in the instruction
5. __Pseudodirect addressing__, where the jump address is the 26 bits of the instruction concatenated with the upper bits of the PC

### MIPS assembly language instruction set
---
![Instruction Set](Images/mipsasmtable.jpg?raw=true)


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
	addi $sp, $sp, –8 # adjust stack for 2 items
	sw	$ra, 4($sp) # save the return address
	sw  $a0, 0($sp) # save the argument n
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

### Cheat Sheet and Quick Tutorial
---
- [Instruction Set](https://github.com/itsShnik/COA/tree/master/MIPS/CheatSheets/instructions.pdf)

- [Quick Tutorial](https://github.com/itsShnik/COA/tree/master/MIPS/CheatSheets/quick_tut.pdf)


