; call (reg 16)  ; push ip
                 ; jmp (reg 16)

	mov ax, 6
	call ax
	inc ax
	mov bp, sp
	add ax, [bp]

