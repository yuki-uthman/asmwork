SECTION .data			; Section containing initialised data
	
	EatMsg: db "Eat at Joe's!",10
	EatLen: equ $-EatMsg	
	
SECTION .bss			; Section containing uninitialized data	

section .text
	global	_start
_start:
	nop
; Put your experiments between the two nops...

        mov eax, 5
DoMore: dec eax
        jnz DoMore

; Put your experiments between the two nops...
	nop
