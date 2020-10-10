SECTION .data			; Section containing initialised data
	
SECTION .bss			; Section containing uninitialized data	

section .text

 global	_start

_start:
        	nop
; Put your experiments between the two nops...





; Put your experiments between the two nops...
	        nop

Exit:
          mov eax, 1 
          mov ebx, 0 
          int 80h

