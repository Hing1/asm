DSEG SEGMENT
    BUF DB 2,4,7,6,8,1,9
DSEG ENDS

CSEG SEGMENT
    ASSUME CS:CSEG, DS:DSEG
BEGIN:
    MOV AX, DSEG
    MOV DS, AX

    MOV AX, OFFSET BUF

    MOV DI, 0
LOOP_I:
    MOV SI, 0
    LOOP_J:
        MOV AL, [BUF + SI]
        MOV AH, [BUF + DI]
        CMP AL, AH
        JL NEXT

        MOV [BUF + DI], AL
        MOV [BUF + SI], AH
    NEXT:
        INC SI
        CMP SI, (7 - 1)
        JL LOOP_J
    INC DI 
    CMP DI, (7 - 1)
    JL LOOP_I

    MOV AH, 4CH
    INT 21H
CSEG ENDS
    END BEGIN