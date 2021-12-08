;length of text 
SECTION .data
msg: db "hello hariom",0

SECTION .text
 global _start

_start:
 mov ebx,msg
 mov eax,ebx

 repeat:
  cmp byte [eax],0
  jz fininshed
  inc eax
  jmp repeat

fininshed:
 sub eax,ebx

 mov edx,eax
 mov ecx,msg
 mov ebx,1
 mov eax,4

 int 80h

 mov ebx,0
 mov eax,1
 int 80h