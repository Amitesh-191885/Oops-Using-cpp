; LAB 2.a: Write an ALP to add 2 Multibyte numbers.

DATA SEGMENT
    N1 DB 19H,12h
    N2 DB 15H,14h
    SUM DB 0H DUP (00)
DATA ENDS
CODE SEGMENT
    ASSUME CS: CODE, DS: DATA
    START: 
        MOV AX, DATA
        MOV DS, AX
        MOV SI, OFFSET N1
        MOV DI, OFFSET N2
        MOV BX, OFFSET SUM
        CLC
        MOV CX, 0003H
        MOV AX, 0000H
    BACK:
        MOV AL, [SI]
        MOV DL, [DI]
        ADC AL, DL
        MOV [BX], AL 
        INC SI
        INC DI
        INC BX
        DEC CX
        JNZ BACK
        MOV AH, 4CH
        INT 21H
        INT 3H
    CODE ENDS
END START