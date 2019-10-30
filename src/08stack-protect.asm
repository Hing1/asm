SSEG SEGMENT STACK
    DB 200 DUP(0)
SSEG ENDS

DSEG SEGMENT
    FUNSTR DB 'Function ()$'
DSEG ENDS

CSEG SEGMENT
    ASSUME CS:CSEG, DS:DSEG, SS:SSEG
BEGIN:
    MOV AX, DSEG
    MOV DS, AX

    CALL FUN

    MOV AH, 4CH
    INT 21H

FUN PROC
    PUSH DX     ; protect the scene - protect DX

    MOV DX, OFFSET FUNSTR
    MOV AH, 9
    INT 21H

    POP DX
    RET
FUN ENDP

CSEG ENDS
    END BEGIN