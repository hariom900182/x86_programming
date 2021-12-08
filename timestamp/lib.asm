strlen:
 push ebx
 mov ebx,eax
repeat:
  cmp byte [eax],0
  jz fininshed
  inc eax
  jmp repeat

fininshed:
    sub eax,ebx
    pop ebx
    ret
sprint:
    push edx
    push ecx
    push ebx
    push eax
    
    call strlen

    mov edx,eax
    pop eax
    mov ecx,eax
    mov ebx,1
    mov eax,4
    int 80h
    pop ebx
    pop ecx
    pop edx
    ret 

sprintLF:
    call sprint
    push eax
    mov eax, 0h
    push eax
    mov eax,esp
    call sprint
    pop eax
    pop eax
    ret
quit:
    mov ebx,0
    mov eax,1
    int 80h
    ret


iprint:
    push eax
    push ecx
    push edx
    push esi
    mov ecx, 0 ;counter to print bytes

divideLoop:
    inc ecx
    mov edx, 0
    mov esi, 10
    idiv esi
    add edx, 48 
    push edx
    cmp eax, 0
    jnz divideLoop

printLoop:
    dec ecx
    mov eax, esp
    call sprint
    pop eax
    cmp ecx, 0
    jnz printLoop

    pop esi
    pop edx
    pop ecx
    pop eax

    ret


iprintLF:
    call iprint

    push eax
    mov eax, 0Ah
    push eax
    mov eax, esp
    call sprint
    pop eax
    pop eax
    ret

