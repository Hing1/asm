; call word ptr (address)  ; push ip
                           ; jmp word ptr (address)

	mov sp, 10h
	mov ax, 0123h
	mov ds:[0], ax
	call word ptr ds:[0]


; call dword ptr (address)  ; push cs
                            ; push ip
							; jmp dword ptr (address)
	mov sp, 10h
	mov ax, 0123h
	mov ds:[0], ax
	mov word ptr ds:[2], 0
	call dword ptr ds:[0]
	; after it (cs) = 0; (ip) = 0123h; (sp) = 0ch

