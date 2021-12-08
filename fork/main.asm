%include "lib.asm"

SECTION .data
msgParent   db "Hello world from parent process", 0h
msgChild    db "Hello world from child process", 0h

SECTION .text
    global _start

_start:
    mov eax, 2   ; fork new process
    int 80h

    cmp eax, 0
    je printChild

printParent:
    mov eax, msgParent
    call sprintLF
    call quit

printChild:
    mov eax, msgChild
    call sprintLF
    call quit
