; LAB 3.a: Write an ALP to separate odd and even numbers.


DATA SEGMENT
    ARRAY DB 27H, 22H,21h,24h,32h
    EVEN DB 10 DUP (0)
    ODD DB 10 DUP (0)
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
START:MOV AX, DATA
    MOV DS, AX
    MOV CL, 0AH
    XOR DI, DI
    XOR SI, SI
    LEA BP, ARRAY
BACK:
    MOV AL, DS:[BP]
    TEST AL, 01H
    JZ NEXT
    
    LEA BX, ODD
    MOV [BX+DI], AL
    INC DI
    JMP SKIP
NEXT:
    LEA BX, EVEN
    MOV [BX+SI], AL
    INC SI
SKIP:
    INC BP
    LOOP BACK
    MOV AH, 4CH
    INT 21H
CODE ENDS
END START   