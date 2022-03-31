.MODEL SMALL
 
.STACK 100H

.DATA 

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

;nsn18101143
 
  ;Task07 
    ;(arithmetic operation performance)    

X DW 20
Y DW 4
Z DW 2
    
    ;1. X*Y 
       
mov bx,X
mov ax,Y 
mul bx

    ;2. X/Y     
    
mov ax,X
mov bx,Y
div bx

    ;3. X*Y/Z 
    
mov bx,X
mov ax,Y 
mul bx     ;multiplication result gets stored in ax so bx can be re used
mov bx,Z
div bx     ;quotient will be in al portion, and remainder at ah portion
           ;the result will be in ax in case of both multiplication and division

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



