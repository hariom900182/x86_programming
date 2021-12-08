%include 'lib.asm'
SECTION .data
msg: db "hello hariom",0h
msg1: db "hello kuksa",0h

SECTION .text
global _start;


_start:
mov eax,msg
; call strlen
call sprintLF


mov eax, msg1
; call strlen
call sprintLF

call quit



