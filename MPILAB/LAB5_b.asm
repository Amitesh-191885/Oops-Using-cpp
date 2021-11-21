;LAB 5.b: Write an ALP to check whether a given string is palindrome or not.

.MODEL
.DATA
    X DB "ROTAVATOR"
    Z DW (Z-X)
    Y DB (Z-X) DUP (?)
    MSG1 DB "NOT PALINDROME$"
    MSG2 DB "PALINDROME$"
.CODE
    MOV AX,@DATA
    MOV DS,AX
    MOV ES,AX
    LEA SI,Z-1
STRING:
    LEA DI, Y
    MOV CX, Z
LOC1:
    MOV AL,[SI]
    MOV [DI],AL
    DEC SI
    INC DI
    DEC CX
    JNZ LOC1
    LEA DX,Y
    JNZ LOC2
    LEA SI,X
    LEA DI,Y
    MOV CX,Z
    CLD
    REPE CMPSB
    JE PALIN
    LEA DX, MSG1
LOC2:
    MOV AH,09H
    INT 21H
    MOV AH,4CH
    INT 21H
PALIN:
    LEA DX,MSG2
    JMP LOC2
END