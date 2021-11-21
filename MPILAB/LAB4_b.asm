; LAB 4.b: Write an ALP to find smallest number from a given array.


DATA SEGMENT
    ARR DW 001AH,008AH,0032H,0004H
    MES DB 10,13,'SMALLEST NUMBER AMONG THE SERIES IS $' 
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
START:
    MOV AX, DATA
    MOV DS, AX
    MOV CX, 05H
    LEA SI, ARR
    MOV AX, [SI]
    DEC CX
 UP:CMP AX, [SI+2]
    JB CONTINUE
    MOV AX, [SI+2]
CONTINUE:
    ADD SI, 2
    DEC CX
    JNZ UP
    AAM
    ADD AX, 3030H
    MOV BX, AX
    MOV AH, 09H
    LEA DX, MES
    INT 21H
    MOV DL, BH
    MOV AH, 02H
    INT 21H
    MOV DL, BL
    INT 21H
    MOV AH, 4CH
    INT 21H
CODE ENDS
END START