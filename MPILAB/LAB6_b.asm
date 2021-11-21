;LAB 6. b: Write an ALP to read buffered input from the keyboard
; using dos interrupts.

.MODEL 
.DATA
    STR DB 26        
.CODE
START:
    MOV AX,@DATA
    MOV DS,AX
    MOV AH,0AH
    MOV DX,OFFSET STR
    INT 21H
    MOV SI,OFFSET BUFF+1
    MOV CL,[SI]
    MOV CH,0
    INC CX
    ADD SI,CX
    MOV AL,'$'
    MOV [SI],AL
    MOV AH,9
    MOV DX,OFFSET BUFF+2
    INT 21H
    MOV AH,4CH
    INT 21H
END START