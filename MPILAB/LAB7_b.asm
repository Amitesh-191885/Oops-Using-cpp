; Write an ALP for Seven segment LED 
; display though 8255 (PCI based)

DATA SEGMENT
    PORTA EQU 00H
    PORTB EQU 02H
    PORTC EQU 04H
    PORT_CON EQU 06H
DATA ENDS
CODE SEGMENT
    MOV AX,DATA
    MOV DS, AX
ORG 0000H
START:
    MOV DX, PORT_CON
    MOV AL, 10000000B
    OUT DX, AL
    JMP XX
XX:  
    MOV AL, 00111111B ; displaying 0
    MOV DX, PORTA
    OUT DX,AL
    MOV CX,0DF36H; Delay 
Delay0:
    loop Delay0
    MOV AL, 00000110B  ; Displaying 1
    MOV DX, PORTA
    OUT DX,AL
    MOV CX,0DF36H; Delay 
Delay1:
    loop Delay1 
    MOV AL, 01011011B  ;Displaying 2
    MOV DX, PORTA
    OUT DX,AL
    MOV CX,0DF36H; Delay 
Delay2:
    loop Delay2
    MOV AL, 01001111B  ; Displaying 3
    MOV DX, PORTA
    OUT DX,AL
    MOV CX,0DF36H; Delay 
Delay3:
    loop Delay3
    MOV AL, 01100110B  ; Displaying 4
    MOV DX, PORTA
    OUT DX,AL
    MOV CX,0DF36H; Delay 
Delay4:
    loop Delay4
    MOV AL, 01101101B    ;Displaying 5
    MOV DX, PORTA
    OUT DX,AL
    MOV CX,0DF36H; Delay 
Delay5:
    loop Delay5
    MOV AL, 01111101B  ;Displaying 6
    MOV DX, PORTA
    OUT DX,AL
    MOV CX,0DF36H; Delay 
Delay6:
    loop Delay6   
    MOV AL, 00000111B  ;Displaying 7
    MOV DX, PORTA
    OUT DX,AL
    MOV CX,0DF36H; Delay 
Delay7:
    loop Delay7
    MOV AL, 01111111B  ;Displaying 8
    MOV DX, PORTA
    OUT DX,AL
    MOV CX,0DF36H; Delay 
Delay8:
    loop Delay8    
    MOV AL, 01101111B      ; Displaying 9
    MOV DX, PORTA
    OUT DX,AL
    MOV CX,0DF36H; Delay
Delay9:
    loop Delay9
    JMP XX
    JMP START
CODE ENDS
END 