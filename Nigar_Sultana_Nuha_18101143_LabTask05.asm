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

 ;Task05
   ;solution:(swapping values by add/sub)

;empty cx and dx              
sub cx,cx
sub dx,dx                        
;put values of ax and bx in them respectively
add cx,ax
add dx,bx                                    
;empty ax and bx now for keeping exchanged values
sub ax,ax
sub bx,bx                                        
;add the values of dx and cx in ax and bx exchanging their values
add ax,dx
add bx,cx  



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



