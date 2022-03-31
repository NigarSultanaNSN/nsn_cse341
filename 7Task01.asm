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

; add your code here
MOV CX,10
MOV AH,2
MOV SI,0

start1:
MOV AX,[SI]
PUSH AX
ADD SI,1
LOOP start1
        
    
ends

end start ; set entry point and stop the assembler.
