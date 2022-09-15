; multi-segment executable file template.

data segment
   str db "karabuk"  
   sonuc db ?  
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
    
    mov ax,0
    mov cx,7
    lea si, str
    
    BAS:
        mov al, [si]
        
        cmp al, 61h
        jae GIT
    LOOP BAS
    JMP SON
    
    GIT:
       sub al,20h 
       mov [si],al 
       inc si
    LOOP BAS
       
   
        
    
    
    
    SON:
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
