    mov ax, 2
    mov bx, 1
    sub bx, ax
    adc ax, 1     ; (ax) = (ax) + 1 + CF = 2 + 1 + 1 = 4

    mov ax, 1
    add ax, ax
    adc ax, 3     ; (ax) = (ax) + 3 + CF = 2 + 3 + 0 = 5

    mov al, 98h
    add al, al
    adc al, 3     ; (al) = (al) + 3 + CF = 30h + 3 + 1 = 34h

    add ax, bx    ; add al, bl   ; adc  ah, bh