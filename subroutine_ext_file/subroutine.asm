%include 'strlib.asm'
SECTION .data
msg: db "hello hariom",0Ah,0h
msg1: db "hello kuksa",0Ah,0h

SECTION .text
global _start;


_start:
mov eax,msg
; call strlen
call sprint


mov eax, msg1
; call strlen
call sprint

call quit



