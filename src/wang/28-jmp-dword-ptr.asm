assume cs:codesg

codesg segment
start:
	mov ax, 0123h
	mov ds:[0], ax
	mov word ptr ds:[2], 0
	jmp dword ptr ds:[0]

	mov ax, 0123h
	mov [bx], ax
	mov word ptr [bx + 2], 0
	jmp dword ptr [bx]
codesg ends
end start

