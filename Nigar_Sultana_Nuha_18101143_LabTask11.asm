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
 
  ;Task011 
    ;(arithmetic operation performance)    
   ;(1+2)*(3-1)/5+3+2-(1*2)
         
 ;part1: (1+2)
 
mov bx,1
mov cx,2
add bx,cx
  
 ;part2: (3-1)  
 
mov cx,3
mov dx,1
sub cx,dx
  
 ;part3: (1+2)*(3-1) 
 
mov ax,cx
mul bx 

;store the value from ax safely in dx

mov dx,ax

 ;part4: (1*2)

mov bx,1
mov ax,2
mul bx

 ;part5: 5+3+2-(1*2)
 
mov bx,5
mov cx,3
add bx,cx
mov cx,2
add bx,cx
sub bx,ax

 ;part6: (1+2)*(3-1)/5+3+2-(1*2)
 
mov ax,dx
div bx 

 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



