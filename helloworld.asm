
  
SECTION .data
msg     db        'Hello World', 10 ; db - define byte

SECTION .text

global _start

_start:
  mov edx, 13 ; setting size of the string to EDX
  mov ecx, msg ; setting the string address to ECX
  mov ebx, 1 ; setting writing  (STDOUT = 1)
  mov eax, 4 ; sys_write = 4 
  int 80h ; sycall
global _start

_start:
  mov edx, 12 ; setting size of the string to EDX (EDX - data register)
  mov ecx, msg ; setting the string address to ECX (ECX - counter register)
  mov ebx, 1 ; file descriptor (STDOUT = 1) (EBX - base register)
  mov eax, 4 ; sys_write = 4 (EAX - accumulator register) 
  int 0x80 ; syscall

  mov eax, 1
  int 0x80
