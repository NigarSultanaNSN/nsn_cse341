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
 
  ;Task06 
    ;(arithmetic instruction performance after value declaration)
    
;variable declaration
A DB 7
B DB 9
C DB 3
 
 ;1) A=B-A
mov ah,A
mov bh,B
sub bh,ah
mov ah,bh 
          
 ;2) A= -(A+1)           
mov al,A              
inc al
neg al  


 ;3) C=A+(B+1)    
mov ah,A
mov bh,B
mov ch,C
inc bh
add ah,bh
mov ch,0
mov ch,ah

 
 ;4) A=B-(A-1)
mov al,A
mov bl,B
dec al
sub bl,al
mov al,bl
 
;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



