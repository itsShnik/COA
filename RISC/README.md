# RISC-Fuggit

RISC-Fuggit is the name given to the reduced instruction set computer, designed, implemented and programmed by @itsShnik and @Akurath6555. We developed a single cycle instruction execution unit for RISC-Fuggit. The CPU was programmed in verilog with the __Xilinx ISE 14.7__ and was deployed on the FPGA Spartan 3. Below are the instructions to setup and use this CPU.

## Instruction Set Architecture

![Instruction Set Architecture](Images/ISA.png?raw=true)

## Setup Requirements

1. __Xilinx ISE 14.7__: ISE Suite 14.7 from Xilinx can be downloaded from their official website. This [Video](https://www.youtube.com/watch?v=VMEIPCjqinA) is explains how to download and install ISE 14.7 in Windows 10.

2. __FPGA__: This is not an essential requirement, you can simulate the CPU using the ISE Suite.

## Setup

Clone this repository using the following command or download the zip (it's a good habit to star the repo, whenever you fork/clone one!).

```
git clone https://github.com/itsShnik/COA.git
```

Move to the directory COA/RISC/RISC_1/ipcore_dir, and click on the file blk_mem_gen_v7_3.xise to open this as a project in Xilinx ISE. 

## Documentation
----

### Register Convention

![Register Convention](Images/regconvention.png?raw=true)

### Operation Codes

![opcodes](Images/opcodes.png?raw=true)

### Function Codes

#### Arithmetic (opcode : 000)

![arithmetic](Images/arithmetic.png?raw=true)

#### Logic (opcode : 001)

![logic](Images/logic.png?raw=true)

#### Shift (opcode : 010)

![shift](Images/shift.png?raw=true)

#### Memory (opcode : 011)

![memory](Images/memory.png?raw=true)

#### Branch (opcode : 100)

![branch](Images/branch.png?raw=true)


### CPU Design: Architecture

The CPU architechture of RISC-Fuggit is inspired by the image shown below. We have slightly modified this architecture to obtain the required configurations.

![architecture](Images/architecture.png?raw=true)

### Modules/Components

RISC-Fuggit is made of the following components/modules. These modules are instantiated in the main module RISC_main in the following order.

1. __Instruction Fetch__:
	1.1. __PC Incrementer__: Increments the next programcounter to either the jump value (L or ra) oradds one to the current program counter. Workssynchronously with the clock.
	1.2. __Instruction Memory__: Loads the instructions atthe current program counter from the BRAMinstantiated for instructions only.
2. __Instruction Decoder__: Segments the instruction into interpreteble register addresse, jump values,immediate addresses, operation code and immediatevalues/shift amounts.
3. __Register Bank__: Stores 32 registers each of 32 bits. Writes (on negedge) in values of the inputregisters on write enable signal. Always outputsvalues of registers read from instructions.
4. __Control__: Depending on the operation it activatesvarious modules/hardwares with differentfunctionalities (all flags defined later).
5. __Input Decider__: Decides between immediate andregister values depending on the instruction type.
6. __ALU__: Main arithmetic and logical unit of theprocessor, employs hierarchical designincorporating hybrid adders and array multipliers for both signed and unsigned operations.
7. __Data Memory__: Higher level module for BRAMinstantiated for data memory.
8. __Branch Logic__: Depending on the type of the branchinstruction, returns the jump value (directaddress of the next instruction).
9. __Write Back__: Chooses between ALU output and memoryoutput to write back to destination register.

### Flags/Controls:

1. __regDst__ : use when you need three registers to check, which register to write to branch
2. __memRead__: use when data memory is to be read
3. __memToReg__ : decide b/w alu ou/p and data memory o/p
4. __memWrite__ : select line to data memory
5. __aluSrc__ : differentiates between register andconstant for ALU
6. __regWrite__ : write to reg or not (if write :synchronous)
7. __regBranch__ : to decide whether jump to (rs) or L
8. __raWrite__ : to decide if it call is used , writeback to ra register
9. __isMult__ : to write back hi and lo.

### Assumptions

1. Since it is not mentioned in the assignment the mode of addressing to be used, we have used relative addressing for branch instructions.
2. Block RAMs have a peculiar issue that they have significant delay in fetching data (around 0.5 clock cycles) from the RAM. Hence, we have dividedthe input clock into two parts, a slower one and a faster one. The faster one is two times faster and is used to fetch data from Block RAM whereas the slower one is used for other modules.
3. Block RAMs have addresses as 0, 1, 2, .... Hence,we have used PC+1 instead of PC+4.

### Footnote

If you are a KGPian, read further. I hope that you are doing well and your semester is going good. If you straighaway want to download this repository and copy, please stop. I am certain that you can do better. A better way to proceed is to use this repository as reference and write the codes yourself. All help that you need is provided in this repository. Just keep in mind the CPU architecture and follow along. If this is the last day of submission and you can't help but copy, go ahead, but don't forget to de-moss. All the best.
