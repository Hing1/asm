DSEG SEGMENT
    INPUT DB "Please input n which is in 0 ~ 9:$"
    ERROR DB "The input n is error!$"
    N DB 0
DSEG ENDS

CSEG SEGMENT
    ASSUME CS:CSEG, DS:DSEG
BEGIN:
    MOV AX, DSEG
    MOV DS, AX

    MOV DX, OFFSET INPUT
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H

    CMP AL, '0'     ; n < 0
    JL INPUT_ERROR
    CMP AL, '9'     ; n > 9
    JG INPUT_ERROR

    MOV N, AL
    JMP EXIT        ; exit program. Without this line, the program continues to execute line by line.

INPUT_ERROR:
    MOV DL, 0AH     ; new line
    MOV AH, 02H
    INT 21

    MOV DX, OFFSET ERROR
    MOV AH, 9
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H

CSEG ENDS
    END BEGIN