; LAB 4.a: Write an ALP to find largest number from a given array.


DATA SEGMENT
    ARR DW 010H,8AH,30H,40H
    LARGEST DW 00H
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
    JA CONTINUE
    MOV AX, [SI+2]
CONTINUE:
    ADD SI, 2
    DEC CX
    JNZ UP
    MOV LARGEST,AX
    MOV AH, 4CH
    INT 21H
CODE ENDS
END START