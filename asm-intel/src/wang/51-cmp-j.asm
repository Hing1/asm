; je  equal     zf == 1
; jne not equal zf == 0
; jb  below     cf == 1
; jnb not below cf == 0
; ja  above     cf == 0 && zf == 0
; jna not above cf == 1 || zf == 1

example:
    cmp ah, bh
    je s
    add ah, bh
    jmp short ok
s:
    add ah, ah
ok:
    mov ax, 4c00h
    int 21h
