SECTION .data			; Section containing initialised data
	
	EatMsg: db "Eat at Joe's!",10
	EatLen: equ $-EatMsg	
	
SECTION .bss			; Section containing uninitialized data	

section .text
	global	_start
_start:
	nop
; Put your experiments between the two nops...

move eax, 07FFFFFFh
inc eax

; Put your experiments between the two nops...
	nop
