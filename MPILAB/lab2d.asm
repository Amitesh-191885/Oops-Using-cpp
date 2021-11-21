; LAB 2.d: Write an ALP to perform the conversion from BCD to binary.

DATA SEGMENT
    NUM DB 20H ; INPUT BCD
    ANS DB 0000H
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
START:MOV AX, DATA
    MOV DS, AX
    MOV AL, NUM
    MOV BL, AL
    AND BL, 0FH
    AND AL, 0F0H
    MOV CL, 04H
    ROR AL, CL
    MOV BH, 0AH
    MUL BH
    ADD AL, BL
    MOV ANS, AL ;LEFT MOST VALUE IN ANS 
    MOV AH, 4CH
    INT 21H
CODE ENDS
END START