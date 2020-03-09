DSEG SEGMENT
    INPUT DB "Please input x which is in 0 ~ 9:$"
    TAB DW 0,1,8,27,64,125,216,343,512,729
    N DB 0
    CUBE DW ?
DSEG ENDS

CSEG SEGMENT
    ASSUME CS:CSEG, DS:DSEG
BEGIN:
    MOV AX, DSEG
    MOV DS, AX

    MOV DX, OFFSET INPUT
    MOV AH, 9
    INT 21H

    MOV AH, 1       ; input n
    INT 21H
    AND AL, 0fH     ; transform ASCII to number
    MOV N, AL

    add AL, AL      ; because n is DB, but CUBE is DW
    MOV BL, AL
    MOV BH, 0
    MOV AX, [BX + TAB]      ; table look-up
    MOV CUBE, AX

    MOV AH, 4CH
    INT 21H
CSEG ENDS
    END BEGIN