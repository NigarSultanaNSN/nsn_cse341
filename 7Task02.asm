; multi-segment executable file template.

data segment
; add your data here!
m db 1,2,3,4,5,6,7,8,9,10    
ends

stack segment
dw   128  dup(0)
ends

code segment
start:

; set segment registers:
MOV AX,@data
MOV DS, AX
MOV ES, AX

; ADD your code here  


MOV CX,10 

;MOV ah,2 

MOV SI,0

start1:
MOV AX,[SI]
PUSH AX
ADD SI,1
LOOP start1
        
MOV CX,10
MOV SI,0   

poping:
MOV AX,[SI]
POP AX
ADD SI,1
LOOP poping
    
    
    
ends

end start 
