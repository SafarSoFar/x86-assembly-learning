section .data
  userMsg db 'Enter a number: ', 0xa
  lenUserMsg equ $ - userMsg ; equ defines a label to a CONSTANT VALUE and right on the spot without further mov
  ; $ means the current address position, 
  ; so in order to get the len we substract the current pos with the message address pos
  dispMsg db 'You have entered: ', 0xa
  lenDispMsg equ $-dispMsg

section .bss ; Uninitialized data
  num resb 5

section .text
  global _start

_start:
  ; printing 'enter a number'
  mov eax, 4
  mov ebx, 1
  mov ecx, userMsg
  mov edx, lenUserMsg
  int 0x80

  ; reading user input
  mov eax, 3 ; sys_read
  mov ebx, 2 ; file descriptor (2)
  mov ecx, num ; address of the variable
  mov edx, 5 ; data length (num byte size 5)
  int 0x80

  ; printing 'you have entered: '
  mov eax, 4
  mov ebx, 1
  mov ecx, dispMsg
  mov edx, lenDispMsg
  int 0x80

  ; printing user input
  mov eax, 4
  mov ebx, 1
  mov ecx, num
  mov edx, 5
  int 0x80

  ; exit
  mov eax,1
  mov ebx, 0
  int 0x80




