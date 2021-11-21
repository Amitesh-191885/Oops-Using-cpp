; LAB 2.b Write an ALP to subtract two Multibyte numbers.

DATA SEGMENT
     NUM DW 67H,15H
     DIF DW 1 DUP(0)
DATA ENDS
   CODE SEGMENT
        
START:
    MOV AX, DATA
    MOV DS, AX
    CLC
    
    LEA SI, NUM
    MOV AX, [SI]
    SBB AX,[SI+2]
    
    MOV DIF,AX
    MOV AH, 4CH
    INT 21H
CODE ENDS
END START
