.MODEL SMALL
.STACK 100H
.DATA
.CODE
PROC MAIN
    CALL FACT
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP

PROC FACT
            
    MOV AL,3
    MOV BL,AL
    DEC BL
    MOV CX,BX
    
    CALC:
    MUL BL
    DEC BL
    LOOP CALC
    
    MOV DX,AX
    ADD DX,30H
    
    MOV AH,2
    INT 21H
    
    RET
    FACT ENDP
    
    
END MAIN
    
    
    
    