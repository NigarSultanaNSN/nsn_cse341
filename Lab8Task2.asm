.MODEL SMALL
.STACK 100H
.DATA
MAX DB 0H
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    CALL MAXIMUM
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
    
PROC MAXIMUM    
    MOV CX,3
    INP:
    MOV AH,1
    INT 21H
    
    CMP AL,MAX
    JB NOTSET
    
    SET:
    MOV MAX,AL
    
    NOTSET:
    LOOP INP
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    
    MOV AH,2
    MOV DL,MAX
    INT 21H
    
    RET
    MAXIMUM ENDP 

END MAIN
    
    