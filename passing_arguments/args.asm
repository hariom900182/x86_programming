%include 'lib.asm'

SECTION .text
global _start;


_start:
    pop ecx

nextarg:
    cmp ecx,0h ;compare ecx equals null --> 0h
    jz noargs
    pop eax
    call sprintLF
    dec ECX
    jmp nextarg


noargs:
    call quit



