; multi-segment executable file template.

data segment
;add your data here!
m db 'Press a key: $'
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
            
MOV AX, 124
MOV BX, 100
DIV BX
MOV BX, AX
MOV AH, 0
PUSH AX
   
MOV AX, BX
MOV BX, 10
DIV BX
MOV BX, AX
MOV AH, 0
PUSH AX 
   
MOV AX, BX
PUSH AX
MOV CX, 3 


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
