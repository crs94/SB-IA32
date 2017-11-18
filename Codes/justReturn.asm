; This program simply returns 0

section .text
global _start
_start:
	mov eax, 1	; eax = 1 for sys_exit
	mov ebx, 0	; ebx = value that'll be returned
	int 80h		; syscall