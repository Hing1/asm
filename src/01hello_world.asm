;first.asm
data segment
    s1 db 'Hello World','$'
data ends

code segment
    assume cs:code, ds:data
start:
    ;mov ax,data
    ;mov ds, ax

    mov ah,09h 				; ���ܣ���ʾ�ַ���
    mov dx,offset s1 	; ds:dxָ���ַ�������ʼ��ַ
    int 21h 					; DOS���ܵ���

    mov ah,4ch 				; ���ܣ��������򣬷���DOSϵͳ
    int 21h 					; DOS���ܵ���
code ends
    end start