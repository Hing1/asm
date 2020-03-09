


add128:
    push ax
    push cx
    push si
    push di

    sub ax, ax  ; set CF = 0

    mov cx, 8
s:
    mov ax, [si]
    adc ax, [di]
    mov [si], ax
    inc si
    inc si
    inc di
    inc di
    loop s

    pop di
    pop si
    pop cx
    pop ax
    ret
; inc and loop don't effect the CF
