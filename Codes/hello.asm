%include "io.mac"
.DATA
	msg db "Hello World!", 0
.CODE
.STARTUP
	PutStr msg
	nwln
.EXIT