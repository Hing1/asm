assume cd:codesg, ds:datasg

datasg segment
    db 'Welcome to masm'
    db 16 dup (0)
datasg ends

codesg segment
start:
    mov ax, datasg
    mov ds, ax

    mov si, 0
    mov es, ax
    mov di, 16
    mov cx, 16    ; rep 16 times
    cld           ; DF = 0
    rep movsb

    mov ax, 4c00h
    int 21h
codesg ends
end start
