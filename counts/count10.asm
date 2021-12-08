%include "lib.asm"

SECTION .data
    msg: db "Count upto 10", 0h

SECTION .text
    global _start

_start:

    mov eax, msg
    call sprintLF

    mov ecx, 0

nextIter:
    inc ecx

    mov eax, ecx
    add eax, 48
    push eax
    mov eax, esp
    call sprintLF   

    pop eax
    cmp ecx, 10
    jne nextIter


end:
    call quit
