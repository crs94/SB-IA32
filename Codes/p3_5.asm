%include "io.mac"
.DATA
	msgarq1 db "Input file: ", 0
	msgarq2 db "Output file: ", 0
	BUF_SIZE EQU 256

.UDATA
	fd1 resd 1
	fd2 resd 1
	file_in resb 30
	file_out resb 30
	buf resb BUF_SIZE

.CODE
.STARTUP
	PutStr msgarq1
	GetStr file_in
	PutStr msgarq2
	GetStr file_out

; Opening file 1
	mov eax, 5
	mov ebx, file_in
	mov ecx, 0
	mov edx, 0744
	int 0x80
	PutLInt eax
	nwln
	mov [fd1], eax
	;push eax
	
; Opening file 2
	mov eax, 5
	mov ebx, file_out
	mov ecx, 1
	mov edx, 0744
	int 0x80
	PutLInt eax
	nwln
	mov [fd2], eax
	;push eax

; Reading file 1
	mov eax, 3
	mov ebx, [fd1]
	;mov ebx, [esp + 4]
	mov ecx, buf
	mov edx, BUF_SIZE
	int 0x80

; Writing in file 2
	mov eax, 4
	mov ebx, [fd2]
	;mov ebx, [esp]
	mov ecx, buf
	mov edx, BUF_SIZE
	int 0x80

; Closing file 1
	mov eax, 6
	mov ebx, [fd1]
	;mov ebx, [esp + 4]
	int 0x80

; Closing file 2
	mov eax, 6
	mov ebx, [fd2]
	;mov ebx, [esp]
	int 0x80

.EXIT