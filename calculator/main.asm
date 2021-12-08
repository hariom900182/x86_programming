%include "math.asm"

SECTION .data
menu1: db "1 for add",0Ah,0h
menu2: db "2 for sub",0Ah,0h
menu3: db "3 for mul",0Ah,0h
menu4: db "4 for divide",0Ah,0h
exit: db "0 for quit",0Ah,0h
welcome: db "**************Welcome*************",0Ah,0h
ctext: db "Enter your choice >> ",0h
adv: db "1"


SECTION .bss
    choice: resb 1
    
SECTION .text
 global _start

_start:
   
mainloop:
     mov eax, welcome
    call sprintLF
    mov eax, menu1
    call sprintLF
    mov eax, menu2
    call sprintLF
    mov eax, menu3
    call sprintLF
    mov eax, menu4
    call sprintLF
    mov eax, exit
    call sprintLF

input: 
    
    mov edx,1
    mov ecx, choice
    mov ebx, 0
    mov eax, 3
    int 80h
    mov eax, choice
    call atoi 
    mov ecx, eax
    cmp ecx, 1
    je addition
    cmp ecx, 2
    je subtraction
    cmp ecx, 3
    je multi
    cmp ecx, 4
    je division
    cmp ecx, 0
    jz end

    


addition:
    call add
    jmp input

subtraction:
    call sub
    jmp input

division:
    call div
    jmp input

multi:
    call mul
    jmp input

end:
    call quit