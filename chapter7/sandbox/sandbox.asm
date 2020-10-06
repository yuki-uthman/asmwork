SECTION .data			; Section containing initialised data
	
	EatMsg: db "Eat at Joe's!",10
	EatLen: equ $-EatMsg	
	
SECTION .bss			; Section containing uninitialized data	

section .text
	global	_start
_start:
	nop
; Put your experiments between the two nops...

mov eax, 0FFFFFFFFh
mov ebx, 1739
mul ebx


; Put your experiments between the two nops...
	nop
