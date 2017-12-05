; Sum of arithmetic progression with R = 1
; This program sums all the numbers
; from a given user input N and 0
; 
; In order to save code, on will use
; the io.mac library(?) to get input
; and print messages

%include "io.mac"
.DATA
	msg db 'Last number to sum is '
	endmsg db 'Sum is '
	
.UDATA
	last resw 1 ; last = [0,9]
	
.CODE
.STARTUP
	PutStr msg
	GetStr last
	xor ecx, ecx	; clears ecx content
	mov cx, [last]	; cl = the value stored in last
	sub cx, 30h	; cl has a digit
	cmp cx, 0
	je over
	xor eax, eax
sums:
	add ax, cx
	loop sums
over:
	push ax
	PutStr endmsg
	PutInt ax
	nwln
.EXIT
	
