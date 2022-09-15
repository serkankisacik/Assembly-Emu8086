; multi-segment executable file template.

data segment
     s1 dw 16
     s2 dw 4
     carpim dw ?
     bolum dw ? 
     kalan dw ?
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
            
    mov cx,s2
    mov ax,s1 
    mov dx,0
    
   
    
    CARP:
        
        add ax,s1
        dec cx
        cmp cx,1
        jnz CARP            
    mov carpim,ax 
    
    mov dx,0
    mov cx,s1
    ;mov ax,s2
    
    BOL: 
        inc dx
        sub cx,s2
                   
    cmp cx,s2    
    jae BOL 
    mov bolum,dx 
    mov kalan,cx;
    
    
   
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
