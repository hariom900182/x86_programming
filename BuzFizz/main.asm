%include "lib.asm"

SECTION .data
    fuzz: db "Fuzz",0h
    buzz: db "Buzz",0h

SECTION .text
    global _start

_start:
    mov ecx, 0

continue:
    inc ecx
    mov eax, ecx
finish:
    
    cmp ecx, 100
    jg end
    jmp checkFuzz

end:
    call quit


checkFuzz:
    mov esi,0
    mov edx, 0
    mov ebx, 3
    mov eax, ecx
    div ebx
    mov esi, edx
    cmp edx, 0
    jne checkBuzz
    mov eax,buzz
    call sprint

checkBuzz:
    mov edx, 0
    mov ebx, 5
    mov eax, ecx
    div ebx
    cmp edx, 0
    jne printNumber
    mov eax, fuzz
    call sprint
    jmp printLF


printNumber:
    mov eax, esi
    cmp eax, 0
    jz printLF
    mov eax, ecx
    call iprint

printLF:
    mov eax, 0Ah
    push eax
    mov eax, esp
    call sprint
    jmp continue