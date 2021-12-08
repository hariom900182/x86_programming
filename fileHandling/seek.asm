%include "lib.asm"


SECTION .data
filename db "data.txt",0h
utext db " updated",0h

SECTION .text
    global _start

_start:

read:
    mov ecx, 1 ; writeonly
    mov ebx, filename
    mov eax, 5 ; opcode to read
    int 80h

seek:
    mov edx, 2
    mov ecx, 0
    mov ebx, eax
    mov eax, 19 ;opcode to seek
    int 80h

write:
    mov edx, 7
    mov ecx, utext
    mov eax, 4
    int 80h

close:
    mov eax, 6
    int 80h
    
    call quit
