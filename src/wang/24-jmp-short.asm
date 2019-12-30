assume cs:codesg

codesg segment
start:
	mov ax, 0    ; b80000
	jmp short s  ; eb03
	add ax, 1    ; 050100
s:
	inc ax       ; 40
codesg ends
end start

