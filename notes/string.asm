
section .bss  ; uninitialized data

section .data ; initialized data

HelloWorld: db "Hello World!", 10
length: equ $-HelloWorld

section .text ; main code


global _start

_start:
        nop

Read:   mov eax, 4
        mov ebx, 1
        mov ecx, HelloWorld
        mov edx, length
        int 80h

Done: 
        mov eax, 1 
        mov ebx, 0 
        int 80h


