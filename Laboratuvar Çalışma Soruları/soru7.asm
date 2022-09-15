; multi-segment executable file template.

data segment
   sayi db 13  
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
    
    mov al,sayi
    shr al,1
    jc TEK
    jnc CIFT
    
    CIFT:
        mov ah,0
        jmp SON
        
    TEK:
        mov ah,1 
        jmp SON          
    
    
    SON:
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
