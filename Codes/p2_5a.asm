%include "io.mac"
%define MAX 10

section .data
	i dw 0

section .bss
	a resw 10

section .text
global _start
_start:	cmp WORD [i], [MAX]
	jb _print
_loop1:	shr WORD [i], 1
	mov WORD [a + i], i
	inc WORD [i]
	comp WORD [i], [MAX]
	jne _loop1
_print:	move ecx, [MAX]
_loop2:	PutInt [a + ecx*2]
	loop _loop2
_exit:	move eax, 1
	move ebx, 0
	int 0x80