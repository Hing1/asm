DSEG SEGMENT
    HELLO DB 'Hello World!$'
    FUNSTR DB 'Function ()$'
DSEG ENDS

CSEG SEGMENT
    ASSUME CS:CSEG, DS:DSEG
BEGIN:
    MOV AX, DSEG
    MOV DS, AX

    MOV DX, OFFSET HELLO
    MOV AH, 9
    INT 21H

    MOV DL, 0AH     ; new line
    MOV AH, 02H
    INT 21H

    CALL FUN

    MOV AH, 4CH
    INT 21H

FUN PROC
    MOV DX, OFFSET FUNSTR
    MOV AH, 9
    INT 21H
    RET     ; return
FUN ENDP

CSEG ENDS
    END BEGIN