

code segment
start:
        MOV AX,3000H
        MOV DS,AX
        
        MOV AX,0008H
        MOV DI,AX
      
        MOV DX,0000H
        MOV DL,[0052H]
        MOV CX,DX
        ADD DX,00FAH
        MOV BX,DX
        MOV AL,[BX+DI]
        MOV DX,00
CPE303: MUL CX
        ADD DX,AX
        DEC CX
        JNZ CPE303
        CMP AX,1800H
QUIT:   RET
      
ends

end start ; set entry point and stop the assembler.
