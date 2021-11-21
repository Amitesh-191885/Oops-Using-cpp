;LAB 6.a: Write an ALP to read a character from keyboard.

.MODEL 
.DATA
    MSG DB 10,13,"INPUT:$"
    BUFSIZE DB 2
    INPUTLEN DB 0   
    BUFFER DB 3 DUP("$")
.CODE              
START PROC
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,MSG
    MOV AH,09H
    INT 21H
    MOV DX,OFFSET BUFSIZE
    MOV AH,10
    INT 21H
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,BUFFER
    MOV AH,09
    INT 21H
ENDP
END START 