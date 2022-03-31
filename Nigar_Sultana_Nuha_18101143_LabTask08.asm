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
 
  ;Task08 
    ;(arithmetic operation performance)    

   
    ;1. 236DF * AF 
       
mov bx,236DFh
mov ax,AFh 
mul bx

    ;2. 8A32F4D5 / C9A5     
    
mov ax,8A32F4D5h
mov bx,C9A5h
div bx

    ;3. CA92 * BAF9 
       
mov bx,CA92
mov ax,BAF9 
mul bx

    ;4. C2A2 * ABCD / BED 
    
mov bx,C2A2
mov ax,ABCD
mul bx   
mov bx,BED
div bx   


;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



