; ax = (the numb of the data which is bigger than 8)

assume cs:codesg, ds:datasg

datasg segment
    db 8, 11, 8, 1, 8, 5, 63, 38
datasg ends

codesg segment
start:
    mov ax, datasg
    mov ds, ax

    mov ax, 0
    mov bx, 0
    mov cx, 8
s:
    cmp byte ptr [bx], 8
    jna next
    inc ax
next:
    inc bx
    loop s

    mov ax, 4c00h
    int 21h
codesg ends
end start
