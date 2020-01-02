assume cd:codesg, ds:datasg

datasg segment
    db 16 dup (0)
datasg ends

codesg segment
start:
    mov ax, 0f000h
    mov ds, ax
    mov si, 0ffffh ; ds:si  -- f000:ffff 
    mov es, ax
    mov di, 15     ; es:di  -- datasg:000f
    mov cx, 16     ; rep 16 times
    std            ; DF = 0
    rep movsb

    mov ax, 4c00h
    int 21h
codesg ends
end start
