; multi-segment executable file template.

data segment
     sonuc dw ?
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

    ; add your code here
            
    mov cx,100
    mov ax,0 
    mov dx,0
   
    
    BAS:
        inc ax
        inc dx
        cmp dx,3
        jz GIT        
        
    LOOP BAS
    
    jmp SON 
     
    GIT:
        add bx,ax
        mov dx,0
        
    LOOP BAS  
   
   
   SON: 
    mov sonuc,bx
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
