%include "io.mac"
SIZE EQU 6
.DATA
	little dd 42434445, 45454545h, 4a4b4c4dh, 414d4e4fh, 46454948h, 4c474d46h

.UDATA
	big resd SIZE
	temp resd 1

.CODE
.STARTUP
	mov ecx, SIZE
	mov eax, little
	mov esi, big
laco1:	mov ebx, esi
	add ebx, 7	; Added
laco2:	mov dl, [eax]
	mov [ebx], dl
	dec ebx
	inc eax
	cmp ebx, esi	; Added
	jae laco2
	add esi, 4
	dec ecx		; Added
	cmp ecx, 0
	jne laco1	; Added
_print:	mov ecx, SIZE
_loop2:	PutLInt [little + ecx*8]
	nwln
	PutLInt [big + ecx*8]
	nwln
	nwln
	loop _loop2
done:	mov eax, 1
	mov ebx, 0
	int 0x80