assume cs:codesg

codesg segment
start:
	mov ax, offset start  ; mov ax, 0
s:
	mov ax, offset s      ; mov ax, 3
codesg ends
end start

