; LAB 2.c Write an ALP to Multiply two 16 bit numbers.

.MODEL SMALL
.STACK
.DATA
    NUM1 DW 0012H
    NUM2 DW 0007H
    PRODUCT DW DUP(0)
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    MOV AX, NUM1
    MUL NUM2
    MOV PRODUCT, AX
    MOV PRODUCT+2, DX
    MOV AH, 4CH
    INT 21H
END START