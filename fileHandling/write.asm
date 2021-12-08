%include "lib.asm"

SECTION .data
filename db "data.txt",0h
msg db "Hello world",0h

SECTION .text
    global _start

_start:
    mov ecx, 0777o ;permission
    mov ebx, filename
    mov eax, 8 ; opcode sys_creat
    int 80h

    mov edx, 11
    mov ecx, msg
    mov ebx, eax,
    mov eax, 4

    int 80h

    call quit