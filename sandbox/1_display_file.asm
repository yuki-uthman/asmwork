section .bss
  	Buff resb 1

section .data

section .text
  	global _start

_start:
  	nop            ; This no-op keeps the debugger happy

Read:	
    mov eax,3 ; Specify sys_read call
    mov ebx,0     ; Specify File Descriptor 0: Standard Input
    mov ecx,Buff  ; Pass offset of the buffer to read to
    mov edx,1     ; Tell sys_read to read one char from stdin
    int 80h       ; Call sys_read


    cmp eax,0           ; Look at sys_read's return value in EAX
    je Exit             ; Jump If Equal to 0 (0 means EOF) to Exit

			                ; ...and then write out the char to stdout
Write:  
    mov eax,4     ; Specify sys_write call
    mov ebx,1           ; Specify File Descriptor 1: Standard output
    mov ecx,Buff        ; Pass address of the character to write
    mov edx,1           ; Pass number of chars to write
    int 80h             ; Call sys_write...
    jmp Read

Exit:	
    mov eax,1 ; Code for Exit Syscall
    mov ebx,0     ; Return a code of zero to Linux
    int 80H       ; Make kernel call to exit program
