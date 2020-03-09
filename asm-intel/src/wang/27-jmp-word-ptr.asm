assume cs:codesg

codesg segment
start:
	mov ax, 0123h
	mov ds:[0], ax
	jmp word ptr ds:[0] ; (IP) = 0123h

	mov ax, 0123h
	mov [bx], ax
	jmp word ptr [bx]   ; (IP) = 0123h
codesg ends
end start

