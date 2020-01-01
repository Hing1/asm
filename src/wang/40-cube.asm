assume cs:codesg, ds:datasg

datasg segment
	dw 1,2,3,4,5,6,7,8
	dw 0,0,0,0,0,0,0,0
datasg ends

codesg segment
start:
	mov ax, datasg
	mov ds, ax
	mov si, 0
	mov di, 16

	mov cx, 8
s:
	mov bx, [si]
	call cube

	mov [di], ax
	mov [di].2, dx

	add si, 2
	add di, 4
	loop s
	
cube:
	mov ax, bx
	mul bx
	mul bx
	ret
code ends
end start

