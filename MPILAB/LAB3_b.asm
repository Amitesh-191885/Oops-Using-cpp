; LAB 3.b: Write an ALP to separate positive and negative numbers.


DATA SEGMENT
    ARRAY DB 22H,89H, -54h, 23h
    NEGITIVE DB 10 DUP(0)
    POSITIVE DB 10 DUP(0)
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
START:
    MOV AX, DATA
    MOV DS, AX
    MOV CL, 0AH
    XOR DI, DI
    XOR SI, SI
    LEA BP, ARRAY
BACK:
    MOV AL, DS:[BP]
    TEST AL, 80H
    JZ NEXT
    LEA BX, NEGITIVE
    MOV [BX+DI], AL
    INC DI
    JMP SKIP
NEXT:
    LEA BX, POSITIVE
    MOV [BX+SI], AL
    INC SI
SKIP:
    INC BP
    LOOP BACK
    MOV AH, 4CH
    INT 21H
CODE ENDS
END START
    