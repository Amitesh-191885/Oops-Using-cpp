;LAB 8: Program to rotate the Stepper motor in Clock-Wise direction(8 steps).

ORG 100H
#START=STEPPER_MOTOR.EXE#

JMP START
DATAIN DB 0000_0011B
DB 0000_0110B
DB 0000_1100B
DB 0000_1001B

START:
    MOV BX,OFFSET DATAIN
    MOV SI,0H
NEXT_STEP:
    WAIT:
    IN AL,07H
    TEST AL,10000000B
    JZ WAIT
    MOV AL,[BX][SI]
    OUT 7,AL
    INC SI
    CMP SI,4
    JC NEXT_STEP
    MOV SI,0
    JMP NEXT_STEP
RET