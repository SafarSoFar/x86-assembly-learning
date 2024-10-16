
            global main                 ; main contains _start inside itself
            extern puts                 ; using extenral function puts

            section .text
main:        
            mov rdi, message            ; passing the first argument to rdi (destination index)
            call puts                   ; writes the message to the console
            ret                         ; return from C Lib

message: 
            db "Message", 0

