
General Registers - data registers (eax, ebx, ecx, edx), pointer registers(eip, esp, ebp), index registers(si, di)

Control Registers - instruction registers & flag registers

# Data Registers
EAX - 32-bit accumulator
EBX - 32-bit base 
ECX - 32-bit counter 
EDX - 32-bit data 


# Flag Registers
The flag register is a big 32-bit/16-bit register where each byte stores some state

!["flags register cheatsheet image"](assets/flags-register-cheatsheet.png)

Many instructions use the flag register to store the result value of the instruction.
For Example the instructions of arithmetic operations set Zero Flag to 1
if the result is zero

OF - leftmost bit overflow flag
DF - determines left or right direction for moving or comparing string data. 
0 - left to right 1 - right to left
IF - determines if required to process/ignore external interrupts 
0 - ignore 1 - process
TF - trap flag, for debug purposes sets processor to single-step mode
SF - sign flag, shows the sign of the result of an arithmetic operation.
0 - positive, 1 - negative 
ZF - zero flag, indicates the result of an arithmetic  or comparison operation.
Nonzero result sets flag to 0, zero result - 1
AF - auxiliary carry flag, carry flag from bit 3 to bit 4. For specialized arithmetics
PF - parity flag, sets to 1 if the result of an arithmetic operation has even number of 1-bits, odd result sets to 0
CF - carry flag, contains carry of 0 or 1 from a leftmost after arithmetic operation.
Also stores the contents of last bit of a shift or rotate operation

# Pointer Registers
EIP - 32-bit instruction pointer
ESP - 32-bit stack pointer
EBP - 32-bit base pointer

# Index Registers
ESI - 32-bit source index pointer
EDI - 32-bit destination index pointer


