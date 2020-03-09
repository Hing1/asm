; call flag  ; push IP
             ; jmp near ptr flag

	mov ax, 0
	call s
	inc ax
s:
	pop ax

; -----------------

; call far ptr flag  ; push cs
                     ; push ip
					 ; jmp far ptr flag
	mov ax, 0
	call far ptr s
	inc ax
s:
	pop ax
	add ax, ax
	pop bx
	add ax, bx
