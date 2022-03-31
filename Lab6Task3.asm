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
    MOV AH,0
    MOV AL,ARRAY[SI]
    MOV BL,2
    DIV BL
    
    CMP AH,1        ;Compare with remainder
    JNE SKIP        ;Skip print
    
    MOV AH,2
    MOV DL,ARRAY[SI];Print
    INT 21H
    
    SKIP:
    INC SI
    LOOP PRINT
    
    MAIN ENDP
END MAIN