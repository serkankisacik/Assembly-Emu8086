; multi-segment executable file template.

data segment
  sayi db 21,42,5,17,8,9,51,12,32,3      
  ebuyuk db ?
ends

stack segment
    
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
    
    mov ax,0
    mov cx,10
    lea si,sayi
    mov ebuyuk,0
    
    
    DON:
       mov al,[si]
       cmp al,ebuyuk
       ja ARTIM
       inc si 
    LOOP DON
    
    jmp SON 
    
    ARTIM:
        mov ebuyuk,al  
        inc si
        
    LOOP DON
    
    SON:
    mov ax, 4c00h ; exit to operating system.
    int 21h    
    
    
ends

end start ; set entry point and stop the assembler.
