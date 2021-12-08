%include "lib.asm"

SECTION .data
msg1: db "Hello from localspace",0h
msgl: db "Hllo my name is ahriom",0h
msg2: db "Hello from global space",0h;


SECTION .text
    global _start

_start:
   mov eax, msg1
mainlabel:
    jmp .finished
    mov eax, msgl


.finished:
    call sprintLF
    jmp finished

finished:
    mov eax, msg2
    call sprintLF
    call quit