    mov ax, 0
    push ax
    popf             ; pop (flag reg)
    mov ax, 0fff0h
    add ax, 0010h
    pushf            ; push (flag reg)
    pop ax
    and al, 11000101b
    and ah, 00001000b
