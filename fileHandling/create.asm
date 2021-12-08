%include "lib.asm"

SECTION .data

filename db "first.txt"

SECTION .text
    global _start

_start:
    mov ecx, 0777o
    mov ebx, filename
    mov eax, 8 ; sys_creat
    int 80h

    call quit