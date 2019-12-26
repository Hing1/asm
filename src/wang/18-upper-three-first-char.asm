assume cs:codesg, ds:datasg

datasg segment
    db 'abc             '
    db 'def             '
    db 'ghi             '
    db 'jkl             '
datasg ends

codesg segment

start:
    mov ax, datasg
    mov ds, ax

    mov bx, 0
    mov cx, 4
s1:
    push cx
    mov si, 0
    mov cx, 3
s2:
    mov al, [bx + si]
    and al, 11011111b
    mov [bx + si], al
    inc si
    loop s2

    add bx, 16
    pop cx
    loop s1

    mov ax, 4c00h
    int 21h

codesg ends

end start
