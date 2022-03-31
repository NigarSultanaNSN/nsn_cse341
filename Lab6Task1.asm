.MODEL SMALL
.DATA
ARRAY DB 5 DUP (?)
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,5
    MOV AH,1
    MOV SI,0
    
    INPUT:
    INT 21H
    MOV ARRAY[SI],AL
    INC SI
    LOOP INPUT
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;New Line
    MOV DL,0DH
    INT 21H
    
    
    MOV CX,5        ;Loop Counter
    MOV SI,0        ;for array index
    
    PRINT:
    MOV AH,2
    MOV DL,ARRAY[SI];Print
    INT 21H    

    INC SI
    LOOP PRINT
    
    MAIN ENDP
END MAIN