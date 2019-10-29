
data segment
       hello db 'Hello World $'
       input  db "PLEASE INPUT X(0...9):$"
       inerr  db "INPUT ERROR!$"
       tab    DW 0,1,8,27,64,125,216,343,512,729
       x      DB 0
       xxx    DW ?
data ends

code segment
       assume cs:code, ds:data
start:
       mov ax,data
       mov ds, ax
;---------------------------
       mov dx, offset input
       mov ah, 9
       int 21h
       mov ah, 1
       int 21h

       cmp al, '0'
       jl lerr
       cmp al, '9'
       jg lerr

       and al, 0fh
       mov x, al
       add al, al
       mov bl, al
       mov bh, 0
       mov ax, [bx + tab]
       mov xxx, ax
       jmp lexit
lerr:
       mov dx, offset inerr
       mov ah, 9
       int 21h
lexit:
;---------------------------
       mov ah,09h           
       mov dx,offset hello    
       int 21h                    
       mov ah,4ch             
       int 21h         

code  ends
       end start
