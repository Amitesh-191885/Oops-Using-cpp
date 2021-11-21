;Write an ALP to display single character.
.MODEL
.CODE
    MOV AH,02H
    MOV DL,'W'  ;SINGLE CHARACTER W WILL DISPLAY
    INT 21H
    MOV AH,4CH
    INT 21H
END

