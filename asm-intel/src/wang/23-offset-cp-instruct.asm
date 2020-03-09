assume cs:codesg

codesg segment
s:
	mov ax, bx         ; The machine code is two bytes.
	mov si, offset s
	mov di, offset s0
	mov ax, cs:[si]
	mov cs:[di], ax
s0:
	nop                ; The machine code of nop is one byte.
	nop
codesg ends
end s

