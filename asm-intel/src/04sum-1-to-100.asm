DSEG SEGMENT
    SUM DW 0
DSEG ENDS

CSEG SEGMENT
    ASSUME CS:CSEG, DS:DSEG
BEGIN:
    MOV AX, DSEG
    MOV DS, AX

    MOV AX, 0
    MOV CX, 1

NEXT:
    ADD AX, CX
    INC CX
    CMP CX, 100     ; if n is less than or equal to 100, keep loop going
    JLE NEXT

    MOV SUM, AX

    MOV AH, 4CH
    INT 21H
CSEG ENDS
    END BEGIN