;LAB 5.a: Write an ALP to search a character in a string.

DATA SEGMENT
    MSG DB 'AMITESH'
    CNT EQU $-MSG
    SRC EQU 'E'
    
    MSG1 DB 10,13,'CHARACTER FOUND$'
    MSG2 DB 10,13,'CHARACTER NOT FOUND$'
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA,ES:DATA
    START:
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        LEA SI,MSG
        
        MOV AL,SRC
        MOV CL,CNT
        MOV CH,00H
        CLD
    UP:
        SCASB
        JZ DOWN
        LOOP UP
        LEA DX,MSG2
        
        MOV AH,09H
        INT 21H
        JMP EXIT
   DOWN:
        LEA DX,MSG1
        MOV AH,09H
        INT 21H
   EXIT:
        MOV AH,09H
        INT 21H
CODE ENDS
END START
