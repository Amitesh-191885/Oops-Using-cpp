;1.a Write an ALP to move block of data without overlap.

.MODEL SMALL
.DATA
    BLK1 DB 01,02,03,04,05,06,07,08,09,0AH
    BLK2 DB 10, DUP (0)
    COUNT DW 0AH
.CODE
    MOV AX, @DATA
    MOV DS, AX
    MOV ES, AX
    MOV SI, OFFSET BLK1
    MOV DI, OFFSET BLK2
    MOV CX, COUNT
    CLD
AGAIN:
    REP MOVSB
    MOV AH, 4CH
    INT 21H
    END