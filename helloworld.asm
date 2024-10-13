
SECTION .data
msg     db        'Hello World', 10

SECTION .text

global _start

_start:
  mov edx, 13 ; setting size of the string to EDX
  mov ecx, msg ; setting the string address to ECX
  mov ebx, 1 ; setting writing  (STDOUT = 1)
  mov eax, 4 ; sys_write = 4 
  int 80h ; sycall
