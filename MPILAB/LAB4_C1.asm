; LAB 4.c: Write an ALP to sort a given set of 16bit unsigned
;       integers into ascending order using bubble/ insertion
;       sort algorithm.


MOV SI, 1200H
MOV CL, [SI]
DEC CL
LOOP3:
    MOV SI, 1200H
    MOV CH, [SI]
    DEC CH
    INC SI
LOOP2:
    MOV AL, [SI]
    INC SI
    CMP AL, [SI]
    JC LOOP1
    XCHG AL, [SI]
    XCHG [SI-1], AL
LOOP1:
    DEC CH
    JNZ LOOP2
    DEC CL
    JNZ LOOP3
    HLT