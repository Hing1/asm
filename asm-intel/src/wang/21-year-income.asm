assume cs:codesg es:table, ds:datasg, ss:stacksg

datasg segment
    ; 0 ~ 53h
    db '1975', '1976', '1977', '1978', '1979', '1980', '1981'
    db '1982', '1983', '1984', '1985', '1986', '1987', '1988'
    db '1989', '1990', '1991', '1992', '1993', '1994', '1995'
    ; 54h ~ 0a7h
    dd      16,      22,     382,    1356,    2390,    8000,   16000
    dd   24486,   50065,   97479,  140417,  197514,  345980,  590827
	dd  803530, 1183000, 1843000, 2759000, 3753000, 4649000, 5937000
	; 0a8h ~ 0d1h
	dw     3,     7,     9,    13,    28,    38,   130
    dw   220,   476,   778,  1001,  1442,  2258,  2793
    dw  4037,  5635,  8228, 11542, 14430, 15257, 17800
codesg segment

table segment
    db 21 dup ('year summ ne ?? ')
table ends

start:
    mov ax, datasg
    mov ds, ax
    mov ax, table
    mov es, ax

    mov bx, 0
    mov si, 0
    mov di, 0
    mov cx, 21
s:
    push cx

    push si
    mov si, 0
    mov cx, 4
year:
    mov al, [bx + si]
    mov es:[di + si], al
    inc si
    loop year
    pop si

    mov ax, [bx + 54h]
    mov ds, [bx + 56h]
    mov es:[di + 5h], ax
    mov es:[di + 7h], ax

    mov ax, [si + 0a8h]
    mov es:[di + 0ah], ax

    mov ax, [bx + 54h]
    div word ptr ds:[si + 0a8h]
    mov es:[di + 0dh], ax

    add bx, 4
    add si, 2
    add di, 16
    pop cx
    loop s

    mov ax, 4c00h
    int 21h

codesg ends

end start
