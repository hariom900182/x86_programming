%include "lib.asm"

SECTION .data
    msg: db "Enter your name: ", 0h
    greeting: db "Hello ", 0h

SECTION .bss
    sin: resb 255 ;Reserve 255 bytes in memory

SECTION .text
    global _start

_start:
    mov eax, msg
    call sprintLF

    mov edx, 255
    mov ecx, sin
    mov ebx, 0
    mov eax, 3
    int 80h

    mov eax, greeting
    call sprint

    mov eax, sin
    call sprintLF

    call quit
