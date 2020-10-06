SECTION .data			; Section containing initialised data
	
	EatMsg: db "Eat at Joe's!",10
	EatLen: equ $-EatMsg	
	
SECTION .bss			; Section containing uninitialized data	

section .text
	global	_start
_start:
	nop
; Put your experiments between the two nops...

; "Eat at Joe's" is stored staring at 0x804a000
mov eax, 804a001H 
mov ebx, [eax]


; Put your experiments between the two nops...
	nop
