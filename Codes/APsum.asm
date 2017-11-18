; Sum of arithmetic progression with R = 1
; This program sums all the numbers
; from a given user input N and 0
; 
; In order to save code, on will use
; the io.mac library(?) to get input
; and print messages

%include "io.mac"
section .data
	msg db 'Last number to sum is '
	endmsg db 'Sum is '
	
section .bss
	last resb 1 ; last = [0,9]
	
section .text
global _start
_start:
	move eax, 4
	move ebx, 1
	move ecx, msg
	move edx, msgSize
	int 80h		; printed msg
	move eax, 3
	move ebx, 0
	move ecx, last
	move edx, 1
	int 80h		; receives input
	move ecx, 0	; clears ecx content
	move cl, [last]	; cl = the value stored in last
	sub cl, 30h	; cl has a digit
	cmp cl, 0
	je over
	move eax, 0
sums:
	add al, cl
	loop sums
over:
	push al
	move eax, 4
	move ebx, 1
	move ecx, nwln
	move edx, nwlnSize
	move eax, 4
	move ebx, 1
	move ecx, endmsg
	move edx, endSize
	
