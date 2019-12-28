assume cs:codesg, ds:datasg

datasg segment
    db  
datasg ends

codesg segment

start:
    mov ax, datasg
    mov ds, ax

    mov bx, 60h
    mov word ptr [bx + 0ch], 38
    add word ptr [bx + 0eh], 70

    mov si, 0
    mov byte ptr [bx + 10h + si], 'V'
    inc si
    mov byte ptr [bx + 10h + si], 'A'
    inc si
    mov byte ptr [bx + 10h + si], 'X'

    mov ax, 4c00h
    int 21h

codesg ends

end start
