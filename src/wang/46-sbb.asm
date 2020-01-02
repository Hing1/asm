    mov bx, 1000h
    mov ax, 003eh
    sub bx, 2000h   ; (bx) = 1000h - 2000h = F000h
    sbb ax, 0020h   ; (ax) = (ax) - 0020h - CF
    