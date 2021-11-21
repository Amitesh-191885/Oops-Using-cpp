; LAB 4.c: Write an ALP to sort a given set of 16bit unsigned
;       integers into ascending order using bubble/ insertion
;       sort algorithm.


DATA SEGMENT
     ARR DW 08AEH,115CH,0457H,270FH,15B3H,08AEH,1E61H,0D05H, 1A0AH
     LEN DW $-ARR
    
DATA ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
             
      MOV CX,(LEN/2)-1   
OUTER:
      LEA SI,ARR
      MOV BX,0       
INNER:
      INC BX
      MOV AX,ARR[SI]
      INC SI
      INC SI
      CMP AX,ARR[SI]
      JB SKIP
      
      XCHG AX,ARR[SI]
      MOV ARR[SI-2],AX
     
SKIP:
      CMP BX,CX
      JL  INNER
                
      LOOP OUTER
            
      MOV AH,4CH
      INT 21H
           
CODE ENDS
END START