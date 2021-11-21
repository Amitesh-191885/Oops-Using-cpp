; Lab 1.c Write an ALP to interchange a block of data.

.MODEL SMALL
.DATA
    SRC DB 10H, 20H, 30H, 40H, 50H
    DST DB 06, 07,08,09, 0AH
    COUNT EQU 05
.CODE
    MOV AX, @DATA
    MOV DS, AX
    LEA SI, SRC
    LEA DI, DST
    MOV CL, COUNT
BACK:
    MOV AL, [SI]
    MOV BL, [DI]
    MOV [SI], BL
    MOV [DI], AL
    INC SI
    INC DI
    DEC CL
    JNZ BACK
    MOV AH, 4CH
    INT 20H
    END