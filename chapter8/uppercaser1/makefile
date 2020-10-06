uppercaser1: uppercaser1.o
	ld -o uppercaser1 uppercaser1.o -melf_i386
uppercaser1.o: uppercaser1.asm
	nasm -f elf -g -F stabs uppercaser1.asm
