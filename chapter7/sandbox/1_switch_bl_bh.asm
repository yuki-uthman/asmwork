section .data
section .text
	global	_start
_start:
	nop
; Put your experiments between the two nops...

mov ax, 067FEh
mov bx, ax 			; 67FE to bx
mov cl, bh 			; higher byte 67 to cl
mov ch, bl			; lower byte FE to ch

; Put your experiments between the two nops...
	nop

