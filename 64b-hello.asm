
section .data
  hello: db 'Hello', 0
  len: equ $-hello
section .text
  global _start

_start:
  mov rax, 1 ; sys_write
  mov rdi, 1 ; stdout (destination index)
  mov rsi, hello ; message adress (source index)
  mov rdx, len ;
  syscall 

  mov rax, 60 ; sys_exit
  xor rdi, rdi ; resets to 0, 0 is the success code
  syscall
