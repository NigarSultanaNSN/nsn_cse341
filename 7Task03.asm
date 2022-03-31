; multi-segment executable file template.

data segment
; add your data here!
m db 1, 2, 3, 4, 5
ends

stack segment
dw   128  dup(0)
ends

code segment
start:
;set segment registers:
MOV AX,@data
MOV DS, AX
MOV ES, AX
                       
                       
;add your code here  

MOV CX, 5
MOV AH, 2
MOV SI, 0
       
       
start1:
MOV AX, [SI]
PUSH AX
ADD SI, 1
LOOP start1
    
MOV CX, 5

print:
POP BX
ADD BX, 48
MOV DX, BX
MOV AH, 2
INT 21H  
  
MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H
LOOP print
    
            
       
ends

end start 
