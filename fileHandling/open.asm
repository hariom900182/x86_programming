%include "lib.asm"

SECTION .data
filename db "data.txt"

SECTION .text
    global _start

_start:
    mov ecx, 0
    mov ebx, filename
    mov eax, 5
    int 80h

    call iprintLF
    call quit