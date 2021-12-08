%include "lib.asm"

SECTION .data
filename db "data.txt",0h

SECTION .bss
content resb 255

SECTION .text
    global _start

_start:
    mov ecx, 0,
    mov ebx, filename
    mov eax, 5
    int 80h

    mov edx, 255
    mov ecx, content
    mov ebx, eax
    mov eax, 3
    int 80h

    mov eax, content
    call sprintLF

    mov eax, 6 
    int 80h

    call quit