%include "lib.asm"

SECTION .data
filename db "data.txt",0h

SECTION .text
    global _start

_start:
    mov ebx, filename
    mov eax, 10 ;opcode to sys_unlink
    int 80h

    call quit