assume cs:codesg, ss:stacksg

stacksg segment
	dw 8 dup (0)
stacksg ends

codesg segment
start:
	mov ax, stacksg
	mov ss, ax
	mov sp, 16

	mov ds, ax

	mov ax, 0                    ; ax : 0000h
	call word ptr ds:[0eh]
	inc ax                    
	inc ax
	inc ax
	mov ax, 4c00h
	int 21h
code ends
end start

