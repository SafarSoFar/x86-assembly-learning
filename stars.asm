section .text
  global _start

_start:
  ; displaying 9 stars text
  mov edx, len
  mov ecx, msg
  mov ebx, 1
  mov eax, 4 ; sys_write
  int 0x80 ; call kernel

  ; displaying stars
  mov edx, 18 ; stars length + null byte
  mov ecx, s2 ; stars string
  mov ebx, 1 ; console
  mov eax, 4 ; sys_write
  int 0x80; call kernel

  mov eax, 1 ; sys_exit
  int 0x80 ; call kernel


section .data
msg db '9 Stars', 0xa ; 0xa - new line character \n
len equ $ - msg ; len of the msg 
s2 times 9 db '*', 0xa ; copying 9 stars to the string
