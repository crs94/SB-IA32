; This program simply prints the
; mainstream "Hello World!"

section .data
	msg db 'Hello World!', 0ah
	
section .text
global _start
_start:
	mov eax, 4	; eax = 4 for sys_write
	mov ebx, 1	; ebx = 1 for stdout (monitor)
	mov ecx, msg	; ecx = string address
	mov edx, 13	; edx = length(string)
	int 0x80	; system interruption
	mov eax, 1	; eax = 1 for sys_exit
	;mov ebx, 0	; ebx = value that'll be returned
	int 80h		; system interruption