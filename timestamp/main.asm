%include "lib.asm"

SECTION .data
msg db "current timestamp value is: ", 0h

SECTION .text
    global _start

_start:
    mov eax, msg
    call sprint

    mov eax, 13
    int 80h

    call iprintLF
    call quit
